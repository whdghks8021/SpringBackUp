<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" 
		href="<c:url value='/css/place_detail.css'/>">
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

<div class="star">
	<h1>총 평점</h1>
	<span class="star-rating">
		<span style ="width:60%;">
		</span>
	</span>
</div>
<article class="fordog-box">
<div class="fordog">
<img src="images/image_place/scene.png" width="500px">
	<h2>for dog..?</h2>
	<p>일반음식점 애완견 기르는건 위반인건가요? 커피숍 운영중입니다 위생과에서 연락이와서 손님이 저희카페를 신고했다는데 주방에 들락거린다며ㅡㅡ 그게 법으로 걸리는...
답변 일반 음식점에서는 애견이 있을 거라고 예상을 못하게 되니까 아마 그런것 같아요 저 역시 반려동물과 함께 살고 있어 질문자님이 애견에게 어떤 감정이실지 충분히..</p>
	<span class="star-rating">
		<span style="width: 70%;">
		</span>
	</span>
</div>

<div class="fordog">
	<img src="images/image_place/scene2.png" width="500px">
	<h2>시설평가</h2>
	<p>봤어요 ^^ 애완견동반음식점 인디언 참숯구이 2018.9.15 | 지도 크게 보기 © NAVER Corp. (경상북도 칠곡군 동명면 기성리 469)... 반찬 음식 솜씨가 신선한 채소! (미나리도 함께 판매하고 있으니 좋아하시는분들 꼭 드셔보세요 ^^) 저는 개인적으로 삼겹살 과 그냥...</p>
		<span class="star-rating">
		<span style="width: 70%;">
		</span>
	</span>
</div>

<div class="fordog">
	<img src="images/image_place/scene3.png" width="500px">
	<h2>음식평가</h2>
	<p>기가수행평가때문에 청소년기애 좋은음식을 만들어야 하는데 만들기 간단하고 소금 설탕 이런고처럼 누구집이는 다 있는거 빼고 재료릉 만오천원 이하로 다 마련해야해요.....
답변 청소년기에 좋은 음식이면 철분, 인, 칼슘 등이 많이 든 음식이 가장 좋으며 만들 수 있는 것은 볶음밥이 있어야 하므로, 요령만 있으면 언제든지 할 수 있습니다. 그래야 만들...</p>
		<span class="star-rating">
		<span style="width: 40%;">
		</span>
	</span>
</div>
</article>
</body>
</html>
