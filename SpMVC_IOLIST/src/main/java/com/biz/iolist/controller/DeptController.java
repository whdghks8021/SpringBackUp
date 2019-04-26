package com.biz.iolist.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;

import com.biz.iolist.model.DeptVO;
import com.biz.iolist.model.IolistVO;
import com.biz.iolist.model.ProductVO;
import com.biz.iolist.service.DeptService;

@SessionAttributes("deptVO")
@Controller
@RequestMapping("/dept")
public class DeptController {

	@ModelAttribute("deptVO")
	public DeptVO newDept() {
		DeptVO vo = new DeptVO();
		
		vo.setD_code(dService.getDCode());
		return vo;
	}
	
	@Autowired
	DeptService dService;
	
	@RequestMapping(value="/list", method=RequestMethod.GET)
	public String list(Model model) {
		
		List<DeptVO> dList = dService.selectAll();
		model.addAttribute("LIST",dList);
		model.addAttribute("BODY","D_LIST");
		return "home";
	}
	
	@RequestMapping(value="/search", method=RequestMethod.GET)
	public String search(@RequestParam("d_name") String d_name, Model model) {
		
		List<DeptVO> dList = dService.findByDName(d_name);
		model.addAttribute("LIST",dList);
		return "body/dept/d_search_list";
	}
	
	@RequestMapping(value="/write", method=RequestMethod.GET)
	public String write(@ModelAttribute("deptVO") DeptVO deptVO, Model model) {
		
		deptVO = newDept();
		model.addAttribute("deptVO",deptVO);
		model.addAttribute("BODY","D_WRITE");
		return "home";
	}
	@RequestMapping(value="/write", method=RequestMethod.POST)
	public String write(@ModelAttribute("deptVO") DeptVO deptVO, Model model, SessionStatus session) {
		
		int ret = dService.insert(deptVO);
		if(ret > 0) {
			return "redirect:/dept/list";
		} else {
			model.addAttribute("deptVO",deptVO);
			model.addAttribute("BODY","D_WRITE");
			
			return "home";
		}
	}
	
	@RequestMapping(value="/update", method=RequestMethod.GET)
	public String update(@ModelAttribute("deptVO") DeptVO deptVO, Model model) {
		
		deptVO = dService.findByDCode(deptVO.getD_code());
		model.addAttribute("deptVO",deptVO);
		model.addAttribute("BODY", "D_WRITE");
		return "home";
	}
	
	@RequestMapping(value="/update", method=RequestMethod.POST)
	public String update(@ModelAttribute("deptVO") DeptVO deptVO, Model model, SessionStatus session) {
		
		int ret = dService.update(deptVO);
		
		if(ret > 0) {
			return "redirect:/dept/list";
		} else {
			model.addAttribute("deptVO",deptVO);
			model.addAttribute("BODY","D_WRITE");
			
			return "home";
		}
		
	}
	
	@ResponseBody
	@RequestMapping(value="get_new_code", method=RequestMethod.GET)
	public String getNewCode() {
		
		return dService.getDCode();
	}
	
	@ResponseBody
	@RequestMapping(value="get_d_name", method=RequestMethod.GET, produces="text/plan;charset=utf8")
	public String getNewDName(@RequestParam("d_code") String d_code) {
		
		return dService.getDName(d_code);
	}
	
}
