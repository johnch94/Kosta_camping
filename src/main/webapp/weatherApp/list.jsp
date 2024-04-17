<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>캠핑장 정보</title>
</head>
<body>
<h3>캠핑장 정보</h3>
<c:forEach var="t" items="${total}">
<table border="1">
<tr><th colspan="19">검색된 총 캠핑장 수:${t.totalCount}</th></tr>
<tr>
    <th>위도</th>
    <th>경도</th>
    <th>id</th>
    <th>야영장명</th>
    <th>한 줄 소개</th>
    <th>소개</th>
    <th>업종</th>
    <th>운영 상태</th>
    <th>휴장 시작</th>
    <th>휴장 종료</th>
    <th>특징</th>
    <th>입지 구분</th>
    <th>도</th>
    <th>시군구</th>
    <th>우편번호</th>
    <th>주소</th>
    <th>주소 상세</th>
    <th>전화</th>
    <th>홈페이지</th>
</tr>
	<c:forEach var="l" items="${t.list }">
    <tr>
        <td>${l.mapY}</td>
        <td>${l.mapX}</td>
        <td>${l.contentId}</td>
        <td>${l.facltNm}</td>
        <td>${l.lineIntro}</td>
        <td>${l.intro}</td>
        <td>${l.induty}</td>
        <td>${l.manageSttus}</td>
        <td>${l.hvofBgnde}</td>
        <td>${l.hvofEnddle}</td>
        <td>${l.featureNm}</td>
        <td>${l.lctCl}</td>
        <td>${l.doNm}</td>
        <td>${l.sigunguNm}</td>
        <td>${l.zipcode}</td>
        <td>${l.addr1}</td>
        <td>${l.addr2}</td>
        <td>${l.tel}</td>
        <td>${l.homepage}</td>
    </tr>
    </c:forEach>
    </table>
<form action="${pageContext.request.contextPath}/weather/searchwea.do" method="post">

<input type="hidden" name="weatherlat" value="${t.list[0].mapY}">
<input type="hidden" name="weatherlon" value="${t.list[0].mapX}">
Weather:<input type="submit" value="날씨검색">
</form>
</c:forEach>
</body>
</html>
