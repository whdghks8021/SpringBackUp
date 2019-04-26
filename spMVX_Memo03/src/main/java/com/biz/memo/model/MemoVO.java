package com.biz.memo.model;

import java.util.List;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
@AllArgsConstructor
@NoArgsConstructor
public class MemoVO {
	
	private long id;
	private String m_auth;
	private String m_date;
	private String m_subject;
	private String m_text;
	
	private List<FileVO> files; // tbl_files 데이터를 가져와서 저장할 변수
}
