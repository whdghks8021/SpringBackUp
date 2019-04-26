package com.biz.email.controller;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.annotation.MultipartConfig;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.biz.email.model.EmailVO;
import com.biz.email.service.EmailService;
import com.biz.email.service.FileUpService;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
@MultipartConfig(maxFileSize=10000000)
public class EmailController {
	
	@Autowired
	EmailService eService ;
	@Autowired
	FileUpService fService ;
	
	@ModelAttribute("emailVO")
	public EmailVO newEmail() {
		return new EmailVO();
	}
	
	@RequestMapping(value = "/list", method = RequestMethod.GET)
	public String email_list(Model model) {
		
		List<EmailVO> eList = eService.selectAll();
		model.addAttribute("EMAIL_LIST",eList);
		model.addAttribute("BODY","LIST");
		
		return "home";
	}
	
	@RequestMapping(value = "/view", method = RequestMethod.GET)
	public String email_view(@RequestParam long id, Model model) {
		
		EmailVO vo = eService.findById(id);
		model.addAttribute("emailVO",vo);
		model.addAttribute("BODY","VIEW");
		
		return "home";
	}
	
	
	@RequestMapping(value="/write", method=RequestMethod.GET)
	public String write(@ModelAttribute("emailVO") EmailVO emailVO, Model model) {
		
		SimpleDateFormat sd = new SimpleDateFormat("yyyy-MM-dd");
		SimpleDateFormat st = new SimpleDateFormat("HH:mm:ss");
		Date date = new Date();
		String today = sd.format(date);
		String nt = st.format(date);
		emailVO.setS_date(today);
		emailVO.setS_time(nt);
		
		model.addAttribute("BODY","WRITE");
		return "home";
	}
	
	@RequestMapping(value="/write", method=RequestMethod.POST)
	public String email_write(@ModelAttribute("emailVO") EmailVO emailVO) {
		
		log.debug(emailVO.getS_file1());
		int ret ;
		if(emailVO.getId() > 0) {
			ret = eService.update(emailVO);
		} else {
			ret = eService.insert(emailVO);
		}

		return "redirect:/list";
		
	}
	
	@ResponseBody
	@RequestMapping(value="/files",method=RequestMethod.POST)
	public List<String> files(MultipartHttpServletRequest files) {
		
		List<String> fileNames = fService.uploads(files);
		for(String file : fileNames) {
			log.debug("파일들 : " + file);
		}
		
		return fileNames;
	}
	
	@RequestMapping(value="/delete" , method=RequestMethod.GET)
	public String email_delete(@RequestParam long id) {
		
		eService.delete(id);
		return "redirect:/list";
	}
	
	@RequestMapping(value="/update" , method=RequestMethod.GET)
	public String email_update(@ModelAttribute("emailVO") EmailVO emailVO, Model model) {
		
		long id = emailVO.getId();
		emailVO = eService.findById(id);
		model.addAttribute("emailVO",emailVO);
		model.addAttribute("BODY","WRITE");
		return "home";
	}
	
}
