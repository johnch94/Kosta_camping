<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<title>Insert title here</title>

</head>
<body>
<form action="${pageContext.request.contextPath}/location/location.do" method="post">
<input type="text" name="mapX">
<input type="text" name="mapY">
<input type="text" name="radius">
<input type="submit" value="검색">
</form>
</body> 
</html>