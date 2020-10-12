<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>   
<%@ taglib prefix="c"   uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"  %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"  %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>顯示場地預約資訊</title>
  <style type="text/css">
#paging {
position:relative;
left:120px;
top:10px;
}  
#pfirst {
position:relative;
left:2px;
top:2px;
}
#pprev {
position:relative;
left:2px;
top:2px;
}
#pnext {
position:relative;
left:2px;
top:2px;
}
#plast {
position:relative;
left:2px;
top:2px;
}
#main {
	position:relative;
	top: 5px;
	left:40px;
    width:100%;
}
#content {
  width: 820px ;
  margin-left: auto ;
  margin-right: auto ;
}
</style>
</head>
<body style="background:#FFFFFF;">
<!-- 下列敘述設定變數funcName的值為SHO，top.jsp 會用到此變數 -->
<c:set var="funcName" value="CSR" scope="session"/>
<!-- 引入共同的頁首 -->
<jsp:include page="/fragment/top.jsp" />
<H1>您搜尋的活動類別:${categoryName}</H1>
<table border='1'>
	<tr><th>預約該場活動</th><th>名稱</th><th>表演場地</th><th>地址</th><th>是否收費</th><th>價錢</th><th>時間</th><th>售票單位</th></tr>
	<c:forEach var='BeanToken' items='${categoryList}' varStatus='vs'>
		<c:choose>
			<c:when test="${vs.count % 2 == 0}">
				<c:set var='color' value='#bbf4f8' />
			</c:when>
			<c:otherwise>
				<c:set var='color' value='#cbf8bb' />
			</c:otherwise>
		</c:choose>
		<tr bgcolor='${color}'>
			<td><input type=checkbox></td>
			<td>${BeanToken.title}</td>
			<td>${BeanToken.location}</td>
			<td>${BeanToken.locationName}</td>
			<td>${BeanToken.onSales}</td>
			<td>${BeanToken.price}</td>
			<td>${BeanToken.time}</td>
			<td>${BeanToken.mainUnit}</td>
		</tr>
	</c:forEach> 
</table>                
<!-- 判斷購物車內是否有商品 -->
<c:choose>
   <c:when test="${ShoppingCart.itemNumber > 0}">
      <!-- 購物車內有一項以上的商品 -->
      <c:set var="cartContent" value="購物車內有${ShoppingCart.itemNumber}項商品"/>
   </c:when>
   <c:otherwise>
      <!-- 購物車內沒有商品 -->
      <c:set var="cartContent" value="您尚未購買任何商品"/>        
   </c:otherwise>
