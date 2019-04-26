package com.biz.sim.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.biz.sim.service.MyService;
import com.biz.sim.vo.CalcVO;

@Controller
public class MyController {

	@Autowired
	MyService ms ;
	
	@ResponseBody // return의 jsp파일을 찾는게 아닌 그값을 그대로 WEB에 보여주기.
	@RequestMapping(value = "addList", method = RequestMethod.GET, produces = "text/html; charset=utf8")
	public String addList(int intNum1, int intNum2) {

		int intSum = 0;
		String strNum1 = "" + intNum1;
		String strNum2 = "" + intNum2;
		while (true) {
			intSum += intNum1++;
			if (intNum1 == intNum2) {
				String strSum = "" + intSum;
				String strRet = strNum1 + "~" + strNum2 + " 까지 의 덧셈 = " + strSum;
				return strRet;
			}
		}

	}

	@RequestMapping(value = "addList", method = RequestMethod.POST, produces = "text/html; charset=utf8")
	public String addList(int intNum1, int intNum2, Model model) {

		int intSum = 0;
		String strNum1 = "" + intNum1;
		String strNum2 = "" + intNum2;
		while (true) {
			intSum += intNum1++;
			if (intNum1 == intNum2) {

				model.addAttribute("NUM1", strNum1);
				model.addAttribute("NUM2", strNum2);
				model.addAttribute("SUM", intSum);
				return "home";
			}
		}
	}

	@RequestMapping(value = "addList1", method = RequestMethod.POST, produces = "text/html; charset=utf8")
	public String addList1(int intNum1, int intNum2, Model model) {

		int intSum = 0;
		for (int i = intNum1; i <= intNum2; i++) {
			if (i % 2 == 0) {
				intSum += i;
			}
		}
		model.addAttribute("NUM1", intNum1);
		model.addAttribute("NUM2", intNum2);
		model.addAttribute("SUM", intSum);

		return "home";

	}
	
	@RequestMapping(value = "calc", method = RequestMethod.POST, produces = "text/html; charset=utf8")
	public String calc(int intNum1, int intNum2, Model model, @RequestParam String cate) {
		
		String strRes = "";
		if(cate.equalsIgnoreCase("ADD")) { 
			strRes = ms.add(intNum1, intNum2);
		}
		if(cate.equalsIgnoreCase("MINUS")) { 
			strRes = ms.minus(intNum1, intNum2);
		}
		if(cate.equalsIgnoreCase("MULTI")) { 
			strRes = ms.multi(intNum1, intNum2);
		}
		if(cate.equalsIgnoreCase("DEVIDE")) { 
			strRes = ms.devide(intNum1, intNum2);
		}
			
		
		
		model.addAttribute("NUM1", intNum1);
		model.addAttribute("NUM2", intNum2);
		model.addAttribute("RES", strRes);

		return "home";

	}
	@RequestMapping(value = "minus", method = RequestMethod.POST, produces = "text/html; charset=utf8")
	public String minus(int intNum1, int intNum2, Model model) {

		String strRes = ms.minus(intNum1, intNum2);
		
		model.addAttribute("NUM1", intNum1);
		model.addAttribute("NUM2", intNum2);
		model.addAttribute("RES", strRes);

		return "home";

	}
	
	@RequestMapping(value = "calc-vo", method = RequestMethod.POST, produces = "text/html; charset=utf8")
	public String calc(@ModelAttribute CalcVO vo, Model model, @RequestParam String cate) {
		
		String strAdd = ms.add(vo.getIntNum1(), vo.getIntNum2());
		String strMinus = ms.minus(vo.getIntNum1(), vo.getIntNum2());
		String strMulti = ms.multi(vo.getIntNum1(), vo.getIntNum2());
		String strDevide = ms.devide(vo.getIntNum1(), vo.getIntNum2());
		
		vo.setIntAdd(Integer.valueOf(strAdd));
		vo.setIntMinus(Integer.valueOf(strMinus));
		vo.setIntMulti(Integer.valueOf(strMulti));
		vo.setIntDevide(Integer.valueOf(strDevide));
		
		model.addAttribute("CALC", vo);
		

		return "clac";

	}
	
	

}
