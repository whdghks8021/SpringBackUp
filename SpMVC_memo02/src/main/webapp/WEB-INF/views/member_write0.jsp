<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>    
<!DOCTYPE html>
<html>
<head>
<%@ include file="/WEB-INF/include/include-head.jspf" %>
<link rel="stylesheet" href=<c:url value="/css/member_input_style.css" />>
</head>
<body>
<section>
<%@ include file="/WEB-INF/include/include-header.jspf" %>
</section>
<section id="body">
	<form action=<c:url value="/member" /> id="member_form" method="POST">
		<label for="m_userid">아이디</label><br/>
		<input value="${MEMO.m_userid}" type="text" id="m_userid" name="m_userid" 
		placeholder="아이디를 입력하세요"><br/>
		
		<label for="m_password">비밀번호</label><br/>
		<input value="${MEMO.m_password}" type="password" id="m_password" name="m_password" 
		placeholder="비밀번호를 입력하세요"><br/>
		
		<label for="m_password">비밀번호확인</label><br/>
		<input value="${MEMO.m_re_password}" type="password" id="m_re_password" name="m_re_password" 
		placeholder="비밀번호를 입력하세요"><br/>
		
		<label for="m_name">이름</label><br/>
		<input value="${MEMO.m_name}" type="text" id="m_name" name="m_name" 
		placeholder="이름을 입력하세요"><br/>
		
		<label for="m_tel">전화번호</label><br/>
		<input value="${MEMO.m_tel}" type="tel" id="m_tel" name="m_tel" 
		placeholder="전화번호를 입력하세요"><br/>
		
		<label for="m_city">시/도</label><br/>
		<select id="m_city" name="m_city">
			<option value="GWANGJU">광주광역시</option>
			<option value="SEOUL">서울특별시</option>
			<option value="BUSAN">부산광역시</option>
			<option value="DAEJUN">대전광역시</option>
			<option value="DAEGU">대구광역시</option>
			<option value="INCHUN">인천광역시</option>
			<option value="JEJU">제주특별자치도</option>
		</select><br/>
		
		<label for="m_addr">상세주소</label><br/>
		<input value="${MEMO.m_addr}" type="text" id="m_addr" name="m_addr" 
		placeholder="상세주소를 입력하세요"><br/>
	
		<label for="m_hobby">취미</label><br/>
		<input value="BOOK" type="checkbox" id="m_hobby1" class="m_hobby" name="m_hobby"> 독서
		<input value="MOVIE" type="checkbox" id="m_hobby2" class="m_hobby" name="m_hobby"> 영화감상
		<input value="MOUNT" type="checkbox" id="m_hobby3" class="m_hobby" name="m_hobby"> 등산
		<input value="MUSIC" type="checkbox" id="m_hobby4" class="m_hobby" name="m_hobby"> 음악감상
		<input value="GAME" type="checkbox" id="m_hobby5" class="m_hobby" name="m_hobby"> 게임
		<br/>
		
		<label></label>
		<button id="btn_save">회원가입</button>
		
	</form>
</section>	
	<footer>CopyRight &copy; whdghks8021@naver.com</footer>
</body>
</html>