<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<style>
/* 下拉按鈕樣式 */
.dropbtn {
    background-color: #4CAF50;
    color: white;
    padding: 16px;
    font-size: 16px;
    border: none;
    cursor: pointer;
}

/* 容器 <div> - 需要定位下拉內容 */
.dropdown {
    position: relative;
    display: inline-block;
}

/* 下拉內容 (預設隱藏) */
.dropdown-content {
    display: none;
    position: absolute;
    background-color: #f9f9f9;
    min-width: 160px;
    box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
}

/* 下拉式選單的連結 */
.dropdown-content a {
    color: black;
    padding: 12px 16px;
    text-decoration: none;
    display: block;
}

/* 滑鼠移上去後修改下拉式選單連結顏色 */
.dropdown-content a:hover {background-color: #f1f1f1}

/* 在滑鼠移上去後顯示下拉式選單 */
.dropdown:hover .dropdown-content {
    display: block;
}

/* 當下拉內容顯示後修改下拉按鈕的背景顏色 */
.dropdown:hover .dropbtn {
    background-color: #3e8e41;
}
</style>
<body>


<div class="dropdown">
  <button class="dropbtn">下拉式選單</button>
  <div class="dropdown-content">
    <a href="#">線上程式語言教學練習 1</a>
    <a href="#">線上程式語言教學練習 2</a>
    <a href="#">線上程式語言教學練習 3</a>
  </div>
</div>
</body>
</html>