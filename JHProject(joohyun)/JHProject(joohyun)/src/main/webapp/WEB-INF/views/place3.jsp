<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" 
		href="<c:url value='/css/place.css'/>">
</head>
<style>
.star-rating { 
	width:205px; 
}   

.star-rating,.star-rating span { 
	display:inline-block; 
	height:39px; 
	overflow:hidden; 
	background:url("${pageContext.request.contextPath}/images/image_place/star.png") no-repeat;
	}

.star-rating span{ 
	background-position:left bottom; 
	line-height:0; 
	vertical-align:top;
}


</style>
<body>

<div class="header">
  <h1>TRAVEL WITH YOUR DOG</h1>
  <p>Have a greate time with your adorable dog:)!</p>
</div>

<div class="topnav">
  <a href="<c:url value="/home"/>">HOME</a>
  <a href="<c:url value="/place_main"/>" >MAP</a>
  <a href="<c:url value="/place1"/>">RESTAURANT</a>
  <a href="<c:url value="/place2"/>">CAFE</a>
  <a href="<c:url value="/place3"/>">PARK</a>
  <a href="#">ABOUT</a>

</div>

<div class="row">
  <div class="column side left">
    <h2>Place</h2>
    <div class="horizontal">
      <img src="images/image_place/green.jpg" onmouseover="this.src='images/image_place/green2.jpg'" 
         onmouseout="this.src='images/image_place/green.jpg'" onmous width="300" >
    </div>

    <div class="horizontal">
       <img src="images/image_place/water.jpg" width="300">
    </div>
    
  </div>
  
  
  <div class="column middle left">
    <h2>Summary</h2>

    <div class="horizontal">
      <h2>유안공원</h2>
    <p>휴식<br />
    쉬죠
  
    </div>

   <div class="horizontal">
    <h2>비발디</h2>
    <p>쏴와 <br />
      쏴아
    </div>
  </div>

  <div class="column middle right">
    <h2>VIEWS</h2>
  <div class="horizontal">
    <p>요즘 미세먼지때문에 ㅠㅠ</p>
    <p>강아지들이 좋다고 뛰어요 ㅋㅋ</p>
    <p>걷기에 적당한 코스입니다</p>

  </div>
  
  <div class="horizontal">
    <p>산책하기 아직은 춥지만....</p>
    <p>요즘 미세먼지때문에 ㅠㅠ</p>
    <p>걷기에 적당한 코스입니다</p>

  </div>

  </div>
  
  <div class="column side right">
    <h2>Location</h2>
    <div class="horizontal">
    <p style="text-align: center;">광주 쌍촌동</p>
    <a href="https://map.naver.com/?elng=7fd79dbb4f8aceb19dee74a5541afe35&eelat=bab5d6fcd61613e6b86bf605d0576e62&elat=0e0833afeea0e2f4bac166bd7daa4ed5&eText=%EC%B1%84%EC%84%A0%EB%8B%B9+%EC%9A%A9%EB%B4%89%EC%A0%90&eelng=d989d90d2152a352332a018609125b4e">
    <img src="images/image_place/map.png" width="60px" style="margin-left: auto; margin-right: auto; display: block;"></a>
    </div>
     

    <div class="horizontal">
    <p style="text-align: center;">광주 광천동</p>
     <a href="https://map.naver.com/?elng=7fd79dbb4f8aceb19dee74a5541afe35&eelat=bab5d6fcd61613e6b86bf605d0576e62&elat=0e0833afeea0e2f4bac166bd7daa4ed5&eText=%EC%B1%84%EC%84%A0%EB%8B%B9+%EC%9A%A9%EB%B4%89%EC%A0%90&eelng=d989d90d2152a352332a018609125b4e">
    <img src="images/image_place/map.png" width="60px" style="margin-left: auto; margin-right: auto; display: block;"></a>
    </div>
  </div>
</div>
<div class="footer">
  <h2>Footer</h2>
</div>

</body>
</html>

