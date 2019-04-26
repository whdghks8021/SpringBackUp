<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>

<sql:setDataSource var="booksDataSource"
	driver="oracle.jdbc.driver.OracleDriver"
	url="jdbc:oracle:thin:@localhost:1521:xe"
	user="mybts"
	password="1234" />
<sql:query dataSource="${booksDataSource}" var="bookList">
	SELECT * FROM tbl_books 
</sql:query>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>도서정보 관리</title>
<style>
	header {
		background-color: #00aba9;
		color: #fff;
		padding: 10px;
		font-size: 20pt;
		font-weight: bold;
		text-align: center;
	}
	
	nav {
		width: 100%;
		color: #fff;
		barckroundcolor: #00aba9;
	}
	footer {
		background-color: #00aba9;
		color: #fff;
		text-align: center;
		padding: 5px;
	}
	
	table {
		border-spacing: 0;
		width: 100%;
		display: table;
		border: 1px solid #ccc;
		text-align: center;
	}
	#head {
		
		text-align: center;
		font-size: 20pt;
		font-weight: bold;
	}
	
	tr {
		border: 1px solid #ddd;
	}
	td, th {
		border: 1px solid #ddd;
	}
	#button-div {
		font-size: 0px;
		border: 1px solid lightgray;
						/* 바깥쪽 요소보다 작게 */
		margin: 0 auto; /* block요소를 어떤 다른 요소 내부에서 */
						/* 가로방향 중앙에 배치하고자 할때 */
		width: 212px;
	}
	
	#button-div button {
		width: 100px;
		margin: 3px;
	}
</style>
<link rel="stylesheet" type="text/css" href="../css/main.css">
</head>
<body>
	<header>
		<h2>도서정보</h2>
		<nav>
			<a href="#">홈</a> <a href="#">도서정보보기</a> <a href="#">로그인</a> <a
				href="#">회원가입</a> <a href="#">About</a>
		</nav>

	</header>

	<section>
		<p id=head>도서정보 리스트 보기
		<table>
			<tr>
				<th>도서명</th>
				<th>출판사</th>
				<th>저자</th>
				<th>가격</th>
			</tr>
			<c:forEach var="row" items="${bookList.rows}">
				<tr>
					<td><a href="../forms/book_input.jsp?tb_name=${row.tb_name}">${row.tb_name}</a></td>
					<td>${row.tb_comp}</td>
					<td>${row.tb_auth}</td>
					<td>${row.tb_price}</td>
				</tr>	
			</c:forEach>
		</table>
		<div id="button-div">
			<button onclick="location.href='/sp004/forms/books_input.jsp'">도서추가</button>
			<button type="button" onclick="confirm('정말 돌아 갈까요?')">돌아가기</button>
										<!-- confirm = 확인 취소 팝업창 -->
		</div>
	</section>
<footer onclick="alert('반갑습니다')"> <!-- alert = 팝업창 -->
	<address>CopyRight &copy; whdghks8021@naver.com</address>
</footer>
</body>
</html>