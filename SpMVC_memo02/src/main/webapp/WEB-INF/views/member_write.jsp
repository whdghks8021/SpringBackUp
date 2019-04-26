<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>    
<!DOCTYPE html>
<html>
<head>
<%@ include file="/WEB-INF/include/include-head.jspf" %>
<link rel="stylesheet" href=<c:url value="/css/member_input_style1.css" />>
</head>
<body>
<section>
	<%/*
		form taglib는 spring의 확장된 form 작성 커멘트 이다.
		form:form은 기본 method로 POST로 설정된다
		
		form:form의 modelAttribute는 form 내부에 path로 지정된 변수들이
		설정된 vo를 명시해 준다.
		
		modelAttribute를 명시 하므로 해서 나중의 확장기능을 사용하는데
		매우 편리하게 응용할 수 있다.
	*/%>	

<%@ include file="/WEB-INF/include/include-header.jspf" %>
</section>
<section id="body">
	<form:form action="member" modelAttribute="memberVO">
		<form:label path="m_userid" class="m_label">아이디</form:label>
		<form:input path="m_userid" id="m_userid" class="m_box" placeholeder="아이디를 입력하세요."/>
		<form:label path="m_password" class="m_label">비밀번호</form:label>
		<form:password path="m_password" id="m_password" class="m_box" placeholeder="비밀번호를 입력하세요." />
		<form:label path="m_re_password" class="m_label">비밀번호확인</form:label>
		<form:password path="m_re_password" id="m_re_password" class="m_box" placeholeder="비밀번호를 입력하세요." />
		<form:label path="m_name" class="m_label">이름</form:label>
		<form:input path="m_name" id="m_name" class="m_box" placeholeder="이름을 입력하세요." />
		<form:label path="m_tel" class="m_label">전화번호</form:label>
		<form:input path="m_tel" id="m_tel" class="m_box" placeholeder="전화번호를 입력하세요." />
		<form:label path="m_city" class="m_label">시/도</form:label>
		<form:select path="m_city" class="m_box">
			<form:options items="${CITIES}" itemLabel="label" itemValue="value"/>
		</form:select>
		<form:label path="m_addr" class="m_label">주소</form:label>
		<form:input path="m_addr" id="m_addr" class="m_box" placeholeder="상세주소를 입력하세요." />
		<form:label path="m_hobby" class="m_label">취미</form:label>
		<div class="m_hobby_div">
			<form:checkboxes path="m_hobby" items="${HOBBIES}" itemLabel="label" itemValue="value"/>
		</div>	
		
		<hr/>
		<label></label>
		<form:button>회원가입</form:button>
		
	</form:form>		
</section>	
	<footer>CopyRight &copy; whdghks8021@naver.com</footer>
</body>
</html>