<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" 
		href="<c:url value='/css/place_main.css'/>">
</head>
<body>


<div class="header">
  <h1>TRAVEL WITH YOUR DOG</h1>
  <p>Have a greate time with your adorable dog:)!</p>
</div>

<div class="topnav">
  <a href="<c:url value="/home"/>">HOME</a>
  <a href="#">ABOUT</a>
</div>

<div class="division">
	
	<div class="div_place">
	<img src="images/image_place/jido.png" usemap="#001" />
	<map name="001">
		<area shape="circle" coords="108,114,55" href="place1"/>
		<area shape="circle" coords="211,92,60" href="place2"/>
		<area shape="circle" coords="101,219,49" href="place3"/>
		<area shape="circle" coords="192,198,38" href="place1"/>
		<area shape="circle" coords="293,218,51" href="place2"/>
		<area shape="circle" coords="146,303,40" href="place3"/>
		<area shape="rect" coords="210,301,360,392" href="place1"/>
		<area shape="rect" coords="80,359,212,448" href="place1"/>
	</map>
	</div>
	
</div>

<div class="division">
	<div class="div_place">
	<a href="place1"><img src="images/image_place/jeju.png" /></a>
	</div>
</div>



<div class="footer">
  <h2>Footer</h2>
</div>

</body>
</html>
