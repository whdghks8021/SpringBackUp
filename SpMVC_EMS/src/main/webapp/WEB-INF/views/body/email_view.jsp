<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" 
	content="width=device-width,initial-scale=1">
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<style>
	#email_view {
		border: 1px solid blue;
	}
	.email_box {
		width: 70%;
		margin: 10px auto;
	}
</style>
<body>
	<article id="email_view" class="email_box">
		<h3>${emailVO.s_subject}</h3>
		<p>발송인 : ${emailVO.from_email}</p>
		<p>수신인 : ${emailVO.to_email}</p>
		<p>작성일자 : ${emailVO.s_date}</p>
		<p>작성시각 : ${emailVO.s_time}</p>
		<p>내용 : ${emailVO.s_content}</p>
		<c:if test="${not empty emailVO.s_file1}">
			<p>첨부파일1 : ${emailVO.s_file1}</p>
		</c:if>
		<c:if test="${not empty emailVO.s_file2}">
			<p>첨부파일2 : ${emailVO.s_file2}</p>
		</c:if>
	</article>
	<div class="bbs_box">
		<button type="button" id="email_update">편집</button>
		<button type="button" id="email_delete">삭제</button>
	</div>

</body>
</html>
<script>
$(function(){
	$("#email_update").click(function(){
		let id = ${emailVO.id}
		location.href = "<c:url value='/update'/>" + "?id=" + id
	})
	$("#email_delete").click(function(){
		let id = ${emailVO.id}
		if(confirm("게시물을 삭제할까요?")) {
			location.href = "<c:url value='/delete'/>" + "?id=" + id
		}
		
	})
})
</script>