<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<link rel="stylesheet" href=<c:url value="/css/place.css" /> >
<link href="https://fonts.googleapis.com/css?family=Nova+Flat" rel="stylesheet">
<head>
</head>
<body>

<div class="header" id="header">
  <h1>TRAVEL WITH YOUR DOG</h1>
  <p>Have a great time with your adorable dog:)!</p>
</div>

<%@ include file="/WEB-INF/views/include/nav.jspf" %>

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
    <p>너무 좋아요</p>

  </div>

  </div>
  
  <div class="column side right">
    <h2>Location</h2>
    <div class="horizontal">
    <p>광주 쌍촌동</p>
    </div>

    <div class="horizontal">
    <p>광주 광천동</p>
    </div>
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

