<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"
        integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"
        integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
        crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"
        integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN"
        crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"
        integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8shuf57BaghqFfPlYxofvL8/KUEfYiJOMMV+rV"
        crossorigin="anonymous"></script>
    <title>Document</title>
    
    <style type="text/css">
    @import url(https://fonts.googleapis.com/earlyaccess/cwtexfangsong.css);
 	@import url('https://fonts.googleapis.com/css2?family=Amatic+SC&display=swap');
    
    div{
    	font-family:cwTeXFangSong, serif;
    	font-size: large
    }
    </style>
</head>

<body>
    <div class="container">
        <div class="card mb-3 " style="max-width: 800px; margin: auto; margin-top: 100px;">
            <div class="row no-gutters">
                <div class="col-md-4">
                    <img src="${oneProsuct.productImg}" class="card-img" alt="...">
                </div>
                <div class="col-md-8">
                    <div class="card-body">
                        <FORM ACTION="./ProductArray" name="method" value="selectItem">
                            <h4 class="card-title">${oneProsuct.productTitle}</h4>
                            <p class="card-text">${oneProsuct.productId}</p>
                            
                            <p class="card-text">
                                <fmt:formatNumber value="${oneProsuct.productPrice}" type="number" />元</p>

                            <span>請輸入數量：
                                <input type="number" min="1" max="${oneProsuct.productNum}" name="orderNum" value="1">
                            </span>

                            <hr>
                            <p class="card-text" style="font-size: x-large"><small class="text-muted">${oneProsuct.productDes}</small></p>
                            <input type="hidden" name="method" value="selectItem" />
                            
                            <input type="hidden" name="query" value="${query}" />
                            <input type="hidden" name="productID" value="${oneProsuct.productId}" />
                            <input type="hidden" name="orderPrice" value="${oneProsuct.productPrice}" />
                            <input type="hidden" name="orderImg" value="${oneProsuct.productImg}" />
                            <%--<input type="hidden" name="orderNum" value="${num}" />--%>
                            <input type="hidden" name="orderDes" value="${oneProsuct.productDes}" />
                            <input type="hidden" name="orderDes" value="${oneProsuct.productDes}" />
                            <div><button type="submit" name="param1" value="${oneProsuct.productTitle}"
                                class="btn btn-info">加入購物車</button></div>
                        </form>
                    </div>
                </div>

            </div>
        </div>
    </div>
</body>

</html>