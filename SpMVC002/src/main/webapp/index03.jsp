<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>나의 JSP 페이지</title>
<style>
	
	fieldset {
		width:300px;
	}
	
	legend {
		font-size: 14pt;
		font-weight: bold;
	}
	label {
		display:block;
		float:left;
		width:80px;
		text-align: right; 
	}
	
	
</style>
</head>
<body>
	<div id="header">
		<h2>나의 JSP 페이지</h2>
		<h4>나의 홈페이지에 오신 것을 환영합니다.</h4>
	</div>
	<div id="section">
		<div>
		<form action="/sp002/controller/join.jsp">
			<fieldset>
				<legend>회원가입</legend>
				<label for="userId">아이디&nbsp;</label>
					<input type="text" id="userId" name="userId" /><br />
				<label for="password">비밀번호&nbsp;</label>
					<input type="password" id="password" name="password" /><br />
				<label for="email">이메일&nbsp;</label>
					<input type="email" id="email" name="email" /><br />
				<label for="userName">이름&nbsp;</label>
					<input id="userName" name="userName" /><br />
				<hr>	
				<button>회원가입</button>
				<button type="reset">다시작성</button>
			</fieldset>	
		</form>
		</div>
	</div>
</body>
</html>