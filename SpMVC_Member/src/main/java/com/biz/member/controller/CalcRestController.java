package com.biz.member.controller;

import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class CalcRestController {
	
	@RequestMapping(value="add", method=RequestMethod.GET)
	public String getParam(@RequestParam String num1,@RequestParam String num2) {
		
		int intNum1 = Integer.valueOf(num1);
		int intNum2 = Integer.valueOf(num2);
		
		int intSum = intNum1 + intNum2;
		
		return "" + intSum;
	}
	
	@RequestMapping(value="add/{num1}/{num2}")
	public String getPath(@PathVariable int num1,@PathVariable int num2) {
		
		return "" + (num1 + num2);
	}
	
}
