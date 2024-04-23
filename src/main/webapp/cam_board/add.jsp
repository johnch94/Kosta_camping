<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
</head>
<body>
	<h3>새 게시글 작성</h3>
	<form action="${pageContext.request.contextPath }/cam_board/add.do"
		method="post" enctype="multipart/form-data">
		<table border="1">
			<tr>
				<th>writer</th>
				<td><input type="text" name="writer" value="${sessionScope.loginId }" readonly></td>
			</tr>
			<tr>
				<th>area</th>
				<td><input type="text" name="area"></td>
			</tr>
			<tr>
				<th>price</th>
				<td><input type="number" name="price"></td>
			</tr>
			<tr>
				<th>title</th>
				<td><input type="text" name="title"></td>
			</tr>
			<tr>
				<th>content</th>
				<td><textarea name="content"></textarea></td>
			</tr>
			<tr>
				<th>img1</th>
				<td><input type="file" name="img"></td>
			</tr>
			<tr>
				<th>img2</th>
				<td><input type="file" name="img"></td>
			</tr>
			<tr>
				<th>img3</th>
				<td><input type="file" name="img"></td>
			</tr>
			
			
		</table>
		<input type="submit" value="등록">
	</form>
</body>
</html>