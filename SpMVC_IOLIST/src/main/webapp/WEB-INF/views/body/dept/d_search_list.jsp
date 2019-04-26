<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="rootPath" value="${pageContext.request.contextPath}" />
<link href="${rootPath}/css/list.css" rel="stylesheet">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script>
$(function(){
	
	$(".list_tr").click(function(){
		
		let tds = $(this).children() // td들을 모두 뽑아낸것 tds : 배열이 된다.
		let d_code = tds.eq(1).text()
		let d_name = tds.eq(2).text()
		let d_ceo = tds.eq(3).text()
		let d_tel = tds.eq(4).text()
		let d_addr = tds.eq(5).text()
		
		$("#io_dcode").val(d_code)
		$("#d_name").text(d_name)
		
		$("#myModal").css("display","none")
		
	})	
	
})

</script>
<style>
	tr {
		cursor: pointer;
	}
</style>
<table>
	<tr>
		<th>NO</th>
		<th>코드</th>
		<th>거래처명</th>
		<th>대표자명</th>
		<th>대표전화</th>
		<th>주소</th>
		
	</tr>
	<tr>
		<c:choose>
			<c:when test="${empty LIST}">
				<td colspan=20>자료가 없습니다.</td>
			</c:when>
			<c:otherwise>
				<c:forEach items="${LIST}" var="vo" varStatus="i">
					<tr class="list_tr">
						<td>${i.count}</td>
						<td>${vo.d_code}</td>
						<td>${vo.d_name}</td>
						<td>${vo.d_ceo}</td>
						<td>${vo.d_tel}</td>
						<td>${vo.d_addr}</td>
					</tr>				
				</c:forEach>
			</c:otherwise>
		</c:choose>
		
	</tr>
</table>
<hr />
