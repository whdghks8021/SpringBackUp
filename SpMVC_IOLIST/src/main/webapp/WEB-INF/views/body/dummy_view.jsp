<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<style>
	.view-box {
		width: 60%;
		border : 1px solid blue;
		margin :20px auto;
		padding-left:20px;
	}
	
	.view-box h3, .view-box h5 {
		text-align: center;
	}
	
	.view-box p {
		text-align: center;
	}
	
	.view-box b {
		color : blue;
	}
	
	.view-box span {
		color : green;
	}
</style>
<article class="view-box">
	<h3>매입매출 정보 관리 V1.0</h3>
	<h5>Since : 2019-04-03</h5>
	<p><b>서버명 : </b><span>${pageContext.request.serverName}</span></p>
	<p><b>포트번호 : </b><span>${pageContext.request.serverPort}</span></p>
	<p><b>Method : </b><span>${pageContext.request.method}</span></p>
	<p><b>Context Path : </b><span>${pageContext.request.contextPath}</span></p>
	<p><b>Path 정보 : </b><span>${pageContext.request.pathInfo}</span></p>
	<p><b>Path Translate : </b><span>${pageContext.request.pathTranslated}</span></p>
	<p><b>Query String : </b><span>${pageContext.request.queryString}</span></p>
	<p><b>Request URI : </b><span>${pageContext.request.requestURI}</span></p>
	<p><b>Request URL : </b><span>${pageContext.request.requestURL}</span></p>
	
	<h3>${MSG}</h3>
</article>