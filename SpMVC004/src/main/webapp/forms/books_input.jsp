<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>    
    
<sql:setDataSource var="booksDataSource"
	driver="oracle.jdbc.driver.OracleDriver"
	url="jdbc:oracle:thin:@localhost:1521:xe"
	user="mybts"
	password="1234" />
<sql:query dataSource="${booksDataSource}" var="bookList">
	SELECT * FROM tbl_books WHERE tb_name = ?
	<sql:param value="${param.tb_name}" />
</sql:query>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>도서정보입력</title>
<style>
	fieldset {
		width:630px;
		margin:0 auto;
	}
	legend {
		font-size: 12pt;
		font-weight: bold;
		color: #3e65ff;
	}
	label {
		display: block;
		width: 100px;
		float: left;
		text-align: right;
		padding: 8px;
		font-weight: bold;
		color: #009688;
		font-size: 10pt;
	}
	input, select {
		margin: 3px;
		padding: 8px;
		border: 1px solid #ccc;
	}
	
	select {
		font-size: 12pt;
		font-weight: bold;
		color: blue;
	}
	#button-div {
		border: 1px solid lightgray;
		margin: 0 auto;
		width: 212px;
		font-size: 0;
	}
	#button-div button {
		margin: 3px;
		width: 100px;
	}
	
</style>
</head>
<body>
	<header>
		<h3>도서정보입력</h3>
	</header>
	<section>
	<c:choose>
		<c:when test="${empty param.tb_name}">
			<form action="/sp004/controller/books_insert.jsp" >
		</c:when>
		<c:otherwise>
			<form action="/sp004/controller/books_update.jsp" >
		</c:otherwise>
	</c:choose>
	
	
	<fieldset>
	<legend>도서입력</legend>
		<label for="tb_name">제목</label>
		<input type="text" id="tb_name" name="tb_name" 
				value="${bookList.rows[0].tb_name}"><br/>
		<label for="tb_comp">출판사</label>
		<input type="text" id="tb_comp" name="tb_comp"
				value="${addrList.rows[0].tb_comp}"><br/>
		<label for="tb_auth">저자</label>
		<input type="text" id="tb_auth" name="tb_auth"
				value="${addrList.rows[0].tb_auth}"><br/>
		<label for="tb_price">가격</label>
		<input type="text" id="tb_price" name="tb_price"
				value="${addrList.rows[0].tb_price}"/>
		<hr />
		<div id="button-div">
			<button>도서등록</button>
			<button type="reset">다시작성</button>
		</div>
	</fieldset>
	
</section>

</body>
</html>