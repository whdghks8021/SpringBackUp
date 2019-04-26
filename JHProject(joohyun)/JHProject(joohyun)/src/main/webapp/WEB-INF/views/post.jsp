<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
</head>
<link rel="stylesheet"
		href=<c:url value="/css/community.css" /> >
<body>
<!-- 
  POST 게시판 beta
  페이지기능 넣어야함 각각 칼럼들 누르면 해당글로 이동
  다른 기타요소들 꾸미기
  DB연결하면 캡션부분에 제목과 날짜 작성자 넣어주기
-->
<div class="header">
  <h1>TRAVEL WITH YOUR DOG</h1>
  <p>Have a greate time with your adorable dog:)!</p>
</div>

<div class="topnav">
  <a href="<c:url value="/home" />">HOME</a>
  <a href="<c:url value="/community" />">COMMU</a>
  <a href="<c:url value="/post" />">POST</a>
  <a href="<c:url value="/Q&A" />">Q&A</a>
</div>
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

<footer>
  <h2>Footer</h2>
</footer>

</body>
</html>