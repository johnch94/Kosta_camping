<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2024-04-18
  Time: 오전 10:27
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <title>Title</title>
</head>
<body>
<!-- 지도를 표시할 div 입니다 -->
<div id="map" style="width:100%;height:350px;"></div>

<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=fbe64bacc6adfc8c04f2abe21ed24a86"></script>
<script>
    const getCurrentCoordinate = async () => {
        console.log("getCurrentCoordinate 함수 실행!!!");
        return new Promise((res, rej) => {
            // HTML5의 geolocaiton으로 사용할 수 있는지 확인합니다.
            if (navigator.geolocation) {
                // GeoLocation을 이용해서 접속 위치를 얻어옵니다.
                navigator.geolocation.getCurrentPosition(function (position) {
                    console.log(position);
                    const lat = position.coords.latitude; // 위도
                    const lon = position.coords.longitude; // 경도

                    const coordinate = new kakao.maps.LatLng(lat, lon);
                    res(coordinate);
                });
            } else {
                rej(new Error("현재 위치를 불러올 수 없습니다."));
            }
        });
    };
    var mapContainer = document.getElementById('map'), // 지도를 표시할 div
        mapOption = {
            center: new kakao.maps.LatLng(pos.coords.latitude, pos.coords.longitude), // 지도의 중심좌표
            level: 3 // 지도의 확대 레벨
        };

    // 지도를 표시할 div와  지도 옵션으로  지도를 생성합니다
    var map = new kakao.maps.Map(mapContainer, mapOption);
</script>
</body>
</html>
