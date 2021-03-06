package com.biz.file.model;

import javax.validation.constraints.Email;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;

import org.hibernate.validator.constraints.ScriptAssert;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Setter
@Getter
@NoArgsConstructor
@AllArgsConstructor
@ToString
@ScriptAssert(lang="javascript",
				message="비밀번호와 비밀번호 확인이 일치하지 않습니다",
				reportOn="m_re_password",
				script="(_this.m_password == _this.m_re_password)" )
public class MemberVO {
	
	/*
	 * VO 의 각 member변수들에 Constraint(제약조건)을 설정해서
	 * validation에서 사용할수 있도록 설정
	 * 
	 * @Null : 널인 경우만 정상
	 * @NotNull : 널이 아닌 경우만 정상
	 * @NotBlank : 문자열일 경우 공백이 아닐경우만 정상
	 * @Size(min=x, max=y) : 문자열일 경우 x부터 y까지 범위의 개수
	 * 
	 * @Max(x) : x 값 이하일 경우만 정상
	 * @Mix(y) : y 값 이상일 경우만 정상
	 * @DecimalMax(x) : x 값 이하의 실수만 정상
	 * @DecimalMix(y) : y 값 이상의 실수만 정상
	 * @Digits(integer=x) : x 자릿수 이하의 정수
	 * @Digits(integer=x, fraction=y) : x 자릿수 이하의 정수와 y 자릿수 소수 이하의 숫자
	 * 
	 * @AssetTrue : boolean 형일겅우 참인가? , 조건이 참인가?
	 * @AssetFalse : boolean 형일겅우 참인가?, 조건이 거짓인가?
	 * 
	 */
	
	// constraints m_userid의 개수를
	// 문자열 3 부터 10개 범위까지만 입력하라
	@Size(min=3, max = 30,message="ID는 3부터 30자리 까지")
	@NotBlank(message="ID는 공백이 올 수 없습니다.")
	@Email(message="ID는 Email 형식 이어야 합니다.")
	private String m_userid;
	
	// m_password는 null값이 올수 없다.
	// 반드시 입력하라
	@NotBlank(message="비밀번호를 입력하세요")
	private String m_password;
	
	private String m_re_password;
	
	private String m_name;
	
	// 정규문법 검사하는 속성
	@Pattern(regexp = "\\d{1,15}", message="전화번호는 숫자 1부터 15자리까지만 가능")
	private String m_tel;
	
	
	

}