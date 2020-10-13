<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="zh-tw">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>模糊查詢</title>
    <style>
		.page li{
		display:inline;
		}
		.no{
		width: 30px;
		}
		.title{
		width: 800px;
		}
		.site{
		width: 200px;
		}
		.date{
		width: 100px;
		}
		.buy{
		width: 10px;
		}
    </style>
</head>
<body>
	<jsp:include page="/_04_ST/04_topbar.jsp" />
	節目查詢
	<c:set var="totalnum" value="${requestScope.totalnum}"/>
    <c:set var="PerPage" value="${requestScope.PerPage}"/>
    <c:set var="totalPages" value="${requestScope.totalPages}"/>
    <c:set var="beginIndex" value="${requestScope.beginIndex}"/>
    <c:set var="endIndex" value="${requestScope.endIndex}"/>
    <c:set var="page" value="${requestScope.page}"/>
    <c:set var="currentPage" value="${requestScope.key_list.subList(beginIndex,endIndex)}"/>
    <p>總筆數:${totalnum}</p><p>每頁筆數:${PerPage}</p><p>總頁數:${totalPages}</p><p>第幾頁:${page}</p>

    <table border="1">
        <tr>
            <th class="no">編號</th>
            <th class="title">節目名稱</th>
            <th class="site">場地</th>
            <th class="date">日期</th>
            <th class="buy">購買</th>    
        </tr>

<%--使用JSTL 執行for loop ${show.no}取map內value --%>
        <c:forEach items="${currentPage}" var="show" varStatus="idx">
        <tr>
       <!-- 傳送訂單資訊 -->
       <form name="order" action="./04_Booking.jsp" method="get">
				<td>${show.no}</td><td>${show.title}</td><td>${show.site}</td><td>${show.date}</td><td><input type=SUBMIT value="購買"></td>
				<!-- 這些隱藏欄位都會送到後端 -->
 				<Input type='hidden' name='title' value='${show.title}'>
 				<Input type='hidden' name='actid' value='${show.no}'>
 				<Input type='hidden' name='description' value='${show.description}'>

			</form>
			</tr>
			
		</c:forEach>

        
    </table>

 
 <!-- 頁數區 -->
 <div >
        <nav>
            <ul class="page">
                <li><a href="<c:url value="/_04_ST/SearchServlet?page=1&queryVal=${queryVal}&category=${category}&site=${site}&startdate=${startdate}&enddate=${enddate}"/>">首頁</a></li>
                <li><a href="<c:url value="/_04_ST/SearchServlet?page=${page-1>1?page-1:1}&queryVal=${queryVal}&category=${category}&site=${site}&startdate=${startdate}&enddate=${enddate}"/>">&laquo;</a></li>

                <c:forEach begin="1" end="${totalPages}" varStatus="loop">
                    <c:set var="active" value="${loop.index==page?'active':''}"/>
                    <li class="${active}"><a
                            href="<c:url value="/_04_ST/SearchServlet?page=${loop.index}&queryVal=${queryVal}&category=${category}&site=${site}&startdate=${startdate}&enddate=${enddate}"/>">${loop.index}</a>
                    </li>
                </c:forEach>
                <li>
                    <a href="<c:url value="/_04_ST/SearchServlet?page=${page+1<totalPages?page+1:totalPages}&queryVal=${queryVal}&category=${category}&site=${site}&startdate=${startdate}&enddate=${enddate}"/>">&raquo;</a>

                </li>
                <li><a href="<c:url value="/_04_ST/SearchServlet?page=${totalPages}&queryVal=${queryVal}&category=${category}&site=${site}&startdate=${startdate}&enddate=${enddate}"/>">尾页</a></li>

            </ul>
        </nav>
    </div>

</div>

















</body>
</html>