package com.biz.file.model;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

//id NUMBER PRIMARY KEY,
//b_userid nVARCHAR2(50),
//b_date VARCHAR2(10),
//b_subject nVARCHAR2(50),
//b_content nVARCHAR2(1000),
//b_hit NUMBER -- 조회수

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@ToString
public class BoardVO {

	private long id;
	private long r;
	private String b_userid;
	private String b_date;
	private String b_time;
	private String b_subject;
	private String b_content;
	private String b_image;
	private long b_hit;
	
}