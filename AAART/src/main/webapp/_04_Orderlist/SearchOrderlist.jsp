<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="zh-tw">
<head>
<meta charset="UTF-8">
<title>查詢訂單</title>
</head>
<body>
<%-- <form name="order" action="<c:url value='/_04_Orderlist/OrIdSearchServlet'/>" method="get" > --%>
<form name="order" action="./OrIdSearchServlet" method="get" >
<jsp:include page="/_04_ST/04_topbar.jsp" />
請輸入訂單編號
<input type="text" name="orderid">
<input type="submit" value="送出查詢" name="submit" class="submit" id="submit">
</form>
</body>
</html>