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
		<jsp:include page="/_04_ST/04_topbar.jsp" />
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
            <td>單價</td>
         
<c:forEach items="${getorlist2}" var="show2" varStatus="idx">
        </tr>
			<tr>
            <td>${show2.title}</td>
            <td>全票</td>
            <td>${show2.adultnum}</td>  
          	<td name="price" class="price" id="price" >1000</td>

            <tr>
            <tr>
            <td>${show2.title}</td>
            <td>半票</td>
            <td>${show2.halfnum}</td>  
          	<td name="price" class="price" id="price" >500</td>

 			
         <tr>
	</c:forEach>		
			

		</table>
	</form>	
	 <input type="submit" value="修改訂單" name="submit" class="submit" id="update"  >
	 
	  <input type="submit" value="刪除訂單" name="submit" class="submit" id="delete"  >
<%-- 	 <form name="order" action="<c:url value='/_04_Orderlist/OrIdDeleteServlet'/> " method="get"> --%>
<!-- 	  </form> -->
 <script src="https://code.jquery.com/jquery-3.5.1.js"
    integrity="sha256-QWo7LDvxbWT2tbbQ97B53yJnYU3WhH/C8ycbRAkjPDc=" crossorigin="anonymous"></script>
</script>    
    
    
    <script>
    $("#update").click(function () {
    	
    		window.location ="<c:url value='/_04_Orderlist/OrderlistUpdate.jsp'/>" 
    	
    })
    
    

    $("#delete").click(function () {
    	if (confirm("確認刪除? ")) {
    		window.location ="<c:url value='/_04_Orderlist/OrIdDeleteServlet'/>" 
    	} else {
    		return false;
    	}
    	
    })
    
    

    </script>	  
	  
	  
</body>

</html>