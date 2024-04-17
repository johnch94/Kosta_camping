<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h3>${locN.locaName} 지역의 날씨정보</h3>
<table border="1">
    <tr>
        <td>날짜</td>
        <c:forEach var="l" items="${list}">
            <td>${l.weaTime}<img src="https://openweathermap.org/img/wn/${l.icon }@2x.png"></td>
        </c:forEach>
    </tr>
<!--     <tr> -->
<!--         <td>날씨</td> -->
<%--         <c:forEach var="l" items="${list}"> --%>
<%--             <td>${l.weaName }</td> --%>
<%--         </c:forEach> --%>
<!--     </tr> -->

<!--     <tr> -->
<!--         <td>타입</td> -->
<%--         <c:forEach var="l" items="${list}"> --%>
<%--             <td>${l.rainType }</td> --%>
<%--         </c:forEach> --%>
<!--     </tr> -->
    <tr>
        <td>온도</td>
        <c:forEach var="l" items="${list}">
            <td>${l.tmpValue }</td>
        </c:forEach>
    </tr>
    <tr>
        <td>최저온도</td>
        <c:forEach var="l" items="${list}">
            <td>${l.tmpMin}</td>
        </c:forEach>
    </tr>
    <tr>
        <td>최고온도</td>
        <c:forEach var="l" items="${list}">
            <td>${l.tmpMax}</td>
        </c:forEach>
    </tr>
    <tr>
        <td>습도</td>
        <c:forEach var="l" items="${list}">
            <td>${l.humValue }</td>
        </c:forEach>
    </tr>
        <tr>
        <td>강수확률</td>
        <c:forEach var="l" items="${list}">
            <td>${l.rainPb }</td>
            
        </c:forEach>
    </tr>
    
</table>
</body>
</html>
