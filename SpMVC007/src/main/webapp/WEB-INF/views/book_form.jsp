<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	input {
		border: 1px solid blue;
		margin: 3px;
		padding: 8px;
	}
	
	#book_field {
		width:500px;
		margin:10px auto;	
	}
	
	legend {
		font-size: 12pt;
		font-weight: bold;
		color: #3E65FF;
	}
	
	label {
		width: 120px;
		display: block;
		float: left;
		text-align: right;
		font-weight: bold;
		padding: 8px;	
		font-size: 10pt;
	}
	
	#btn_box {
		border: 1px solid lightgray;
		width: 103px;
		margin: 5px auto;
	}
	#btn_box button {
		width: 100px;
		margin: 3px;
	} 
	
	#btn_ok {
		width: 100px;
		margin: 3px;
		padding: 8px;
	}
	
</style>
</head>
<body>
	<form action="book" method="POST">
		<fieldset id="book_field">
		<legend>도서정보입력</legend>
		<label for="b_title">도서명</label>
		<input type="text" id="b_title" name="b_title"><br/>
		<label for="b_comp">출판사명</label>
		<input type="text" id="b_comp" name="b_comp"><br/>
		<label for="b_auth">저자</label>
		<input type="text" id="b_auth" name="b_auth"><br/>
		<label for="b_price">가격</label>
		<input type="text" id="b_price" name="b_price"><br/>
		
		<label for="btn_ok"></label>
		<button id="btn_ok">확인</button>
		</fieldset>
	</form>

</body>
</html>