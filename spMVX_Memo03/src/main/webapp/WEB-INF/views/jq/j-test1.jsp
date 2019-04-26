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
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script>
var a = 30
// 이곳에서 body tag에 바탕색을 red로 설정하는
// js 코드를 작성을 한다면 js 코드는 문법 오류를 낼것이다.
// 그리고 이후의 js코드는 모두 무시해 버린다.
// 그래서 표준 js코드 에서는 tag에 어떤 속성을 변경하는 코드는 
// 문서 끝의 body, html이 끝난 이후에 작성을 한다.
// document.getElementById("body").setAttribute("background-color","red")
// 이러한 불편때문에 
// JQuery는 document.ready 라는 키워드를 만들었다.
// document.ready(function(){}) 문법은
// 현재 문서의 html이 모두 완성된 후에
// function으로 지정된 영역의 코드를 실행하라는 것.

// $ = JQuery
$(document).ready(function(){
	
})

// JQuery 3.0 이상 위 코드와 같음
$(function(){
	
	$(".q").click(function(){
		let num = $(this).attr("data-num")
		// alert(num)
		// 펼쳐진후 다시클릭해도 안돌아옴
		// $("#as" + num).css("display","block")
		
		// 클릭하면 펼쳐지고 다시클릭하면 접어짐.
		$("#as" + num).toggleClass("block")
	})
	
})

</script>
</head>
<body id="body">
	<header>
		<nav>
		</nav>
	</header>
	<style>
		.q {
			background-color: yellow;
			color:black;
			font-size: 30px;
			margin: 10px;		
		}
		.as {
			background-color: white;
			color:black;
			font-size: 30px;
			margin: 10px;	
			display: none;	
		}
		
		.block {
			display: block;
		}
	</style>
	<section>
		<article>
			<div class="q" id="q1" data-num="1">div 1</div>
			<p class="as" id="as1">p1</p>
			
			<div class="q" id="q2" data-num="2">div 2</div>
			<p class="as" id="as2">p2</p>
			
			<div class="q" id="q3" data-num="3">div 3</div>
			<p class="as" id="as3">p3</p>
		</article>
	</section>
	<footer>
	</footer>
</body>
<script>

</script>
</html>