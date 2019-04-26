package com.biz.memo02.vo;

import lombok.AllArgsConstructor;
import lombok.Data;

@Data
public class CodeVO {
	
	private String label;
	private String value;
	
	public CodeVO(String value, String label) {
		super();
		this.label = label;
		this.value = value;
	}
	
	
}
