package com.biz.jhproject;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	/*
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "home", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		
		return "home";
	}
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home1(Locale locale, Model model) {
		
		return "home";
	}
	
	
	@RequestMapping(value = "community", method = RequestMethod.GET)
	public String community(Locale locale, Model model) {
		return "community";
	}
	
	@RequestMapping(value = "place1", method = RequestMethod.GET)
	public String place1(Locale locale, Model model) {
		return "place1";
	}
	
	@RequestMapping(value = "shop", method = RequestMethod.GET)
	public String shop(Locale locale, Model model) {
		return "shop";
	}
	
	
	@RequestMapping(value = "place2", method = RequestMethod.GET)
	public String place2(Locale locale, Model model) {
		return "place2";
	}
	
	@RequestMapping(value = "place3", method = RequestMethod.GET)
	public String place3(Locale locale, Model model) {
		return "place3";
	}
	
	@RequestMapping(value = "post", method = RequestMethod.GET)
	public String post(Locale locale, Model model) {
		return "post";
	}
	
	@RequestMapping(value = "Q&A", method = RequestMethod.GET)
	public String QA(Locale locale, Model model) {
		return "Q&A";
	}
	
	@RequestMapping(value = "place_main", method = RequestMethod.GET)
	public String place_main(Locale locale, Model model) {
		return "place_main";
	}
	
	@RequestMapping(value = "place_detail", method = RequestMethod.GET)
	public String place_detail(Locale locale, Model model) {
		return "place_detail";
	}


	
	
}
