<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>나의 중고거래 수정 페이지</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f6f6f6;
            margin: 0;
            padding: 0;
        }
        #container {
            max-width: 800px;
            margin: 20px auto;
            background-color: #fff;
            padding: 20px;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }
        h1, h2, h3, h4, h5, h6 {
            margin: 0;
            padding: 0;
        }
        h3 {
            font-size: 24px;
            margin-bottom: 20px;
        }
        table {
            width: 100%;
            border-collapse: collapse;
            margin-bottom: 20px;
        }
        table, th, td {
            border: 1px solid #ddd;
        }
        th, td {
            padding: 10px;
            text-align: left;
        }
        th {
            background-color: #f2f2f2;
        }
        input[type="text"],
        input[type="number"],
        textarea {
            width: calc(100% - 20px);
            padding: 10px;
            margin: 5px 0;
            border: 1px solid #ccc;
            border-radius: 5px;
            box-sizing: border-box;
        }
        input[type="submit"],
        input[type="button"] {
            padding: 10px 20px;
            margin-top: 10px;
            border: none;
            background-color: #007bff;
            color: #fff;
            cursor: pointer;
            border-radius: 5px;
            font-size: 16px;
        }
        input[type="submit"]:hover,
        input[type="button"]:hover {
            background-color: #0056b3;
        }
        .edit-form {
            display: flex;
            flex-wrap: wrap;
            justify-content: space-between;
        }
        .edit-form input[type="text"],
        .edit-form input[type="number"],
        .edit-form textarea {
            width: calc(49% - 15px);
            margin-bottom: 10px;
        }
        .edit-form textarea {
            width: 100%;
            resize: vertical;
        }
        .upload-form {
            display: none;
            width: 200px;
            height: 75px;
            position: absolute;
            top: 200px;
            left: 200px;
            background-color: #fff;
            border: 1px solid #ccc;
            padding: 10px;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }
        .upload-form input[type="file"] {
            margin-bottom: 10px;
        }
    </style>
    <script type="text/javascript">
        const uploadForm = (imgname) => {
            document.getElementById("f").style.display = '';
            f.imgname.value = imgname;
        }
        
        const cancelf = () => {
            document.getElementById("f").style.display = 'none';
        }
    </script>
</head>
<body>
<div id="container">
    <h3>나의 중고거래 수정 페이지</h3>
    <form name='f' id='f' style="display: none; width:200px; height:75px; position:absolute; top:200px; left:200px; background-color: #00c73c; padding: 10px; border-radius: 5px; box-shadow: 0 2px 5px rgba(0,0,0,0.2);"
	action="${pageContext.request.contextPath }/cam_board/upload.do" method="post" enctype="multipart/form-data">
	<input type="hidden" name="bnum" value="${cb.bnum }">
	<input type="hidden" name="imgname">
	<input type="file" name="imgf" style="margin-bottom: 5px;">
	<input type="submit" value="이미지 등록" style="background-color: #00b33c; color: #fff; border: none; padding: 5px 10px; border-radius: 3px; cursor: pointer;">
	<input type="button" value="취소" onclick="cancelf()" style="background-color: #ff4c4c; color: #fff; border: none; padding: 5px 10px; border-radius: 3px; cursor: pointer;">
</form>

    <table>
        <tr>
            <td>
                <c:if test="${cb.img1 != null }">
                    <img src = "${cb.img1 }" style="width:200px; height:200px"><br/>
                    <input type="button" value="수정" onclick="uploadForm('img1')">
                </c:if>
                <c:if test="${cb.img1 == null }">
                    이미지 없음<br/>
                    <input type="button" value="등록" onclick="uploadForm('img1')">
                </c:if>
            </td>
        </tr>
        <tr>
            <td>
                <c:if test="${cb.img2 != null }">
                    <img src = "${cb.img2 }" style="width:200px; height:200px"><br/>
                    <input type="button" value="수정" onclick="uploadForm('img2')">
                </c:if>
                <c:if test="${cb.img2 == null }">
                    이미지 없음<br/>
                    <input type="button" value="등록" onclick="uploadForm('img2')">
                </c:if>
            </td>
        </tr>
        <tr>
            <td>
                <c:if test="${cb.img3 != null }">
                    <img src = "${cb.img3 }" style="width:200px; height:200px"><br/>
                    <input type="button" value="수정" onclick="uploadForm('img3')">
                </c:if>
                <c:if test="${cb.img3 == null }">
                    이미지 없음<br/>
                    <input type="button" value="등록" onclick="uploadForm('img3')">
                </c:if>
            </td>
        </tr>
    </table>
    <form class="edit-form" action="${pageContext.request.contextPath }/cam_board/edit.do" method="post" enctype="multipart/form-data">
        <input type="hidden" name="bnum" value="${cb.bnum }">
        <div>
            <label for="writer">작성자</label><br>
            <input type="text" name="writer" id="writer" value="${sessionScope.loginId }" readonly>
        </div>
        <div>
            <label for="area">지역</label><br>
            <input type="text" name="area" id="area" value="${cb.area }">
        </div>
        <div>
            <label for="price">가격</label><br>
            <input type="number" name="price" id="price" value="${cb.price }">
        </div>
        <div style="width: 100%;">
            <label for="title">제목</label><br>
            <input type="text" name="title" id="title" value="${cb.title }">
        </div>
        <div style="width: 100%;">
            <label for="content">내용</label><br>
            <textarea name="content" id="content" rows="5">${cb.content }</textarea>
        </div>
        <input type="submit" value="수정
        ">
    </form>
</div>
</body>
</html>
	