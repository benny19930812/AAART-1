<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>加入會員</title>
<style>
 		fieldset {
            width:500px;
            margin:15px;
            border:1px solid brown
            border-radius:15px;
            margin:0px auto;
        }
        legend {
            color:	#0080FF;
            margin-left:30px;
            font-weight:bold;
            
        }
        .st1 {
            width:450px;
            border-bottom:3px dashed 	#D0D0D0;
            margin:20px;
            padding-bottom:10px;
        }
        .sub {
            width:450px;
            margin:20px;
            text-align:center;
            margin:0px auto;
        }
        .t1 {
            width:100px;
            float:left;
            text-align:right;
        }
</style>
</head>
<body>
<jsp:include page="/_04_ST/04_topbar.jsp" />

 <form action="" method="post" enctype="multipart/form-data">
        
        <fieldset>
            <legend>加入會員</legend>
        <div class="st1">
            <label class="t1" for="account1">帳號名稱:</label>
            <input type="text" id="account1" name="account" autocomplete="off" autofocus placeholder="guest" size="10">
        </div>
        <div class="st1">
            <label class="t1" for="pwd1">密碼:</label>
            <input type="password" id="pwd1" name="pwd" maxlength="6" required>
        </div>
        <div class="st1">
            <label for="" class="t1">性別:</label>
            <input type="radio" name="gender" value="male" id="m1"><label for="m1">男</label>
            <label>
                <input type="radio" name="gender" value="female">女
            </label>
            
        </div>
        <div class="st1">
            <label for="" class="t1">生日:</label>
            <input type="date" name="birth">
        </div>
        <div class="st1">
            <label for="" class="t1">E-mail:</label>
            <input type="text" name="mail" disabled>
        </div>
        <div class="st1">
            <label for="" class="t1">地址:</label>
            <input type="text" name="address" >
        </div>
        <div class="st1">
            <label for="" class="t1">照片:</label>
            <input type="file" name="file1" multiple>
        </div>
    </fieldset><br>
        <div class="sub">
             <input type="submit" value="送出">
            <input type="reset" value="清除">
        </div>
       

    </form>

</body>
</html>