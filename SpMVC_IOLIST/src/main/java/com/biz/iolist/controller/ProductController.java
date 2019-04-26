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

import com.biz.iolist.model.ProductVO;
import com.biz.iolist.service.ProductService;

import lombok.extern.slf4j.Slf4j;

@SessionAttributes("productVO")
@Controller
@RequestMapping("/product")
@Slf4j
public class ProductController {

	
	@ModelAttribute("productVO")
	public ProductVO newProduct() {
		ProductVO vo = new ProductVO();
		
		return vo;
	}
	
	@Autowired
	ProductService pService;
	
	@RequestMapping(value="/list", method=RequestMethod.GET)
	public String list(Model model) {
		
		List<ProductVO> pList = pService.selectAll();
		model.addAttribute("LIST",pList);
		model.addAttribute("BODY","P_LIST");
		return "home";
	}
	
	@RequestMapping(value="/search", method=RequestMethod.GET)
	public String search(@RequestParam("p_name") String p_name, Model model) {
		
		List<ProductVO> pList = pService.findByPName(p_name);
		model.addAttribute("LIST",pList);
		return "body/product/p_search_list";
	}
	
	@RequestMapping(value="/write", method=RequestMethod.GET)
	public String write(@ModelAttribute("productVO") ProductVO productVO, Model model) {
		
		productVO = new ProductVO();
		model.addAttribute("productVO",productVO);
		model.addAttribute("BODY","P_WRITE");
		return "home";
	}
	
	@RequestMapping(value="/write", method=RequestMethod.POST)
	public String write(@ModelAttribute("productVO") ProductVO productVO, Model model, SessionStatus session) {
		
		int ret = pService.insert(productVO);
		
		if(ret > 0) {
			return "redirect:/product/list";
		} else {
			model.addAttribute("productVO",productVO);
			model.addAttribute("BODY","P_WRITE");
			
			return "home";
		}
	}
	
	@RequestMapping(value="/update", method=RequestMethod.GET)
	public String update(@ModelAttribute("productVO") ProductVO productVO, Model model) {
		
		productVO = pService.findByPCode(productVO.getP_code());
		log.debug(productVO.toString());
		model.addAttribute("productVO",productVO);
		model.addAttribute("BODY", "P_WRITE");
		return "home";
	}
	
	@RequestMapping(value="/update", method=RequestMethod.POST)
	public String update(@ModelAttribute("productVO") ProductVO productVO, Model model, SessionStatus session) {
		
		int ret = pService.update(productVO);
		
		if(ret > 0) {
			return "redirect:/product/list";
		} else {
			model.addAttribute("productVO",productVO);
			model.addAttribute("BODY","P_WRITE");
			
			return "home";
		}
		
	}
	
	@ResponseBody
	@RequestMapping(value="get_p_name", method=RequestMethod.GET, produces="text/plan;charset=utf8")
	public String getPName(@RequestParam("p_code") String p_code) {
		
		return pService.getPName(p_code);
	}
	
	
}
