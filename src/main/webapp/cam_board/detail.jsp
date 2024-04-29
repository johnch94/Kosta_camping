<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Insert title here</title>
    <style>
        .container {
            width: 80%;
            margin: 0 auto;
        }
        .detail-section {
            margin-bottom: 20px;
            border: 1px solid #ccc;
            padding: 20px;
        }
        .detail-section h3 {
            margin-top: 0;
        }
        .detail-section img {
            width: 200px;
            height: 200px;
        }
        .comment {
            margin-bottom: 10px;
        }
        .comment .writer {
            font-weight: bold;
        }
        .comment .date {
            color: #888;
        }
        .comment form {
            margin-top: 10px;
        }
    </style>
</head>
<body>
<div class="container">
    <a href="${pageContext.request.contextPath }/cam_board/list.do">목록으로</a>
    <div class="detail-section">
        <h3>${cb.title}</h3>
        <div class="follow" style="text-align: right">
            <c:if test="${boo }">
                <a href="${pageContext.request.contextPath}/cam_board/follow.do?id=${cb.writer}&bnum=${cb.bnum}">❤️</a> ${cb.fnt}
            </c:if>
            <c:if test="${not boo }">
                <a href="${pageContext.request.contextPath}/cam_board/delfollow.do?id=${cb.writer}&bnum=${cb.bnum}">💪</a> ${cb.fnt}
            </c:if>
        </div>
        <div class="detail-info">
            <div style="display: inline-block"><strong>writer:</strong> ${cb.writer }</div><div style="border-left: 1px solid #5e5e5e;padding-left: 10px; margin-left: 10px; display:inline-block;height : 15px;"></div>
            <div style="display: inline-block">${cb.area }</div><div style="border-left: 1px solid #000;padding-left: 10px; margin-left: 10px; display:inline-block;height : 15px;"></div>
            <div style="display: inline-block">가격: ${cb.price }</div>

            <div style="display: inline-block">게시일: ${cb.wdate }</div>

            <hr style="margin: 15px 1px">
            <div style="display: inline-block"><strong style="font-size: 20px;color: red;">판매가</strong>: ${cb.price }원</div>
            <hr style="margin: 15px 1px">
            <div class="images">
                <c:if test="${!cb.img1.contains('null') }">
                	<img src="${cb.img1}">
                </c:if>
                <c:if test="${cb.img1.contains('null') }">
                	<img src="${pageContext.request.contextPath }/no_img/coming_soon.jpg">
                </c:if>
                <c:if test="${!cb.img2.contains('null') }">
                	<img src="${cb.img2}">
                </c:if>
                <c:if test="${cb.img2.contains('null') }">
                	<img src="${pageContext.request.contextPath }/no_img/coming_soon.jpg">
                </c:if>
                <c:if test="${!cb.img3.contains('null') }">
                	<img src="${cb.img3}">
                </c:if>
                <c:if test="${cb.img3.contains('null') }">
                	<img src="${pageContext.request.contextPath }/no_img/coming_soon.jpg">
                </c:if>
            </div>
            <div>${cb.content }</div>
            <div class="actions">
                <c:if test="${cb.writer == sessionScope.loginId }">
                    <a href="${pageContext.request.contextPath }/cam_board/edit.do?bnum=${cb.bnum }">수정</a>
                    <a href="${pageContext.request.contextPath }/cam_board/delete.do?bnum=${cb.bnum}">삭제</a>
                </c:if>
            </div>
        </div>
    </div>
	
	<div class="detail-section">
        <h3>댓글 달기</h3>
        <form action="${pageContext.request.contextPath }/cam_comment/add.do" method="post">
            <input type="hidden" value="${sessionScope.loginId }" name="writer">
            <input type="hidden" value="${cb.bnum }" name="bnum">
            <div>내용:</div>
            <label>
                <textarea name="body" style="width:1150px; height:75px"></textarea>
            </label>
            <div><input type="submit"></div>
        </form>
    </div>
	
    <div class="detail-section">
    
        <h3>댓글</h3>
        <c:forEach var="s" items="${clist }">
            <div class="comment">
                <div class="writer">${s.writer }</div>
                <div class="body">${s.body }</div>
                <div class="date">${s.wdate }</div>
                <c:if test="${cb.writer eq sessionScope.loginId }">
                    <form action="${pageContext.request.contextPath }/cam_comment/del.do?cnum=${s.cnum}&bnum=${cb.bnum}" method="post">
                        <input type="submit" value="삭제">
                    </form>
                </c:if>
            </div>
        </c:forEach>
    </div>

    
</div>
</body>
</html>
