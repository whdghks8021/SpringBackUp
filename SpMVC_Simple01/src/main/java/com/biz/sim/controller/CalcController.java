package com.biz.sim.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
public class CalcController {
	
	
	@RequestMapping(value="calc-ajax", method=RequestMethod.GET)
	public String calc_form() {
		
		return "calc-ajax";
	}
	
	@ResponseBody
	@RequestMapping(value="add-ajax", method=RequestMethod.POST)
	public String add_ajax(@RequestParam int intNum1,
			@RequestParam int intNum2) {
			System.out.println("intNum1 : " + intNum1);
			System.out.println("intNum2 : " + intNum2);
			
		return "" + (intNum1 + intNum2);
	}
	
	
	
	@ResponseBody
	@RequestMapping(value="add0", method=RequestMethod.GET)
	public String add() {
		
		int intNum1 = 30;
		int intNum2 = 40;
		int intSum = intNum1 + intNum2;
		
		return "" + intSum;
	}
	
	@ResponseBody
	@RequestMapping(value="add1", method=RequestMethod.GET, produces = "application/text; charset=utf8")
	public String add(@RequestParam("intNum1") String strNum1,@RequestParam("intNum2") String strNum2) {
		
		int intNum1;
		int intNum2;
		
		try {
			intNum1 = Integer.valueOf(strNum1);
			
		} catch (Exception e) {
			return "intNum1 은 숫자로 변환 할 수 없습니다.";
		}
		
		try {
			intNum2 = Integer.valueOf(strNum2);
		} catch (Exception e) {
			return "intNum2 는 숫자로 변환 할 수 없습니다.";
		}
		
		int intSum = intNum1 + intNum2;
		return "intNum1 = " + intNum1 + "intNum2 = " + intNum2 + "두수의 합 = " + intSum;
	}
	
	@ResponseBody
	@RequestMapping(value="add2", method=RequestMethod.GET, produces = "application/text; charset=utf8")
	public String add2(@RequestParam("intNum1") String strNum1,@RequestParam("intNum2") String strNum2) {
		
		int intNum1;
		int intNum2;
		
		try {
			intNum1 = Integer.valueOf(strNum1);
			
		} catch (Exception e) {
			return "intNum1 은 숫자로 변환 할 수 없습니다.";
		}
		
		try {
			intNum2 = Integer.valueOf(strNum2);
		} catch (Exception e) {
			return "intNum2 는 숫자로 변환 할 수 없습니다.";
		}
		
		int intSum = intNum1 + intNum2;
		String strRet = "{ intNum1 : " + intNum1 + "," + "intNum2 : " 
						+ intNum2 + "," + "intSum : " + intSum + "}" ; 
		return strRet;
	}
	
	@ResponseBody
	@RequestMapping(value="add3", method=RequestMethod.GET, produces = "text/html; charset=utf8")
	public String add3(@RequestParam("intNum1") String strNum1,@RequestParam("intNum2") String strNum2) {
		
		int intNum1;
		int intNum2;
		
		try {
			intNum1 = Integer.valueOf(strNum1);
			
		} catch (Exception e) {
			return "intNum1 은 숫자로 변환 할 수 없습니다.";
		}
		
		try {
			intNum2 = Integer.valueOf(strNum2);
		} catch (Exception e) {
			return "intNum2 는 숫자로 변환 할 수 없습니다.";
		}
		
		int intSum = intNum1 + intNum2;
		String strRet = "<html>";
		strRet += "<body>";
		strRet += "<div>" + intNum1 + "</div>";
		strRet += "<div>" + intNum2 + "</div>";
		strRet += "<div>" + intSum + "</div>";
		strRet += "</body>";
		strRet += "</html>";
		return strRet;
	}
	
	
}
