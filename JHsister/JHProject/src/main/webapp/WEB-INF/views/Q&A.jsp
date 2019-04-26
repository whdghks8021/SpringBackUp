<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
</head>
<link rel="stylesheet" href=<c:url value="/css/community.css" /> >
<link href="https://fonts.googleapis.com/css?family=Nova+Flat" rel="stylesheet">
<body>
<!-- 
  커뮤니티 게시판 beta
  페이지기능 넣어야함 각각 칼럼들 누르면 해당글로 이동
  다른 기타요소들 꾸미기
  DB연결하면 캡션부분에 제목과 날짜 작성자 넣어주기
-->
<div class="header" id="header">
  <h1>TRAVEL WITH YOUR DOG</h1>
  <p>Have a grate time with your adorable dog:)!</p>
</div>

<%@ include file="/WEB-INF/views/include/nav.jspf" %>

<div id="columns">
  <div class="top10" >
    <h3 class="maintitle"><span class="txt_ko">자주 찾는 질문</span> TOP10</a></h3>
    <ul>
        <li onclick="fnShow(this);">
            <p class="num">Q1 - 1번 질문??</p>
        </li>
     
        
        <li onclick="fnShow(this);">
            <p class="num">Q2 - 2번 질문??</p>
        </li>
        
        <li onclick="fnShow(this);">
            <p class="num">Q3 - 3번 질문??</p>
        </li>
        
        <li onclick="fnShow(this);">
            <p class="num">Q4 - 4번 질문??</p>
        </li>
        
        <li onclick="fnShow(this);">
            <p class="num">Q5 - 5번 질문??</p>     
        </li>
        
        <li onclick="fnShow(this);">
            <p class="num">Q6 - 6번 질문??</p>
        </li>
        
        <li onclick="fnShow(this);">
            <p class="num">Q7 - 7번 질문??</p>
        </li>
        
        <li onclick="fnShow(this);">
            <p class="num">Q8 - 8번 질문??</p>
        </li>
        
        <li onclick="fnShow(this);">
            <p class="num">Q9 - 9번 질문??</p>    
        </li>

        <li onclick="fnShow(this);">
            <p class="num">Q10 - 10번 질문??</p>
        </li>

    </ul>
</div>

<div class="top10" style=" float: right;">
    <h3 class="maintitle"><span class="txt_ko">EVENT</span></h3>
    <ul>
        <li onclick="fnShow(this);">
            <p class="num2">1번 이벤트</p>
        </li>
        
        <li onclick="fnShow(this);">
            <p class="num2">2번 이벤트</p>
        </li>
        
        <li onclick="fnShow(this);">
            <p class="num2">3번 이벤트</p>
        </li>
        
        <li onclick="fnShow(this);">
            <p class="num2">4번 이벤트</p>
        </li>
        
        <li onclick="fnShow(this);">
            <p class="num2">5번 이벤트</p>     
        </li>
    </ul>
    <h3 class="maintitle"><span class="txt_ko">NEWS</span></h3>
    <ul>    
        <li onclick="fnShow(this);">
            <p class="num2">1번 뉴스</p>
        </li>
        
        <li onclick="fnShow(this);">
            <p class="num2">2번 뉴스</p>
        </li>
        
        <li onclick="fnShow(this);">
            <p class="num2">3번 뉴스</p>
        </li>
        
        <li onclick="fnShow(this);">
            <p class="num2">4번 뉴스</p>    
        </li>

        <li onclick="fnShow(this);">
            <p class="num2">5번 뉴스</p>
        </li>

    </ul>
</div>
</div>

<!-- Footer -->
<footer class="w3-container w3-padding-32 w3-theme-d1 w3-center">
  <h4>Follow Us</h4>
  <a class="w3-button w3-large w3-teal" href="javascript:void(0)" title="Facebook"><i class="fa fa-facebook"></i></a>
  <a class="w3-button w3-large w3-teal" href="javascript:void(0)" title="Twitter"><i class="fa fa-twitter"></i></a>
  <a class="w3-button w3-large w3-teal" href="javascript:void(0)" title="Google +"><i class="fa fa-google-plus"></i></a>
  <a class="w3-button w3-large w3-teal" href="javascript:void(0)" title="Google +"><i class="fa fa-instagram"></i></a>
  <a class="w3-button w3-large w3-teal w3-hide-small" href="javascript:void(0)" title="Linkedin"><i class="fa fa-linkedin"></i></a>
  <p>Developed by <a href="https://www.w3schools.com/w3css/default.asp" target="_blank">JH CREW</a></p>

  <div style="position:relative;bottom:100px;z-index:1;" class="w3-tooltip w3-right">
    <span class="w3-text w3-padding w3-teal w3-hide-small">Go To Top</span>   
    <a class="w3-button w3-theme" href="#header"><span class="w3-xlarge">
    <i class="fa fa-chevron-circle-up"></i></span></a>
  </div>
</footer>

</body>
</html>