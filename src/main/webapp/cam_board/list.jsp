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
	<h3>장터 목록</h3>
	<a href="${pageContext.request.contextPath }/cam_board/add.do">새 글작성</a>
	<table border="1">
		<tr>
			<th>bnum</th><th>writer</th><th>area</th><th>price</th><th>title</th><th>wdate</th><th>content</th><th>img1</th><th>img2</th><th>img3</th>
		</tr>
		<c:forEach var="cb" items="${list }">
			<tr>
				<td>${cb.bnum }</td>
				<td>${cb.writer }</td>
				<td>${cb.area }</td>
				<td>${cb.price }</td>
				<td><a href="${pageContext.request.contextPath }/cam_board/detail.do?bnum=${cb.bnum}">${cb.title }</a></td>
				<td>${cb.wdate }</td>
				<td>${cb.content }</td>
				<td><img src="${cb.img1 }" style="width: 200px; height: 200px"></td>
				<td><img src="${cb.img2 }" style="width: 200px; height: 200px"></td>
				<td><img src="${cb.img3 }" style="width: 200px; height: 200px"></td>
			</tr>
		</c:forEach>
	</table>
</body>
</html>