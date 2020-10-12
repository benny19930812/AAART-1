<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="zh-tw">
<head>
<meta charset="UTF-8">
<title>訂單</title>
</head>
<body>
	<%-- <form name="order" action="<c:url value='/_04_Orderlist/OrIdSearchServlet'/>" method="get" > --%>
	<form name="order" action="./OrIdSearchServlet" method="get">
		<jsp:include page="/fragment/top.jsp" />

		<c:set var="getorlist" value="${requestScope.getorlist}" />
		<%--使用JSTL 執行for loop ${show.no}取map內value --%>


		<table border="1">
			<tr>
				<th>訂單編號</th>
				<th>名字</th>
				<th>email</th>
				<th>tel</th>
				<th>地址</th>
				<th>總金額</th>

			</tr>
			<c:forEach items="${getorlist}" var="show" varStatus="idx">
				<tr>
					<td>${show.orderid}</td>
					<td>${show.name}</td>
					<td>${show.email}</td>
					<td>${show.tel}</td>
					<td>${show.address}</td>
					<td>${show.totalprice}</td>
				</tr>

			</c:forEach>
			</table><br><br>
		<table border="1">
			<tr>
            <td>節目名稱</td>
            <td>票種</td>
            <td>數量</td>
            <td>價格</td>
            <td>總價</td>
<c:forEach items="${getorlist2}" var="show2" varStatus="idx">
        </tr>
			<tr>
            <td>${show2.title}</td>
            <td>全票</td>
            <td>${show2.adultnum}</td>  
          	<td name="price" class="price" id="price" >1000</td>
            <td>${show2.total1}</td>
            <tr>
            <tr>
            <td>${show2.title}</td>
            <td>半票</td>
            <td>${show2.halfnum}</td>  
          	<td name="price" class="price" id="price" >500</td>
            <td>${show2.total2}</td>
 
         <tr>
	</c:forEach>		
			

		</table>

	</form>
</body>
</html>