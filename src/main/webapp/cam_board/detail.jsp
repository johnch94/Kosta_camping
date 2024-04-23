<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Insert title here</title>
    <style>
        table {
            border-collapse: collapse;
            width: 100%;
        }
        th, td {
            border: 1px solid black;
            padding: 8px;
            text-align: center;
        }
        th {
            background-color: #f2f2f2;
        }
        img {
            width: 200px;
            height: 200px;
        }
    </style>
</head>
<body>
    <h3>상세 페이지</h3>
    <c:if test="${boo }">
    <div><a href="${pageContext.request.contextPath}/cam_board/follow.do?id=${cb.writer}&bnum=${cb.bnum}">❤️</a> ${cb.fnt}
        </c:if>
        <c:if test="${not boo }">
        <div><a href="${pageContext.request.contextPath}/cam_board/delfollow.do?id=${cb.writer}&bnum=${cb.bnum}">💪</a> ${cb.fnt}
            </c:if>
        ️</div>
    <table>
        <thead>
            <tr>
                <th>bnum</th><th>writer</th><th>area</th><th>price</th><th>title</th><th>wdate</th><th>content</th><th>img1</th><th>img2</th><th>img3</th><th>Actions</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td>${cb.bnum }</td>
                <td>${cb.writer }</td>
                <td>${cb.area }</td>
                <td>${cb.price }</td>
                <td>${cb.title }</td>
                <td>${cb.wdate }</td>
                <td>${cb.content }</td>
                <td><img src="${cb.img1 }"></td>
                <td><img src="${cb.img2 }"></td>
                <td><img src="${cb.img3 }"></td>
                <td>
                    <c:if test="${cb.writer == sessionScope.loginId }">
                        <a href="${pageContext.request.contextPath }/cam_board/edit.do?bnum=${cb.bnum }">수정</a>
                        <a href="">삭제</a>
                        <a href="${pageContext.request.contextPath }/cam_board/list.do">목록으로</a>
                    </c:if>
                </td>
            </tr>
        </tbody>
    </table>

    <h3>댓글</h3>
    <c:forEach var="s" items="${clist }">
        <div>${s.writer }</div>
        <div>${s.body }</div>
        <div>${s.wdate }</div>
        <c:if test="${cb.writer eq sessionScope.loginId }">
            <form action="${pageContext.request.contextPath }/cam_comment/del.do?cnum=${s.cnum}&bnum=${cb.bnum}" method="post">
                <input type="submit" value="삭제">
            </form>
        </c:if>
    </c:forEach>

    <h3>댓글 달기</h3>
    <form action="${pageContext.request.contextPath }/cam_comment/add.do" method="post">
        <input type="hidden" value="${sessionScope.loginId }" name="writer">
        <input type="hidden" value="${cb.bnum }" name="bnum">
        <div>내용:</div>
        <label>
            <textarea name="body"></textarea>
        </label>
        <div><input type="submit"></div>
    </form>

</body>
</html>
