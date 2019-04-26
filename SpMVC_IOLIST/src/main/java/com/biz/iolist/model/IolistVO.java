package com.biz.iolist.model;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

//io_id	NUMBER		PRIMARY KEY,
//io_date	CHAR(10)	NOT NULL,	
//io_pcode	CHAR(13)	NOT NULL,
//io_dcode	CHAR(5)	NOT NULL,	
//io_inout	CHAR(5)	NOT NULL,
//io_tax CHAR(1) DEFAULT '1',
//io_quan	NUMBER,		
//io_price	NUMBER,		
//io_total	NUMBER,		
//io_tax_total	NUMBER

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@ToString
public class IolistVO {

	private long io_id;
	private String io_date;
	private String io_pcode;
	private String io_dcode;
	private String io_inout;
	private String io_tax;
	private int io_quan;
	private int io_price;
	
	// 공급가액 : 수량 * 공급단가
	private int io_total;
	// 공급대가 : 과세일경우 공급가액 + VAT(공급가액의 10%)
	// 			  면세일경우 공급가액
	private int io_tax_total;
}
