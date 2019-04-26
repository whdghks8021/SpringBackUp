<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
<form action="calc" method="POST">	
	<p>숫자1:<input type="text" name="intNum1" value="${NUM1}">
	<p>숫자2:<input type="text" name="intNum2" value="${NUM2}">
	<select name="cate">
		<option value="ADD">덧셈</option>
		<option value="MINUS">뺄셈</option>
		<option value="MULTI">곱셈</option>
		<option value="DEVIDE">나눗셈</option>
	</select>
	<button>결과</button>
	
</form>	
	<hr />
	<p>결과: ${RES}
</body>
</html>