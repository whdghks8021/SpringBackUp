<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>    
<!DOCTYPE html>
<html>
<head>
<%@ include file="/WEB-INF/include/include-head.jspf" %>
<script>
$(function(){
	
	$("#btn_update").click(function(){
		location.href="${pageContext.request.contextPath}/memo_update?id=${MEMO.id}"
	})
	
	$("#btn_delete").click(function(){
		if(confirm("정말 삭제 하시겠습니까?")) {
			location.href="${pageContext.request.contextPath}/memo_delete?id=${MEMO.id}"
		}
		
	})
	
	if("${MSG}" == "DEL-ERR") {
		alert("메모를 삭제할 수 없습니다.")
	}
	
	
	
})
</script>
</head>
<body>

<section>
<%@ include file="/WEB-INF/include/include-header.jspf" %>
</section>
<section id="body">
	<h3>제목 : ${MEMO.m_subject}</h3>
	<h5>작성자 : ${MEMO.m_auth}</h5>
	<h5>작성일자 : ${MEMO.m_date}</h5>
	<h5>메모 : ${MEMO.m_text}</h5>
	<p><button type="button" id="btn_update">수정</button>
		<button type="button" id="btn_delete">삭제</button>
</section>	
	<footer>CopyRight &copy; whdghks8021@naver.com</footer>
</body>
</html>