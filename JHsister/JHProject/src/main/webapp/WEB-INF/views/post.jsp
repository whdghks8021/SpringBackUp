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
  POST 게시판 beta
  페이지기능 넣어야함 각각 칼럼들 누르면 해당글로 이동
  다른 기타요소들 꾸미기
  DB연결하면 캡션부분에 제목과 날짜 작성자 넣어주기
-->
<div class="header" id="header">
  <h1>TRAVEL WITH YOUR DOG</h1>
  <p>Have a great time with your adorable dog:)!</p>
</div>

<%@ include file="/WEB-INF/views/include/nav.jspf" %>

<section>
    <div id="columns">
      <a href="#">
        <div class="postlist">
        <div>
           <img class="img" src="http://mblogthumb2.phinf.naver.net/MjAxODAxMjZfMiAg/MDAxNTE2OTcxMDI5MDMx.uOwq1vbacN4c9hFYPC4jBIA-JyOUUnA5NRfEdt9DeDEg.ysV6BIq4TnnDkWqnNFMcedzQ0G_pi2UKYsn474d8sJcg.JPEG.ws28_style/%EA%B2%A8%EC%9A%B8_%EA%B0%95%EC%95%84%EC%A7%80_%EC%82%B0%EC%B1%85_10.jpg?type=w800" >
        </div>
        <div class="subject">
          <h2>겨울 강아지 산책, 꼭 알아야할 팁</h2>
          <div class="text">
            <p>기사 내용</p>
          </div>   
        </div>
      </div>
      </a>
    
      <a href="#">
      <div class="postlist">
        <div>
           <img class="img" src="http://mblogthumb2.phinf.naver.net/MjAxODAxMjZfMiAg/MDAxNTE2OTcxMDI5MDMx.uOwq1vbacN4c9hFYPC4jBIA-JyOUUnA5NRfEdt9DeDEg.ysV6BIq4TnnDkWqnNFMcedzQ0G_pi2UKYsn474d8sJcg.JPEG.ws28_style/%EA%B2%A8%EC%9A%B8_%EA%B0%95%EC%95%84%EC%A7%80_%EC%82%B0%EC%B1%85_10.jpg?type=w800" >
        </div>
        <div class="subject">
          <h2>겨울 강아지 산책, 꼭 알아야할 팁</h2>
          <div class="text">
            <p>기사 내용</p>
          </div>   
        </div>
      </div>
      </a>
      <a href="#">
      <div class="postlist">
        <div>
           <img class="img" src="http://mblogthumb2.phinf.naver.net/MjAxODAxMjZfMiAg/MDAxNTE2OTcxMDI5MDMx.uOwq1vbacN4c9hFYPC4jBIA-JyOUUnA5NRfEdt9DeDEg.ysV6BIq4TnnDkWqnNFMcedzQ0G_pi2UKYsn474d8sJcg.JPEG.ws28_style/%EA%B2%A8%EC%9A%B8_%EA%B0%95%EC%95%84%EC%A7%80_%EC%82%B0%EC%B1%85_10.jpg?type=w800" >
        </div>
        <div class="subject">
          <h2>겨울 강아지 산책, 꼭 알아야할 팁</h2>
          <div class="text">
            <p>기사 내용</p>
          </div>   
        </div>
      </div>
      </a>
      <a href="#">
      <div class="postlist">
        <div>
           <img class="img" src="http://mblogthumb2.phinf.naver.net/MjAxODAxMjZfMiAg/MDAxNTE2OTcxMDI5MDMx.uOwq1vbacN4c9hFYPC4jBIA-JyOUUnA5NRfEdt9DeDEg.ysV6BIq4TnnDkWqnNFMcedzQ0G_pi2UKYsn474d8sJcg.JPEG.ws28_style/%EA%B2%A8%EC%9A%B8_%EA%B0%95%EC%95%84%EC%A7%80_%EC%82%B0%EC%B1%85_10.jpg?type=w800" >
        </div>
        <div class="subject">
          <h2>겨울 강아지 산책, 꼭 알아야할 팁</h2>
          <div class="text">
            <p>기사 내용</p>
          </div>   
        </div>
      </div>
      </a>

      <a href="#">
      <div class="postlist">
        <div>
           <img class="img" src="http://mblogthumb2.phinf.naver.net/MjAxODAxMjZfMiAg/MDAxNTE2OTcxMDI5MDMx.uOwq1vbacN4c9hFYPC4jBIA-JyOUUnA5NRfEdt9DeDEg.ysV6BIq4TnnDkWqnNFMcedzQ0G_pi2UKYsn474d8sJcg.JPEG.ws28_style/%EA%B2%A8%EC%9A%B8_%EA%B0%95%EC%95%84%EC%A7%80_%EC%82%B0%EC%B1%85_10.jpg?type=w800" >
        </div>
        <div class="subject">
          <h2>겨울 강아지 산책, 꼭 알아야할 팁11</h2>
          <div class="text">
            <p>기사 내용</p>
          </div>   
        </div>
      </div>
      </a>
    </div>
</section>

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