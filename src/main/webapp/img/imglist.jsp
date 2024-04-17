<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2024-04-15
  Time: 오후 5:54
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<table>
<c:forEach var="i" items="list">
<tr>
    <td>${i.contentId}</td><td>${i.serialnum}</td><td>${i.imageUrl}</td>
</tr>
</c:forEach>
</table>
</body>
</html>
