<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>訂單成立</title>
</head>
<body>
<jsp:include page="/fragment/top.jsp" />
<c:set var="orderid" value="${param.orderid}" scope=""/>
訂單已成立
<P>訂單編號為${orderid}</P>
</body>
</html>