</c:choose>
<div id='content'>
<TABLE  style="width:820; border:2px solid black; ">
<!--   購物車的標題   -->          
   <TR>
      <TD colspan='4'> 
         <TABLE style="background:#FFE4C4; border:1px solid black; width:820px" >
            <TR height='2'>
               <TH width="270">&nbsp;</TH>
               <TH width="280">&nbsp;</TH>
               <TH width="270">&nbsp;</TH>
            </TR>    
            <TR height='10'>
               <TD width="240">&nbsp;</TD>
               <TD width="320" align='center' >
                  <FONT color='#8000FA' size='+2' style="font-weight:900;" >
                      ${AppName}
                  </FONT>
               </TD>
               <TD width="270" align='right'>
                  <FONT  color='red' size='-1'>
                     ${cartContent}
                  </FONT>
               </TD>
            </TR>
            
            <TR height='2'>
                <TD width="270">
	               <A href="<c:url value='../_04_ShoppingCart/ShowCartContent.jsp?pageNo=${pageNo}' />" >
	                                               購物清單
	               </A>
	            </TD>
                <TD width="280">&nbsp;</TD>
                <TD width="270" align='right'><FONT  color='red' size='-1'>
                                            金額小計(OK):<c:out value="${ShoppingCart.subtotal}" default="0"/> 元</FONT>
               </TD>
            </TR>          
         </TABLE>
      </TD>
   </TR>   

   <c:forEach varStatus="stVar"  var="aBookBean"  items="${products_DPP}" >
      <!-- 用兩種顏色交替使用作為顯示商品資料的背景底色 -->
      <c:set var="rowColor" value="#DEFADE" />
      <c:if test="${ stVar.count % 2 == 0 }">
         <c:set var="rowColor" value="#FFEBFF" />
      </c:if>
      
      <TR bgColor="${rowColor}" height='25'>
         <TD rowspan='3' width='64'> 
             <!-- 
                 getImage所對應的Servlet會到資料庫讀取圖片並傳送給前端的瀏覽器
              -->
        <img height='100' width='80' 
     src='${pageContext.servletContext.contextPath}/_00_init/getImage?id=${aBookBean.bookId}&type=BOOK'>
         </TD>
         <TD height='32' width='560'>
             <TABLE border='1'>
                <TR height='30'>
                    <TD width='560'>
                                                            書名：${aBookBean.title}
                    </TD>
                </TR>
             </TABLE>
         </TD>
         <TD rowspan='3' width='180'align='center'>
       <!-- <FORM  action='BuyBook.do' method="POST">  --> 
       <!-- 
          FORM表單的資料會送後端的 _03_listBooks.controller.BuyBookServlet.java
                         來處理 
       -->
       <FORM  action="<c:url value='BuyBook.do' />" method="POST">
                                購買數量:
               <select name='qty'>
                    <option value="1">1</option>
                    <option value="2">2</option>
                    <option value="3">3</option>
                    <option value="4">4</option>
                    <option value="5">5</option>
                    <option value="6">6</option>
                    <option value="7">7</option>
                    <option value="8">8</option>
                    <option value="9">9</option>
                    <option value="10">10</option>
               </select>
               <!-- 這些隱藏欄位都會送到後端 -->
               <Input type='hidden' name='bookID' value='${aBookBean.bookId}'>
               <Input type='hidden' name='title' value='${aBookBean.title}'>
               <Input type='hidden' name='author' value='${aBookBean.author}'>
               <Input type='hidden' name='companyName' value='${aBookBean.companyName}'>
               <Input type='hidden' name='price' value='${aBookBean.price}'>
               <Input type='hidden' name='discount' value='${aBookBean.discount}'>
               <Input type='hidden' name='pageNo' value='${param.pageNo}'>
               <Input type='submit' value='加入購物車'>
       </FORM>
       </TD>
   </TR>   
   <TR height='32' bgColor="${rowColor}">
       <TD width='560'>
         <TABLE border='1'>
            <TR height='31'>
               <TD width='420'>作者：${aBookBean.author}</TD>
               <TD width='140'>出版社：${fn:substring(aBookBean.companyName,0,2)}</TD>
            </TR>
         </TABLE>
      </TD>
   </TR>
   <TR height='32' bgColor="${rowColor}">
       <TD width='560'>
           <TABLE border='1'> 
              <TR height='31'>
                 <TD width='160'>書號：${aBookBean.bookNo}</TD>                 
                 <TD width='140'>訂價：<fmt:formatNumber value="${aBookBean.price}"  pattern="####" />元</TD>
                 <c:if test="${ aBookBean.discount != 1 }">
                     <TD width='260'>
                     
                    <Font color='red' >
                        ${aBookBean.discountStr},&nbsp;
                        實售<fmt:formatNumber value="${aBookBean.price*aBookBean.discount}"  pattern="####" />
                        元,&nbsp;省<fmt:formatNumber value="${aBookBean.price - aBookBean.price*aBookBean.discount}"  
                        pattern="####" />元</Font>
                        </TD>
                 </c:if>
                 <c:if test="${ aBookBean.discount == 1 }">
                     <TD width='260'>&nbsp;</TD>
                 </c:if>
              </TR>
           </TABLE>
       </TD>
   </TR>
</c:forEach> 
</TABLE>
</div>

</body>
</html>
