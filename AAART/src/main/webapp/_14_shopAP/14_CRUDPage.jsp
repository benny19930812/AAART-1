<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="java.util.List"%>
<%@ page import="java.sql.*"%>
<%@ page import="_14_shopAP.*"%>
<%@ page import="java.nio.charset.StandardCharsets"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>CRUD Center</title>
</head>
<body>
	<FORM ACTION="./CRUDServlet">
	<input type="text" name="apid">
    <input type="hidden" name="method" value="modify"/>
	<input type="submit" name="check" value="修改某項">
	</FORM>
	<FORM ACTION="./CRUDServlet">
	<input type="text" name="apid">
    <input type="hidden" name="method" value="delete"/>
    <input type="submit" name="check" value="刪除某項">
 	</FORM>
 	<hr>
 	<FORM ACTION="./CRUDServlet">
 	<input type="hidden" name="method" value="insert"/>
 	貨號：<input type="text" name="apid">
 	品名：<input type="text" name="APTITLE">
 	類型：<input type="text" name="APTYPE">
 	價格：<input type="text" name="APPRICE">
 	圖片：<input type="text" name="APIMG">
 	描述：<input type="text" name="APDES">
 	數量：<input type="text" name="APNUM">
 	
    <input type="submit" name="check" value="新增項目">
    </FORM>
    <hr>
 	<FORM ACTION="./CRUDServlet">
    <input type="hidden" name="method" value="search"/>
    <input type="text" name="apid">
    <input type="submit" name="check" value="搜尋商品編號">
 	</FORM>
 	<table>
        <tr>
            <th>貨號</th>
            <th>商品名稱</th>
            <th>售價</th>
            <th>庫存</th>
        </tr>
 	<c:forEach var="searchAP" varStatus="stat" items="${searchList}">
 	
        <tr>
            <td>${searchAP.productId}</td>
            <td>${searchAP.productTitle}</td>
            <td>${searchAP.productPrice}</td>
            <td>${searchAP.productNum}</td>
        </tr>
 	
 	</c:forEach>
    </table>
<div style='text-align:center;'>
<c:if test='${not empty OrderErrorMessage}'>
		<font color='red'>${OrderErrorMessage}</font>
		<c:remove var="OrderErrorMessage"/>	
</c:if>
</div>
</body>
</html>