<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<link rel="stylesheet" href="${pageContext.request.contextPath}/css/top.css" type="text/css" />

<script src="${pageContext.request.contextPath}/javascript/jquery-1.9.1.js"></script>

<c:set var='debug' value='true' scope='application' />
<header id="topbar" class="topbar">
	<nav>
		<ul>
            <li id="category2" class="nav">
                分類
            </li>                  
            <li id="" class="nav">
                <c:if test="${ funcName != 'ACL' }">
					<a href="<c:url value='' />">找課程</a>
              	</c:if>
			  	<c:if test="${ funcName == 'ACL' }"> 
                	找課程
              	</c:if>
            </li>          
            <li id="" class="nav">
                <c:if test="${ funcName != 'SAT' }">
					<a href="<c:url value='' />">找藝人</a>
              	</c:if>
			  	<c:if test="${ funcName == 'SAT' }"> 
                	找藝人
              	</c:if>
            </li>                    
            <li id="" class="nav">
                <c:if test="${ funcName != 'ASP' }">
					<a href="<c:url value='' />">找商店</a>
              	</c:if>
			  	<c:if test="${ funcName == 'ASP' }"> 
                	找商店
              	</c:if>
            </li>                    
            <li id="" class="nav">
            	<c:if test="${ funcName != 'ASM' }">
					<a href="<c:url value='/_14_shopAP/14_serach.jsp' />">得藝洋行</a>
              	</c:if>
			  	<c:if test="${ funcName == 'ASM' }"> 
                	得藝洋行
              	</c:if>
            </li>                    
            <li id="" class="nav">
            	<c:if test="${ funcName != 'CSR' }">
                	<a href="<c:url value='/_35_csrService/chooseCategory.jsp' />" >企業專區</a>
			   	</c:if>
			   	<c:if test="${ funcName == 'CSR' }"> 
					企業專區
               	</c:if>
            </li>
            <li id="" class="nav">
		    	<c:if test="${ funcName != 'GEO' }">
					<a href="<c:url value='/_35_geoSearch/nearlestLocation.jsp' />">離我最近的活動</a>
              	</c:if>
			  	<c:if test="${ funcName == 'GEO' }"> 
                	離我最近的活動
              	</c:if>
            </li>
       	</ul>
        <ul>
            <li id="cart" class="nav2">
            	<a href="<c:url value='/_04_ShopCart/_04_ShoppingCart.jsp'/>" target="" title="">購物車</a>
            </li>
            <li id="order" class="nav2">
            	<a href="<c:url value='/_04_Orderlist/SearchOrderlist.jsp'/>" target="" title="">訂單</a>
            </li>
            <li id="signup" class="nav2">
            	<c:if test="${ funcName != 'REG' }">
			   		<a href="<c:url value='/_35_register/register.jsp' />"> 註冊 </a>
				</c:if> 
				<c:if test="${ funcName == 'REG' }"> 
                	註冊
            	</c:if>
            </li>
            <li id="login" class="nav2">
            	<c:if test="${empty LoginOK}">
            		<a href="<c:url value='/_35_login/login.jsp'/>" target="" title="">登入</a>   
            	</c:if>
            </li>
            <li id="signout" class="nav2">
				<c:if test="${ ! empty LoginOK }">
			   		<a href="<c:url value='/_35_login/logout.jsp' />">登出</a>
				</c:if>
            </li>
            <li id="index" class="nav2">
				<c:if test="${ funcName != 'IND' }">
					<a href="<c:url value='/index.jsp' />"> 回首頁 </a>
				</c:if>
            </li>
            <li id="cart" class="nav2" >
        		<c:if test="${ ! empty LoginOK }">
					<p class="userName">Welcome! ${LoginOK.name}</p>
				</c:if>
        	</li>
       </ul>
	</nav>
</header>
<%-- <div>${pageContext.session.id }</div> --%>