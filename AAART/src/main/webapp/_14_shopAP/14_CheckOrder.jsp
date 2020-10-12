<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"  %>
<%@ taglib prefix="fn"  uri="http://java.sun.com/jsp/jstl/functions"  %>
<%@page import="java.util.Objects"%>
<%@ page import="_14_shopAP.*" %>
<%@ page import="_14_init.*" %>
<%@ page import="java.util.List" %>
<%@ page import="java.sql.*" %>
<jsp:useBean   id="today"  class="java.util.Date" scope="session"/> 
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <style>
        table{
            margin: auto;
            margin-top: 50px;
        }
    
        table, th, td {
            
      border: 1px solid black;
      border-collapse: collapse;
      padding: 10px;
    }
    </style>
    <script type="text/javascript">
    function cancelOrder() {
    	if (confirm("確定取消此份訂單 ? ") ) {
    		// 接收此資料的Servlet會使用 finalDecision 參數的值
    		document.forms[0].finalDecision.value = "CANCEL";
    		document.forms[0].action="<c:url value='ProcessOrderServlet' />";
    		document.forms[0].method="POST";
    		document.forms[0].submit();
    		return;
    	} else {
    		return;
    	}
    }
    
    
    function reconfirmOrder() {
    	var sa = document.getElementById('ShippingAddress').value;
    	if  (sa === "") {
    		window.alert ('收件人地址不能空白');
    		return ; 
    	}
    	if (confirm("確定送出此份訂單 ? ") ) {
    		// 接收此資料的Servlet會使用 finalDecision 參數的值
    		document.forms[0].finalDecision.value = "ORDER";
    		document.forms[0].action="<c:url value='ProcessOrderServlet' />";
    		document.forms[0].method="POST";
    		document.forms[0].submit();
    		return;
    	} else {
    		return;
    	}
    }
    
    </script>
</head>
<body>
<h3>請確認訂單資訊</h3>
<FORM style="margin: 0 auto; width:750px;" action="<c:url value='ProcessOrder.do' />" method="POST" >
    <table>
        <tr>
            <th><label>收件人姓名：</label>
                <input type="text" name="ShippingName">
            </th>
            <th><label>聯絡電話：</label>
                <input type="text" name="ShippingTel">
            </th>
            <th>訂單日期：<fmt:formatDate value="${today}" pattern="yyyy-MM-dd"/></th>
            
        </tr>
        <tr>
            <td colspan='3' id='ShippingAddress'>收件人地址：<input  name="Address" type="text"></td>
            
        </tr>
        <tr>
            <td>統一編號：<input name="BNO" type="text"></td>
            
        </tr>
        <tr>
            <td>發票抬頭：<input name="InvoiceTitle" type="text"></td>
            
        </tr>
    </table>

    <table>
        <tr>
            <th>名稱</th>
            <th>數量</th>
            <th>價格</th>
            <th>小計</th>
        </tr>
        <c:forEach varStatus="vs" var="anEntry" items="${carList.cartAP}">
        <tr>
            <td>${anEntry.value.productTitleAP}</td>
            <td>${anEntry.value.productPriceAP} $NTD</td>
            <td>${anEntry.value.productNumAP}</td>
            <td>${anEntry.value.productPriceAP * anEntry.value.productNumAP}</td>
        </tr>
        </c:forEach>
        <tr>
        
        <td colspan="3">總計：${carList.subtotal}</td>
    </tr>
    </table>
   <input type="hidden" name="finalDecision"  value="">   

   <input type="button" name="OrderBtn"  value="確定送出" onclick="reconfirmOrder()">
   <input type="button" name="CancelBtn" value="取消訂單" onclick="cancelOrder()">
    </FORM>
</body>
</html>