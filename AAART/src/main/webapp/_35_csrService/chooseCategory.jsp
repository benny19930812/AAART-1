<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<HTML>
   <HEAD>
      <META HTTP-EQUIV="Content-Type" CONTENT="text/html; charset=UTF-8"/>
      <TITLE>Search Activity Category Form</TITLE>
      <style>
      h1, form {
      	text-align:center
      }
      </style>
   </HEAD>
<BODY BGCOLOR="#FFFFFF">
<c:set var="funcName" value="CSR" scope="session"/>
<jsp:include page="/fragment/top.jsp" />
	<H1>
	請選擇貴公司想團報的活動類別<br>      
	或是<br> 
	贊助偏鄉孩童參加藝文活動<br> 
	或是<br> 
	訂購員工福利票</H1>

	<FORM ACTION="<c:url value='ChooseCategory' />" method="post">
		活動類別
		<select name="activity_category" size="1" >
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
          <option value="16">未知分類</option>
          <option value="17">演唱會</option>
          <option value="19">研習課程</option>
        </select>
    	<BR>
    	<BR>
    	<INPUT TYPE="submit" value="查詢藝文活動"> 
 	</FORM>
 	<BR>
 	<form action="<c:url value='nearlestLocation'/> " method="get">
		<div class="searchBox">
			<input type="text" class="" name="userLocation" value="">
		</div>
    	<BR>
		<div class="submitButton">
			<input type="submit" class="" name="submit" value="查詢偏鄉孩童待媒合人數"> 
		</div>
	</FORM>
</BODY>
</HTML>