<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<H2>感謝你的購買</H2>
<div class='menu'>
			  <c:if test="${ funcName != 'CHE' }">
			     <a href="<c:url value='/_14_shopAP/14_serach.jsp' />">
				     回首頁
				 </a>
</c:if>

</body>
</html>