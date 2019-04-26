<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<link rel="stylesheet" href=<c:url value="/css/About.css" /> >
<link href="https://fonts.googleapis.com/css?family=Nova+Flat" rel="stylesheet">
<title>About JH CREW</title>
</head>
<body>
<div class="header" id="header">
  <h1>TRAVEL WITH YOUR DOG</h1>
  <p>Have a great time with your adorable dog:)!</p> 
</div>

<%@ include file="/WEB-INF/views/include/nav.jspf" %>


<!-- Team Container -->
<div class="w3-container w3-padding-64 w3-center" id="team">
<h1><span class="w3-xlarge w3-border-teal w3-bottombar">OUR TEAM</span></h1>
<p>Meet the team - our office rats:</p>

<div class="w3-row"><br>

<div class="w3-third">
  <img id="crew01" src="images/image_about/Crew01.png" alt="정하" class="w3-circle w3-hover-opacity">
  <h3><b>JeongHa</b></h3>
  <p>Web Designer</p>
</div>

<div class="w3-third">
  <img id="crew02" src="images/image_about/Crew02.jpg" alt="주현" class="w3-circle w3-hover-opacity">
  <h3><b>JooHyun</b></h3>
  <p>DB Manager</p>
</div>

<div class="w3-third">
  <img id="crew03" src="images/image_about/Crew03.png" alt="종환" class="w3-circle w3-hover-opacity">
  <h3><b>JongHwan</b></h3>
  <p>DB Manager</p>
</div>

</div>
</div>

<!-- Image Header -->
<div class="w3-display-container w3-animate-opacity">
  <img src="images/image_about/about_main.jpg" alt="together" style="width:100%;min-height:600px;max-height:900px;">
  <div class="w3-container w3-display-bottomleft w3-margin-bottom">  
    <button onclick="document.getElementById('id01').style.display='block'" class="w3-button w3-xlarge w3-theme w3-hover-teal" title="Go To W3.CSS">SUPPORT US!</button>
  </div>
</div>

<!-- Modal -->
<div id="id01" class="w3-modal">
  <div class="w3-modal-content w3-card-4 w3-animate-top">
    <header class="w3-container w3-teal w3-display-container"> 
      <span onclick="document.getElementById('id01').style.display='none'" class="w3-button w3-teal w3-display-topright"><i class="fa fa-remove"></i></span>
      <h4>Oh snap! We just showed you a modal..</h4>
      <h5>Because we can <i class="fa fa-smile-o"></i></h5>
    </header>
    <div class="w3-container">
      <p>Cool huh? Ok, enough teasing around..</p>
      <p>Go to our <a class="w3-text-teal" href="/w3css/default.asp">W3.CSS Tutorial</a> to learn more!</p>
    </div>
    <footer class="w3-container w3-teal">
      <p>Modal footer</p>
    </footer>
  </div>
</div>


<!-- Work Row -->
<div class="w3-row-padding w3-padding-64 w3-theme-l1" id="work">

<div class="w3-quarter">
<h1><b>Our Work</b></h1>
<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, 
sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. 
Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris 
nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in 
reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. 
Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia 
deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipiscing elit, 
sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.  </p>
</div>

<div class="w3-quarter">
<div class="w3-card w3-white">
  <img src="images/image_about/p1.jpg" alt="Snow" style="width:100%">
  <div class="w3-container" id="work1">
  <h3 style="text-align:center"><b>Project 1</b></h3>
  <h4>프로젝트 구성</h4>
  <p>주제 선정</p>
  <p>개별요소 선정</p>
  <p>관련정보 탐색</p>
  <p>1차 초안 작성</p>
  </div>
  </div>
</div>

<div class="w3-quarter">
<div class="w3-card w3-white">
  <img src="images/image_about/p2.jpg" alt="Lights" style="width:100%">
  <div class="w3-container" id="work2">
  <h3 style="text-align:center"><b>Project 2</b></h3>
  <h4>화면 구현</h4>
  <p>레이아웃 설정</p>
  <p>기본 틀 작성(헤더,풋터,배경등)</p>
  <p>관련 이미지 수집</p>
  <p>세부 페이지 구상</p>
  </div>
  </div>
</div>

<div class="w3-quarter">
<div class="w3-card w3-white">
  <img src="images/image_about/p3.jpg" alt="Mountains" style="width:100%">
  <div class="w3-container" id="work3">
  <h3 style="text-align:center"><b>Project 3</b></h3>
  <h4>기능 구현</h4>
  <p>필요한 기능 점검</p>
  <p>개별 작업</p>
  <p>작업물 통합</p>
  <p>최종 점검</p>
  </div>
  </div>
</div>

</div>

<!-- Contact Container -->
<div class="w3-container w3-padding-64 w3-theme-l5" id="contact">
  <div class="w3-row">
    <div class="w3-col m5">
    <div class="w3-padding-16"><span class="w3-xlarge w3-border-teal w3-bottombar">Contact Us</span></div>
      <h3><b>Address</b></h3>
      <p>Swing by for a cup of coffee, or whatever.</p>
      <p><i class="fa fa-map-marker w3-text-teal w3-xlarge"></i>  Gwangju, South Korea</p>
      <p><i class="fa fa-phone w3-text-teal w3-xlarge"></i>  +00 1515151515</p>
      <p><i class="fa fa-envelope-o w3-text-teal w3-xlarge"></i>  cocojey02@gmail.com</p>
    </div>
    <div class="w3-col m7">
      <form class="w3-container w3-card-4 w3-padding-16 w3-white" action="/action_page.php" target="_blank">
      <div class="w3-section">      
        <label>Name</label>
        <input class="w3-input" type="text" name="Name" required>
      </div>
      <div class="w3-section">      
        <label>Email</label>
        <input class="w3-input" type="text" name="Email" required>
      </div>
      <div class="w3-section">      
        <label>Message</label>
        <input class="w3-input" type="text" name="Message" required>
      </div>  
      <input class="w3-check" type="checkbox" checked name="Like">
      <label>I Like it!</label>
      <button type="submit" class="w3-button w3-right w3-theme">Send</button>
      </form>
    </div>
  </div>
</div>

<!-- Image of location/map -->
<img src="/w3images/map.jpg" class="w3-image w3-greyscale-min" style="width:100%;">

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

<script>
// Script for side navigation
function w3_open() {
  var x = document.getElementById("mySidebar");
  x.style.width = "300px";
  x.style.paddingTop = "10%";
  x.style.display = "block";
}

// Close side navigation
function w3_close() {
  document.getElementById("mySidebar").style.display = "none";
}

// Used to toggle the menu on smaller screens when clicking on the menu button
function openNav() {
  var x = document.getElementById("navDemo");
  if (x.className.indexOf("w3-show") == -1) {
    x.className += " w3-show";
  } else { 
    x.className = x.className.replace(" w3-show", "");
  }
}
</script>

</body>
</html>