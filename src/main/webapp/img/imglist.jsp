<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2024-04-15
  Time: 오후 5:54
  To change this template use File | Settings | File Templates.
--%>
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
<h3>이미지목록</h3>
<c:forEach var="i" items="${list }">
<table border="1">
<tr><th>contentId</th><td>${i.contentId }</td></tr>
<tr><th>serialnum</th><td>${i.serialnum }</td></tr>
<tr><th>imageUrl</th><td><img src="${ i.imageUrl}" style="width:200px;height:200px"></td></tr>

<tr>
	<td>${img.contentId }</td><td>${img.serialnum}</td><td>${img.imageUrl }</td>
</tr>
</table>
</c:forEach>
</body>
</html>
