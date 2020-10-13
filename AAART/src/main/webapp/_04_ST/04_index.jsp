<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="zh-tw">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>首頁</title>
     <style>
        .logo {
            width: 600px;
        }
		.search{
		 width: 400px;
         height: 30px;
         margin-left: 50px;    
		}
		.category{
		width:120pX;
		margin-left: 50px;
		}
		.site{
		width:120pX;
		
		}
		.textbox-n{
		width:100pX;
		}
        .bodydiv{
		 height: 800px;
         margin-left: 300px; 
         margin-top: 100px;
        
        }
        .footer {
            height: 100PX;
            background-color: #1B9AAA;
        }
        </style>
</head>
   <BODY>
 
        
<jsp:include page="/_04_ST/04_topbar.jsp" />
  <form method=GET action="./SearchServlet"> 

   <button name="category" type="submit" value="1">音樂</button>
   <button name="category" type="submit" value="2">戲劇</button>
   <button name="category" type="submit" value="3">舞蹈</button>
   <button name="category" type="submit" value="4">親子</button>
   <button name="category" type="submit" value="5">獨立音樂</button>
   <button name="category" type="submit" value="6">展覽</button>
   <button name="category" type="submit" value="7">講座</button>
   <button name="category" type="submit" value="8">電影</button>
   <button name="category" type="submit" value="11">綜藝</button>
   <button name="category" type="submit" value="13">競賽</button>
   <button name="category" type="submit" value="14">徵選</button>
   <button name="category" type="submit" value="15">其他</button>
   <button name="category" type="submit" value="16">科教</button>
   <button name="category" type="submit" value="17">音樂</button>
   <button name="category" type="submit" value="19">研習課程</button>
<!-- 隱藏屬性 用來傳遞頁數 -->
<input type="hidden" name="site" value="">
<input type="hidden" name="startdate" value="">
<input type="hidden" name="enddate" value="">
<input type="hidden" name="queryVal" value="">
<input type="hidden" name="page" value="">

   </form>
   
   

<div class="bodydiv">
   <img src="./images/logo.jpg" alt="logo" title="logo" class="logo"><br>
<form method=GET action="./SearchServlet">

<!-- 隱藏屬性 用來傳遞頁數 -->
<input type="hidden" name="page" value="1">

<!--    模糊查詢功能 -->
   <input type=TEXT name="queryVal" class="search" placeholder ="音樂 展覽 舞蹈 台中">
   <input type=SUBMIT value="查詢"><br><br>
   
   <select id="category" class="category" name="category" >
          <option value="" selected>分類查詢</option>
          <option value="1">音樂</option>
          <option value="2">戲劇</option>
          <option value="3">舞蹈</option>
          <option value="4">親子</option>
          <option value="5">獨立音樂</option>
          <option value="6">展覽</option>
          <option value="7">講座</option>
          <option value="8">電影</option>
          <option value="11">綜藝</option>
          <option value="13">競賽</option>
          <option value="14">徵選</option>
          <option value="15">其他</option>
          <option value="16">科教</option>
          <option value="17">演唱會</option>
          <option value="19">研習課程</option>
  </select>

  <select id="site" class="site" name="site">
   <option value="" selected>地區查詢</option>
   <option value="">==北部地區==</option>
   <option value="基隆">基隆</option>
   <option value="台北">台北</option>
   <option value="新北">新北</option>
   <option value="桃園">桃園</option>
   <option value="新竹">新竹</option>
   <option value="">==中部地區==</option>
   <option value="苗栗">苗栗</option>
   <option value="台中">台中</option>
   <option value="彰化">彰化</option>
   <option value="南投">南投</option>
   <option value="雲林">雲林</option>
   <option value="">==南部地區==</option>
   <option value="嘉義">嘉義</option>
   <option value="南投">南投</option>
   <option value="高雄">高雄</option>
   <option value="屏東">屏東</option>
   <option value="">==東部地區==</option>
   <option value="宜蘭">宜蘭</option>
   <option value="花蓮">花蓮</option>
   <option value="台東">台東</option>

</select>
	<input placeholder="開始日查詢" class="textbox-n" type="text" onfocus="(this.type='date')" id="startdate" name="startdate">
	<input placeholder="結束日查詢" class="textbox-n" type="text" onfocus="(this.type='date')" id="enddate" name="enddate">
<!--    <input id="startdate" type="date" name="startdate" placeholder ="開始日查詢"> -->
<!--    <input id="enddate" type="date" name="enddate" placeholder ="結束日查詢"><br> -->




</form>
</div>  

 <footer id="footer" class="footer">
        我是置底列
    </footer>
   </BODY>	
</HTML>