package com.biz.iolist.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;

import com.biz.iolist.model.IolistDto;
import com.biz.iolist.model.IolistVO;
import com.biz.iolist.service.IolistService;

@SessionAttributes("iolistVO")
@Controller
@RequestMapping("/iolist")
public class IolistController {

	@ModelAttribute("iolistVO")
	public IolistVO newIolist() {
		IolistVO vo = new IolistVO();
		
		return vo;
	}
	
	@Autowired
	IolistService iService;
	
	@RequestMapping(value="/list", method=RequestMethod.GET)
	public String list(Model model) {
		
		List<IolistDto> iList = iService.selectJoin();
		model.addAttribute("LIST",iList);
		model.addAttribute("BODY","IO_LIST");
		return "home";
		
	}
	
	@RequestMapping(value="/write", method=RequestMethod.GET)
	public String write(@ModelAttribute("iolistVO") IolistVO iolistVO, Model model) {
		
		iolistVO = new IolistVO();
		model.addAttribute("iolistVO",iolistVO);
		model.addAttribute("BODY","IO_WRITE");
		return "home";
	}
	
	@RequestMapping(value="/write", method=RequestMethod.POST)
	public String write(@ModelAttribute("iolistVO") IolistVO iolistVO, Model model, SessionStatus session) {
		
		int ret = iService.insert(iolistVO);
		
		if(ret > 0) {
			return "redirect:/iolist/list";
		} else {
			model.addAttribute("iolistVO",iolistVO);
			model.addAttribute("BODY","IO_WRITE");
			
			return "home";
		}
		
	}
	
	@RequestMapping(value="/update", method=RequestMethod.GET)
	public String update(Model model, @RequestParam long id) {
		
		IolistVO vo = iService.findById(id);
		model.addAttribute("iolistVO",vo);
		model.addAttribute("BODY", "IO_WRITE");
		return "home";
	}
	
	@RequestMapping(value="/update", method=RequestMethod.POST)
	public String update(@ModelAttribute("iolistVO") IolistVO iolistVO, Model model, SessionStatus session) {
		
		int ret = iService.update(iolistVO);
		
		if(ret > 0) {
			return "redirect:/iolist/list";
		} else {
			model.addAttribute("iolistVO",iolistVO);
			model.addAttribute("BODY","IO_WRITE");
			
			return "home";
		}
		
	}
}
