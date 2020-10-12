<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<FORM  action="<c:url value='/_14_listAP/SerachProduct' />" method="POST">
   <input type="text" name="serachInput">
   <Input type='submit' value='搜尋商品'>
   
   </FORM>   

   <c:forEach varStatus="stVar"  var="aBookBean"  items="${products_DPP2}" >
      <!-- 用兩種顏色交替使用作為顯示商品資料的背景底色 -->
      <c:set var="rowColor" value="#FFFFFF" />
      <c:if test="${ stVar.count % 2 == 0 }">
         <c:set var="rowColor" value="#FFEBFF" />
      </c:if>
      
      <TR bgColor="${rowColor}" height='25'>
         <TD rowspan='3' width='64'> 
             <!-- 
                 getImage所對應的Servlet會到資料庫讀取圖片並傳送給前端的瀏覽器
              -->
        <img height='100' width='80' 
     src='${aBookBean.imgAP}'>
         </TD>
         <TD height='32' width='560'>
             <TABLE border='1'>
                <TR height='30'>
                    <TD width='560'>
                                                            書名：${aBookBean.titleAP}
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
               <Input type='hidden' name='bookID' value='${aBookBean.idAP}'>
               <Input type='hidden' name='title' value='${aBookBean.titleAP}'>
               <Input type='hidden' name='author' value='${aBookBean.priceAP}'>
               <Input type='hidden' name='companyName' value='${aBookBean.imgAP}'>
               <Input type='hidden' name='price' value='${aBookBean.numAP}'>
               <Input type='hidden' name='discount' value='${aBookBean.desAP}'>
               <Input type='hidden' name='pageNo' value='${aBookBean.typeAP}'>
                <Input type='hidden' name='pageNo' value='${param.pageNo}'>
               <Input type='submit' value='加入購物車'>
       </FORM>
       </TD>
   </TR>   
   <TR height='32' bgColor="${rowColor}">
       <TD width='560'>
         <TABLE border='1'>
            <TR height='31'>
               <TD width='420'>作者：${aBookBean.titleAP}</TD>
               <TD width='140'>出版社：${aBookBean.typeAP}</TD>
            </TR>
         </TABLE>
      </TD>
   </TR>
   <TR height='32' bgColor="${rowColor}">
       <TD width='560'>
           <TABLE border='1'> 
              <TR height='31'>
                 <TD width='160'>書號：${aBookBean.typeAP}</TD>                 
                 <TD width='140'>訂價：<fmt:formatNumber value="${aBookBean.priceAP}"  pattern="####" />元</TD>
                 <c:if test="${ aBookBean.priceAP}">
                     <TD width='260'>
                     
                    <Font color='red' >
                        ${aBookBean.priceAP},&nbsp;
                        實售<fmt:formatNumber value="${aBookBean.priceAP}"  pattern="####" />
                        元,&nbsp;省<fmt:formatNumber value="${aBookBeanpriceAP}"  
                        pattern="####" />元</Font>
                        </TD>
                 </c:if>
                 <c:if test="${ aBookBean.priceAP }">
                     <TD width='260'>&nbsp;</TD>
                 </c:if>
              </TR>
           </TABLE>
       </TD>
   </TR>
</c:forEach> 
</TABLE>
</body>
</html>