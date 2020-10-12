<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>查詢離我最近活動</title>
<style>
div {
	text-align:center;
}
</style>
</head>
<body>
<c:set var="funcName" value="GEO" scope="session"/>
<jsp:include page="/fragment/top.jsp" />
	<div>
		<h1 >請輸入您所在的區域</h1>
		<form action="<c:url value='nearlestLocation'/> " method="get">
			<div class="searchBox">
				<input type="text" class="" name="userLocation" value="">
			</div>
			<BR>
			<div class="submitButton">
				<input type="submit" class="" name="submit" value="確認送出"> 
			</div>
		</form>
	</div>
</body>
</html>