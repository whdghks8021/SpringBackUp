package com.biz.rent.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.biz.rent.modal.BookVO;
import com.biz.rent.service.BookService;

@RequestMapping("/book")
@Controller
public class BookController {
	
	@Autowired
	BookService bService;
	
	@RequestMapping(value = "/list", method = RequestMethod.GET)
	public String book(Model model) {
		
		List<BookVO> bookList = bService.selectAll();
		
		model.addAttribute("BODY","ADMIN");
		model.addAttribute("ADMIN","BOOK");
		model.addAttribute("BOOK_LIST",bookList);
		
		return "home";
	}
	
	

}
