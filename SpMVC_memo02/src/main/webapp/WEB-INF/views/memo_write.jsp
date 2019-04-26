<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>    
<!DOCTYPE html>
<html>
<head>
<%@ include file="/WEB-INF/include/include-head.jspf" %>
<link rel="stylesheet" href=<c:url value="/css/memo_input_style.css" />>
</head>
<body>
<section>
<%@ include file="/WEB-INF/include/include-header.jspf" %>
</section>
<section id="body">
	<form action=<c:url value="memo_write" /> id="memo_form" method="POST">
		<input name="id" value="${MEMO.id}">
		<label for="m_auth">작성자</label><br/>
		<input value="${MEMO.m_auth}" type="text" id="m_auth" name="m_auth" 
		placeholder="작성자 이름을 입력하세요"><br/>
		
		<label for="m_date">작성일자</label><br/>
		<input value="${MEMO.m_date}" type="date" id="m_date" name="m_date" 
		placeholder="작성 일자를 입력하세요" ><br/>
		
		<label for="m_subject">제목</label><br/>
		<input value="${MEMO.m_subject}" type="text" id="m_subject" name="m_subject" 
		placeholder="제목을 입력하세요" ><br/>
		
		<label>메모</label><br/>
		<textarea rows="15" id="m_text" name="m_text" 
		placeholder="메모 내용을 입력하세요">${MEMO.m_text}</textarea><br/>
		
		<label></label>
		<button id="btn_save" type="button">메모저장</button>
		<p id="message"><b>${MESSAGE}</b>
		
	</form>
</section>	
	<footer>CopyRight &copy; whdghks8021@naver.com</footer>
</body>
</html>