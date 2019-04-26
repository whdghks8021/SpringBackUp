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
	}
	
</style>
</head>
<body>
<section>
	<!-- 
		form에서 input box에 입력된 문자열을 보내는 방식(method)은
		GET 방식과 POST방식이 있다.
		method 속성을 설정하지 않으면 기본값으로 GET방식으로 보낸다.
		GET방식으로 보내면 URL 뒷부분에 ?변수명=변수값&변수명=변수값 형식으로 서버로 보내진다.
		
		이 방식은 일단 변수명과 변수값이 노출이 될 수 있고
		보낼수 있는 크기가 제한적이다. 
	 -->
	<form action="/sp007/calc" method="POST">
		<label for="txt_num1">숫자1</label>
		<input type="text" id="txt_num1" name="txt_num1"> <br />
	
		<label for="txt_num2">숫자2</label>
		<input type="text" id="txt_num2" name="txt_num2"> <br />
		
		<label for="txt_num3">숫자3</label>
		<input type="text" id="txt_num3" name="txt_num3"> <br />
		
		<button>확인</button>
	</form>
</section>
</body>
</html>