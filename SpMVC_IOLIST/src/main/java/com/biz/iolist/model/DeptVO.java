package com.biz.iolist.model;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

//d_code	CHAR(5)		PRIMARY KEY,
//d_name	nVARCHAR2(50)	NOT NULL,	
//d_ceo	nVARCHAR2(50),		
//d_tel	nVARCHAR2(20),		
//d_addr	nVARCHAR2(125)

@NoArgsConstructor
@AllArgsConstructor
@Getter
@Setter
@ToString
public class DeptVO {

	private String d_code;
	private String d_name;
	private String d_ceo;
	private String d_tel;
	private String d_addr;
}
