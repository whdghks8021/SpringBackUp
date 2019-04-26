package com.biz.sim.service;

import org.springframework.stereotype.Service;

@Service
public class MyService {

	
	public String add(int intNum1, int intNum2) {
		
		int intRes = intNum1 + intNum2;
		return "" + intRes;
	}

	public String minus(int intNum1, int intNum2) {
		
		int intRes = intNum1 - intNum2;
		return "" + intRes;
	}

	public String multi(int intNum1, int intNum2) {
		int intRes = intNum1 * intNum2;
		return "" + intRes;
	}

	public String devide(int intNum1, int intNum2) {
		int intRes = intNum1 / intNum2;
		return "" + intRes; 
	}
}
