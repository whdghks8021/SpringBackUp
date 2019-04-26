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
<div class="header">
  <h1>TRAVEL WITH YOUR DOG</h1>
  <p>Have a great time with your adorable dog:)!</p>
</div>

<%@ include file="/WEB-INF/views/include/nav.jspf" %>

    <div class="columns">
    <a href="#">
      <figure>
        <img src="http://mblogthumb2.phinf.naver.net/MjAxODAxMjZfMiAg/MDAxNTE2OTcxMDI5MDMx.uOwq1vbacN4c9hFYPC4jBIA-JyOUUnA5NRfEdt9DeDEg.ysV6BIq4TnnDkWqnNFMcedzQ0G_pi2UKYsn474d8sJcg.JPEG.ws28_style/%EA%B2%A8%EC%9A%B8_%EA%B0%95%EC%95%84%EC%A7%80_%EC%82%B0%EC%B1%85_10.jpg?type=w800">
        <figcaption>겨울 강아지 산책, 꼭 알아야할 팁</figcaption>
      </figure>
    </a>

    <a href="#">
      <figure>
        <img src="http://s3-us-west-2.amazonaws.com/s.cdpn.io/4273/sleeping-beauty.jpg">
        <figcaption>Sleeping Beauty, based on European fashions in 1485</figcaption>
      </figure>
    </a>
 
    <a href="#"> 
      <figure>
        <img src="https://img.huffingtonpost.com/asset/5b7fdeab1900001d035028dc.jpeg?cache=sixpwrbb1s&ops=1910_1000">
        <figcaption>The Ridiculously Cute Dog Challenge To Distract You From All The Doom And Gloom</figcaption>
      </figure>
    </a>

    <a href="#">
      <figure>
        <img src="http://s3-us-west-2.amazonaws.com/s.cdpn.io/4273/mulan_2.jpg">
        <figcaption>Mulan, based on the Ming Dynasty period</figcaption>
      </figure>
    </a>

    <a href="#">
      <figure>
        <img src="https://images.pexels.com/photos/733416/pexels-photo-733416.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500">
        <figcaption>Belle, based on 1770’s French court fashion</figcaption>
      </figure>
    </a>
 
    <a href="#">
      <figure>
        <img src="http://s3-us-west-2.amazonaws.com/s.cdpn.io/4273/pocahontas_2.jpg">
        <figcaption>Pocahontas based on 17th century Powhatan costume</figcaption>
      </figure>
    </a>
 
    <a href="#">
      <figure>
        <img src="http://s3-us-west-2.amazonaws.com/s.cdpn.io/4273/snow-white.jpg">
        <figcaption>Snow White, based on 16th century German fashion</figcaption>
      </figure>   
    </a> 
 
    <a href="#"> 
      <figure>
        <img src="http://s3-us-west-2.amazonaws.com/s.cdpn.io/4273/ariel.jpg">
        <figcaption>Ariel wearing an evening gown of the 1890’s</figcaption>
      </figure>
    </a>
 
    <a href="#">
      <figure>
        <img src="http://s3-us-west-2.amazonaws.com/s.cdpn.io/4273/tiana.jpg">
        <figcaption>Tiana wearing the <i>robe de style</i> of the 1920’s</figcaption>
      </figure> 
    </a>

    <a href="#">
      <figure>
        <img src="https://img.huffingtonpost.com/asset/5b7fdeab1900001d035028dc.jpeg?cache=sixpwrbb1s&ops=1910_1000">
        <figcaption>The Ridiculously Cute Dog Challenge To Distract You From All The Doom And Gloom</figcaption>
      </figure>
    </a>

    <a href="#">
      <figure>
        <img src="http://s3-us-west-2.amazonaws.com/s.cdpn.io/4273/tiana.jpg">
        <figcaption>Tiana wearing the <i>robe de style</i> of the 1920’s</figcaption>
      </figure> 
    </a>

    <a href="#">
      <figure>
        <img src="http://mblogthumb2.phinf.naver.net/MjAxODAxMjZfMiAg/MDAxNTE2OTcxMDI5MDMx.uOwq1vbacN4c9hFYPC4jBIA-JyOUUnA5NRfEdt9DeDEg.ysV6BIq4TnnDkWqnNFMcedzQ0G_pi2UKYsn474d8sJcg.JPEG.ws28_style/%EA%B2%A8%EC%9A%B8_%EA%B0%95%EC%95%84%EC%A7%80_%EC%82%B0%EC%B1%85_10.jpg?type=w800">
        <figcaption>겨울 강아지 산책, 꼭 알아야할 팁</figcaption>
      </figure>
    </a>

    <a href="#">
      <figure>
        <img src="http://s3-us-west-2.amazonaws.com/s.cdpn.io/4273/tiana.jpg">
        <figcaption>Tiana wearing the <i>robe de style</i> of the 1920’s</figcaption>
      </figure> 
    </a> 
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
    <a class="w3-button w3-theme" href="#myPage"><span class="w3-xlarge">
    <i class="fa fa-chevron-circle-up"></i></span></a>
  </div>
</footer>

</body>
</html>