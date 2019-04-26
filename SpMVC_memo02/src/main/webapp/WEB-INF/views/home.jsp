<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
    
<!DOCTYPE html>
<html>
<head>
<%@ include file="/WEB-INF/include/include-head.jspf" %>
</head>

<body>
<%@ include file="/WEB-INF/include/include-header.jspf" %>
<section>
	<c:if test="${BODY == 'VIEW' }" >
		<%@ include file="/WEB-INF/views/memo_view.jsp" %>
	</c:if>
	<c:if test="${BODY == 'WRITE' }" >
		<%@ include file="/WEB-INF/views/memo_write.jsp" %>
	</c:if>
	<c:if test="${BODY == 'MEMBER_JOIN' }" >
		<%@ include file="/WEB-INF/views/member_write.jsp" %>
	</c:if>
	<c:if test="${BODY == 'MEMBER_VIEW' }" >
		<%@ include file= "/WEB-INF/views/member_view.jsp" %>
	</c:if>
	<c:if test="${BODY == 'LIST' }" >
		<%@ include file= "/WEB-INF/views/login_form.jspf" %>
	</c:if>
	
	
</section>
<footer>
	<address>CopyRight &copy; whdghks8021@callor.com</address>
</footer>
</body>
</html>