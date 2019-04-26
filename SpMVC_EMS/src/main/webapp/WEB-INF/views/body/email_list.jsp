<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<style>
	table {
		width: 100%;
		border-collapse: collapse;
		border-spacing: 0;
		border: 1px solid #ccc; 
	}
	
	tr {
		border-bottom: 1px solid #ddd;
	}
	
	tr:nth-child(odd) {
		background-color: #fff;
	}
	
	tr:nth-child(even) {
		background-color: #f1f1f1;
	}
	
	tr:hover {
		background-color: #ccc;
	}
	
	td, th {
		text-align: left;
		padding: 8px 8px;
		vertical-align: top;
	}
	
	td:firt-child, th:first-child {
		padding-left: 16px;
	}
	
</style>
<body>
<table>
	<tr>
		<th>No</th>
		<th>보낸 Email</th>
		<th>받는 Email</th>
		<th>발송일자</th>
		<th>발송시각</th>
		<th>메일제목</th>
	</tr>
	<c:choose>
		<c:when test="${empty EMAIL_LIST}">
			<tr><td colspan="6">게시물이 없습니다.</td></tr>
		</c:when>
		<c:otherwise>
			<c:forEach items="${EMAIL_LIST}" var="EMAIL" varStatus="i">
				<tr class="email_row" data-id="${EMAIL.id}">
					<td>${i.count}</td>
					<td>${EMAIL.from_email}</td>
					<td>${EMAIL.to_email}</td>
					<td>${EMAIL.s_date}</td>
					<td>${EMAIL.s_time}</td>
					<td>${EMAIL.s_subject}</td>
				</tr>
			</c:forEach>
		</c:otherwise>
	</c:choose>
	
	
</table>
<hr />
<button id="btn-write">메일작성</button>
<script>
	$(function(){
		$("#btn-write").click(function(){
			location.href = "<c:url value='/write '/>"
		})
		
		$(".email_row").click(function(){
			let id = $(this).attr("data-id")
			location.href = "<c:url value='/view'/>" + "?id=" + id
		})
		
	})
	
</script>
</body>
</html>