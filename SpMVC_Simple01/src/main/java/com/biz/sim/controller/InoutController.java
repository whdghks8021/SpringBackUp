package com.biz.sim.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.biz.sim.service.InoutService;
import com.biz.sim.vo.InoutVO;

@Controller
public class InoutController {
	
	@Autowired
	InoutService is ;
	
	@RequestMapping(value="/", method=RequestMethod.GET, produces = "text/html; charset=utf8")
	public String fileReader(Model model) {
		
		model.addAttribute("IOLIST", is.getInout());
		return "iolist";
		
	}
}
