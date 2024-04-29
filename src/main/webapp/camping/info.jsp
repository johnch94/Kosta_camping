<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2024-04-16
  Time: 오전 10:46
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<!--[if lt IE 7]> <html class="no-js lt-ie9 lt-ie8 lt-ie7" lang=""> <![endif]-->
<!--[if IE 7]> <html class="no-js lt-ie9 lt-ie8" lang=""> <![endif]-->
<!--[if IE 8]> <html class="no-js lt-ie9" lang=""> <![endif]-->
<!--[if gt IE 8]><!-->
<html class="no-js" lang=""> <!--<![endif]-->
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <title>Bino html5 free Template</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/iconfont.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/stylesheet.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/font-awesome.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/jquery.fancybox.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/bootstrap.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/bootstrap.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/magnific-popup.css">
    <!--        <link rel="stylesheet" href="assets/css/bootstrap-theme.min.css">-->
    <!--For Plugins external css-->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/plugins.css"/>
    <!--Theme custom css -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/style.css">
    <!--Theme Responsive css-->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/responsive.css"/>

    <script src="${pageContext.request.contextPath}/assets/js/vendor/modernizr-2.8.3-respond-1.4.2.min.js"></script>
    <script src="https://kit.fontawesome.com/de9b677ac7.js" crossorigin="anonymous"></script>

    <!-- kakao map api -->
    <script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=fbe64bacc6adfc8c04f2abe21ed24a86"></script>

</head>
<body data-spy="scroll" data-target=".navbar-collapse">

<div class='preloader'>
    <div class='loaded'>&nbsp;</div>
</div>
<div class="culmn">
    <header id="main_menu" class="header navbar-fixed-top">
        <div class="main_menu_bg">
            <div class="container">
                <div class="row">
                    <div class="nave_menu">
                        <nav class="navbar navbar-default">
                            <div class="container-fluid">
                                <!-- Brand and toggle get grouped for better mobile display -->
                                <div class="navbar-header">
                                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                                        <span class="sr-only">Toggle navigation</span>
                                        <span class="icon-bar"></span>
                                        <span class="icon-bar"></span>
                                        <span class="icon-bar"></span>
                                    </button>
                                    <a class="navbar-brand" href="${pageContext.request.contextPath}/index.jsp">
                                        <img src="${pageContext.request.contextPath}/assets/images/cam_logo.png" style="width: 55px; height: 52px; position: relative; margin-top: -7px"/>
                                        <img src="${pageContext.request.contextPath}/assets/images/Main-logo.png" style="width: 350px; position: absolute; left: 0; top: 0; margin-left: -20px; margin-top: -10px">
                                    </a>
                                </div>

                                <!-- Collect the nav links, forms, and other content for toggling -->

                                <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">

                                    <ul class="nav navbar-nav navbar-right">
                                        <li><a href="${pageContext.request.contextPath}/index.jsp">HOME</a></li>
                                        <li><a href="${pageContext.request.contextPath}/index.jsp#tour">추천 관광지</a></li>
                                        <li><a href="${pageContext.request.contextPath}/camping/list.do">캠핑</a></li>
                                        <li><a href="${pageContext.request.contextPath}/tour/tourlist.do">관광</a></li>
                                        <li><a href="${pageContext.request.contextPath}/camping/listtest.do?pageNum=1">장터</a></li>
                                        <li></li>
                                        <c:if test="${empty sessionScope.loginId}">
                                            <%--                                            비로그인--%>
                                            <li><a href="${pageContext.request.contextPath}/mem/memAdd.jsp">회원가입</a></li>
                                            <li><a href="${pageContext.request.contextPath}/mem/memLogin.jsp">로그인</a></li>
                                        </c:if>
                                        <c:if test="${not empty sessionScope.loginId}">
                                            <%--                                            로그인--%>
                                            <li><a href="${pageContext.request.contextPath}/mem/info.do">내정보 확인</a></li>
                                            <li><a href="${pageContext.request.contextPath}/mem/logout.do">로그아웃</a></li>
                                        </c:if>
                                    </ul>
                                </div>
                            </div>
                        </nav>
                    </div>
                </div>
            </div>
        </div>
    </header>
    <!--End of header -->
    <!-- title section -->
    <section id="home_camping" class="home_camping">
        <div class="overlay" style="height: 300px">
            <div class="cam_subtitle">
                <h1>${keyword}</h1>
            </div>
        </div>
    </section>
    <!--End of title -->
    <!--home Section -->
    <!--home Section -->
    <section>
        <div class="container">
            <div class="cam_info">
                <div class="col-sm-12">
                    <%-- 캠핑 정보 테이블 --%>
                    <%-- list 속성에 담긴 캠핑 정보 출력 --%>
                    <c:forEach var="list" items="${list}">
                        <div style="display: none" id="contentId">${list.contentId}</div>
                        <div id="mapX" style="display: none">${list.mapX}</div>
                        <div id="mapY" style="display: none">${list.mapY}</div>
                        <!-- 위치 -->

                        <div class="cam_list_title" style="margin-top:0px">
                            <i class="fa-solid fa-campground"></i>
                            <b>시설정보</b>
                        </div>
                        <div class="cam_imgTable">
                            <div style="display: inline-block; float: left; margin-bottom: 30px">
                                <img src="${list.firstImageUrl}"
                                     style="display:inline-block; width:630px ; height:380px; margin-right: 30px; padding-left: 10px; padding-right: 10px">
                            </div>
                            <!-- 첫 번째 이미지 URL -->
                            <div>
                                <div>
                                    <table>
                                        <tr>
                                            <th>주소</th>
                                            <td>${list.addr1}, ${list.addr2}</td>
                                        </tr>
                                        <tr>
                                            <th>연락처</th>
                                            <td>${list.tel}</td>
                                        </tr>
                                        <tr>
                                            <th>환경</th>
                                            <td>${list.lctCl} / ${list.facltDivNm}</td>
                                        </tr>
                                        <tr>
                                            <th>유형</th>
                                            <td>${list.induty}</td>
                                        </tr>
                                        <tr>
                                            <th>운영기간</th>
                                            <td>${list.operPdCl}</td>
                                        </tr>
                                        <tr>
                                            <th>운영일</th>
                                            <td>${list.operDeCl}</td>
                                        </tr>
                                        <tr>
                                            <th>주변 시설</th>
                                            <td>${list.posbFcltyCl}</td>
                                        </tr>
                                    </table>
                                </div>
                                <!-- 위치 -->
                                <div style="display: flex ;justify-content: center">
                                    <a href="${list.resveUrl}" class="resveMouseover">예약하기</a>
                                </div>
                                <!-- 예약 URL -->
                            </div>
                        </div>
                        <div>
                            <div class="cam_list_title">
                                <i class="fa-regular fa-compass"></i>
                                <b>캠핑장 소개</b>
                            </div>
                            <div style="font-size: 20px; line-height: 30px; text-indent: 10px">${list.lineIntro}</div>
                            <!-- 한 줄 소개 -->
                            <div style="font-size: 20px; line-height: 30px; text-indent: 10px">${list.intro}</div>
                            <!-- 상세 소개 -->
                            <div style="font-size: 20px;">${list.featureNm}</div>
                            <!-- 특징명 -->
                        </div>

                        <div style="margin-top: 50px">
                            <div class="cam_list_title">
                                <i class="fa-solid fa-cubes"></i>
                                <b>부대시설</b>
                            </div>
                            <table style="margin-right: inherit; margin-left: inherit; height: 180px">
                                <tr>
                                    <c:forEach var="listItem" items="${split}">
                                        <c:if test="${listItem eq '전기'}">
                                            <th style="width:150px;text-align: center; vertical-align: middle;">
                                                <img src="${pageContext.request.contextPath}/assets/images/img_info/bolt.jpeg"
                                                     style="width: 50px;">
                                            </th>
                                        </c:if>
                                    </c:forEach>
                                    <c:forEach var="listItem" items="${split}">
                                        <c:if test="${listItem eq '무선인터넷'}">
                                            <th style="width:150px;text-align: center; vertical-align: middle;">
                                                <img src="${pageContext.request.contextPath}/assets/images/img_info/wifi.jpeg"
                                                     style="width: 50px;">
                                            </th>
                                        </c:if>
                                    </c:forEach>
                                    <c:forEach var="listItem" items="${split}">
                                        <c:if test="${listItem eq '장작판매'}">
                                            <th style="width:150px;text-align: center; vertical-align: middle;">
                                                <img src="${pageContext.request.contextPath}/assets/images/img_info/fire.jpeg"
                                                     style="width: 75px;">
                                            </th>
                                        </c:if>
                                    </c:forEach>
                                    <c:forEach var="listItem" items="${split}">
                                        <c:if test="${listItem eq '온수'}">
                                            <th style="width:150px;text-align: center; vertical-align: middle;">
                                                <img src="${pageContext.request.contextPath}/assets/images/img_info/boil.jpeg"
                                                     style="width: 75px;">
                                            </th>
                                        </c:if>
                                    </c:forEach>
                                    <c:forEach var="listItem" items="${split}">
                                        <c:if test="${listItem eq '물놀이장'}">
                                            <th style="width:150px;text-align: center; vertical-align: middle;">
                                                <img src="${pageContext.request.contextPath}/assets/images/img_info/pool.jpeg"
                                                     style="width: 75px;">
                                            </th>
                                        </c:if>
                                    </c:forEach>
                                    <c:forEach var="listItem" items="${split}">
                                        <c:if test="${listItem eq '놀이터'}">
                                            <th style="width:150px;text-align: center; vertical-align: middle;">
                                                <img src="${pageContext.request.contextPath}/assets/images/img_info/play.jpeg"
                                                     style="width: 75px;">
                                            </th>
                                        </c:if>
                                    </c:forEach>
                                    <c:forEach var="listItem" items="${split}">
                                        <c:if test="${listItem eq '운동시설'}">
                                            <th style="width:150px;text-align: center; vertical-align: middle;">
                                                <img src="${pageContext.request.contextPath}/assets/images/img_info/ball.jpeg"
                                                     style="width: 75px;">
                                            </th>
                                        </c:if>
                                    </c:forEach>
                                    <c:forEach var="listItem" items="${split}">
                                        <c:if test="${listItem eq '마켓.편의점'}">
                                            <th style="width:150px;text-align: center; vertical-align: middle;">
                                                <img src="${pageContext.request.contextPath}/assets/images/img_info/market.jpeg"
                                                     style="width: 75px;">
                                            </th>
                                        </c:if>
                                    </c:forEach>
                                </tr>
                                <tr>
                                    <c:forEach var="listItem" items="${split}">
                                        <c:if test="${listItem eq '전기'}">
                                            <td style="text-align: center; vertical-align: middle;">
                                                    ${listItem}
                                            </td>
                                        </c:if>
                                    </c:forEach>
                                    <c:forEach var="listItem" items="${split}">
                                        <c:if test="${listItem eq '무선인터넷'}">
                                            <td style="text-align: center; vertical-align: middle;">
                                                    ${listItem}
                                            </td>
                                        </c:if>
                                    </c:forEach>
                                    <c:forEach var="listItem" items="${split}">
                                        <c:if test="${listItem eq '장작판매'}">
                                            <td style="text-align: center; vertical-align: middle;">
                                                    ${listItem}
                                            </td>
                                        </c:if>
                                    </c:forEach>
                                    <c:forEach var="listItem" items="${split}">
                                        <c:if test="${listItem eq '온수'}">
                                            <td style="text-align: center; vertical-align: middle;">
                                                    ${listItem}
                                            </td>
                                        </c:if>
                                    </c:forEach>
                                    <c:forEach var="listItem" items="${split}">
                                        <c:if test="${listItem eq '물놀이장'}">
                                            <td style="text-align: center; vertical-align: middle;">
                                                    ${listItem}
                                            </td>
                                        </c:if>
                                    </c:forEach>
                                    <c:forEach var="listItem" items="${split}">
                                        <c:if test="${listItem eq '놀이터'}">
                                            <td style="text-align: center; vertical-align: middle;">
                                                    ${listItem}
                                            </td>
                                        </c:if>
                                    </c:forEach>
                                    <c:forEach var="listItem" items="${split}">
                                        <c:if test="${listItem eq '운동시설'}">
                                            <td style="text-align: center; vertical-align: middle;">
                                                    ${listItem}
                                            </td>
                                        </c:if>
                                    </c:forEach>
                                    <c:forEach var="listItem" items="${split}">
                                        <c:if test="${listItem eq '마켓.편의점'}">
                                            <td style="text-align: center; vertical-align: middle;">
                                                    ${listItem}
                                            </td>
                                        </c:if>
                                    </c:forEach>
                                </tr>
                            </table>
                        </div>

                        <div>
                            <div class="cam_list_title">
                                <i class="fa-solid fa-bars-staggered"></i>
                                <b>상세정보</b>
                            </div>
                            <hr>
                            <div class="cam_list_info">
                                <div class="cam_list_info_div">
                                    <div style="display: inline-block; width: 150px;">운영상태</div>
                                    <div style="display: inline-block;">${list.manageSttus}</div>
                                    <hr>

                                    <div style="display: inline-block; width: 150px;">일반 캠핑장 수</div>
                                    <div style="display: inline-block;">${list.gnrlSiteCo}</div>
                                    <c:if test="${empty list.gnrlSiteCo}">
                                        <div style="display: inline-block;">-</div>
                                    </c:if>
                                    <hr>

                                    <div style="display: inline-block; width: 150px;">자동차 캠핑장 수</div>
                                    <div style="display: inline-block;">${list.autoSiteCo}</div>
                                    <c:if test="${empty list.autoSiteCo}">
                                        <div style="display: inline-block;">-</div>
                                    </c:if>
                                    <hr>

                                    <div style="display: inline-block; width: 150px;">글램핑장 수</div>
                                    <div style="display: inline-block;">${list.glampSiteCo}</div>
                                    <c:if test="${empty list.glampSiteCo}">
                                        <div style="display: inline-block;">-</div>
                                    </c:if>
                                    <hr>

                                    <div style="display: inline-block; width: 150px;">카라반 수</div>
                                    <div style="display: inline-block;">${list.caravSiteCo}</div>
                                    <c:if test="${empty list.caravSiteCo}">
                                        <div style="display: inline-block;">-</div>
                                    </c:if>
                                    <hr>

                                    <div style="display: inline-block; width: 150px;">개별 카라반 수</div>
                                    <div style="display: inline-block;">${list.indvdlCaravSiteCo}</div>
                                    <c:if test="${empty list.indvdlCaravSiteCo}">
                                        <div style="display: inline-block;">-</div>
                                    </c:if>
                                    <hr>

                                    <div style="display: inline-block; width: 150px;">글램핑 내부시설</div>
                                    <div style="display: inline-block;">${list.glampInnerFclty}</div>
                                    <c:if test="${empty list.glampInnerFclty}">
                                        <div style="display: inline-block;">-</div>
                                    </c:if>
                                    <hr>

                                    <div style="display: inline-block; width: 150px;">카라반 내부시설</div>
                                    <div style="display: inline-block;">${list.caravInnerFclty}</div>
                                    <c:if test="${empty list.caravInnerFclty}">
                                        <div style="display: inline-block;">-</div>
                                    </c:if>
                                    <hr>

                                    <div style="display: inline-block; width: 150px;">면적</div>
                                    <div style="display: inline-block;">${list.allar}</div>
                                    <hr>
                                </div>
                                <div class="cam_list_info_div">
                                    <div style="display: inline-block; width: 150px;">화장실 수</div>
                                    <div style="display: inline-block;">${list.toiletCo}</div>
                                    <c:if test="${empty list.toiletCo}">
                                        <div style="display: inline-block;">-</div>
                                    </c:if>
                                    <hr>

                                    <div style="display: inline-block; width: 150px;">샤워실 수</div>
                                    <div style="display: inline-block;">${list.swrmCo}</div>
                                    <c:if test="${empty list.swrmCo}">
                                        <div style="display: inline-block;">-</div>
                                    </c:if>
                                    <hr>

                                    <div style="display: inline-block; width: 150px;">개수대 수</div>
                                    <div style="display: inline-block;">${list.wtrplCo}</div>
                                    <c:if test="${empty list.wtrplCo}">
                                        <div style="display: inline-block;">-</div>
                                    </c:if>
                                    <hr>

                                    <div style="display: inline-block; width: 150px;">화로대</div>
                                    <div style="display: inline-block;">${list.brazierCl}</div>
                                    <hr>

                                    <div style="display: inline-block; width: 150px;">체험 프로그램 여부</div>
                                    <div style="display: inline-block;">${list.exprnProgrmAt}</div>
                                    <hr>

                                    <div style="display: inline-block; width: 150px;">체험 프로그램명</div>
                                    <div style="display: inline-block;">${list.exprnProgrm}</div>
                                    <c:if test="${empty list.exprnProgrm}">
                                        <div style="display: inline-block;">-</div>
                                    </c:if>
                                    <hr>

                                    <div style="display: inline-block; width: 150px;">반려동물 출입</div>
                                    <div style="display: inline-block;">${list.animalCmgCl}</div>
                                    <hr>

                                    <div style="display: inline-block; width: 150px;">등록일</div>
                                    <div style="display: inline-block;">${list.createdtime}</div>
                                    <hr>

                                    <div style="display: inline-block; width: 150px;">수정일</div>
                                    <div style="display: inline-block;">${list.modifiedtime}</div>
                                    <hr>
                                </div>
                            </div>
                        </div>
                    </c:forEach>
                </div>
            </div>
        </div>
    </section>
    <!--End of home section -->
    <!-- Start of img section -->
    <section style="margin-top: 50px">
        <div class="container">
            <div class="cam_list_title">
                <i class="fa-solid fa-camera-retro"></i>
                <b>시설 사진</b>
            </div>
            <div style="margin-top: 20px; margin-bottom: 20px; display: flex; justify-content: center; flex-direction: row">
                <div style="margin-left: 5px; margin-right: 5px; width: 200px; height: 150px;"><img id="imageUrl1" src=""></div>
                <div style="margin-left: 5px; margin-right: 5px; width: 200px; height: 150px;"><img id="imageUrl2" src=""></div>
                <div style="margin-left: 5px; margin-right: 5px; width: 200px; height: 150px;"><img id="imageUrl3" src=""></div>
                <div style="margin-left: 5px; margin-right: 5px; width: 200px; height: 150px;"><img id="imageUrl4" src=""></div>
                <div style="margin-left: 5px; margin-right: 5px; width: 200px; height: 150px;"><img id="imageUrl5" src=""></div>
            </div>
        </div>
    </section>
    <!--End of img section -->
    <!--Map section-->
    <section>
        <div class="container">
            <div class="cam_list_title">
                <i class="fa-solid fa-map-location-dot"></i>
                <b>${keyword} 위치</b>
            </div>
            <div style="display: flex; justify-content: center">
                <div id="map" class="info_map"></div>
            </div>
        </div>
    </section>
    <!--End of img section-->
    <!-- Start of weather section -->
    <section style="margin-top: 50px; margin-bottom: 100px">
        <div class="container">
            <div class="cam_list_title">
                <i class="fa-solid fa-cloud-sun"></i>
                <b>날씨</b>
            </div>
            <div class="cam_list_info">
                <div style="display: flex; flex-direction: row">
                    <div class="forecast-day">
                        <span id="date1" style="color: black; font-size:15px;">날짜</span>
                        <img id="icon1" src="" style="display: block;">
                        <p class="weather" id="temp1" style="font-size:25px;">기온</p>
                    </div>
                    <div class="forecast-day">
                        <span id="date2" style="color: black; font-size:15px;">날짜</span>
                        <img id="icon2" src="" style="display: block;">
                        <p class="weather" id="temp2" style="font-size:25px;">기온</p>
                    </div>
                    <div class="forecast-day">
                        <span id="date3" style="color: black; font-size:15px;">날짜</span>
                        <img id="icon3" src="" style="display: block;">
                        <p class="weather" id="temp3" style="font-size:25px;">기온</p>
                    </div>
                </div>
                <div style="display: flex; flex-direction: row">
                    <div class="forecast-day">
                        <span id="date4" style="color: black; font-size:15px;">날짜</span>
                        <img id="icon4" src="" style="display: block;">
                        <p class="weather" id="temp4" style="font-size:25px;">기온</p>
                    </div>
                    <div class="forecast-day">
                        <span id="date5" style="color: black; font-size:15px;">날짜</span>
                        <img id="icon5" src="" style="display: block;">
                        <p class="weather" id="temp5" style="font-size:25px;">기온</p>
                    </div>
                    <div class="forecast-day">
                        <span id="date6" style="color: black; font-size:15px;">날짜</span>
                        <img id="icon6" src="" style="display: block;">
                        <p class="weather" id="temp6" style="font-size:25px;">기온</p>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- End of weather section -->

    <!--Footer section-->
    <section class="footer">
        <div class="container">
            <div class="row">
                <div class="col-sm-12">
                    <div class="main_footer">
                        <div class="row">
                            <div class="col-sm-6 col-xs-12">
                                <div class="flowus">
                                    <a href="https://github.com/johnch94/Kosta_camping"><i class="fa fa-github"></i></a>
                                    <%--                                    <a href=""><i class="fa fa-facebook"></i></a>--%>
                                    <%--                                    <a href=""><i class="fa fa-twitter"></i></a>--%>
                                    <%--                                    <a href=""><i class="fa fa-google-plus"></i></a>--%>
                                    <%--                                    <a href=""><i class="fa fa-instagram"></i></a>--%>
                                    <%--                                    <a href=""><i class="fa fa-youtube"></i></a>--%>
                                    <%--                                    <a href=""><i class="fa fa-dribbble"></i></a>--%>
                                </div>
                            </div>

                            <div class="col-sm-6 col-xs-12">
                                <div class="copyright_text">
                                    <p class=" wow fadeInRight" data-wow-duration="1s">Made with <i
                                            class="fa fa-heart"></i> by <a href="http://bootstrapthemes.co">Bootstrap
                                        Themes</a>2016. All Rights Reserved</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section><!-- End off footer Section-->
</div>

<script src="${pageContext.request.contextPath}/assets/js/vendor/jquery-1.11.2.min.js"></script>
<script src="${pageContext.request.contextPath}/assets/js/vendor/bootstrap.min.js"></script>

<script src="${pageContext.request.contextPath}/assets/js/jquery.magnific-popup.js"></script>
<script src="${pageContext.request.contextPath}/assets/js/jquery.mixitup.min.js"></script>
<script src="${pageContext.request.contextPath}/assets/js/jquery.easing.1.3.js"></script>
<script src="${pageContext.request.contextPath}/assets/js/jquery.masonry.min.js"></script>

<script src="${pageContext.request.contextPath}/assets/js/plugins.js"></script>
<script src="${pageContext.request.contextPath}/assets/js/main.js"></script>

<!--slick slide js -->
<script src="${pageContext.request.contextPath}/assets/css/slick/slick.min.js"></script>
<!-- weather js -->
<script type="text/javascript">
    window.onload = () => {
        let wlat = document.getElementById("mapY").innerText;
        let wlon = document.getElementById("mapX").innerText;
        const req = new XMLHttpRequest();
        req.onload = () => {
            if (req.status === 200) {
                try {
                    let data = JSON.parse(req.responseText);
                    data.forEach((item, index) => {
                        if (index < 6) {
                            document.getElementById('date' + (index + 1)).innerHTML = item.dateTime;
                            document.getElementById('icon' + (index + 1)).src = 'https://openweathermap.org/img/wn/' + item.icon + '@2x.png';
                            document.getElementById('temp' + (index + 1)).innerHTML = item.temp + '°C';
                        }
                    })
                } catch (e) {
                    e.e;
                }
            }
        };
        req.open('GET', '${pageContext.request.contextPath}/weather/detailswea.do?wlat=' + wlat + '&wlon=' + wlon);
        req.send();

        let contentId = document.getElementById('contentId').innerText;
        const req2 = new XMLHttpRequest();
        req2.onload = () => {
            if (req2.status === 200) {
                try {
                    let data = JSON.parse(req2.responseText);
                    console.log(data);
                    data.forEach((item, index) => {
                        if (index < 5) {
                            document.getElementById('imageUrl1').src = item.imageUrl1;
                            document.getElementById('imageUrl2').src = item.imageUrl2;
                            document.getElementById('imageUrl3').src = item.imageUrl3;
                            document.getElementById('imageUrl4').src = item.imageUrl4;
                            document.getElementById('imageUrl5').src = item.imageUrl5;
                        }
                    })
                } catch (e) {
                    e.e;
                }
            }
        }
        req2.open('GET', '${pageContext.request.contextPath}/camping/imglist.do?contentId=' + contentId);
        req2.send();
        let mapX = document.getElementById("mapX").innerText;
        let mapY = document.getElementById("mapY").innerText;
        var container = document.getElementById('map'); //지도를 담을 영역의 DOM 레퍼런스
        var options = { //지도를 생성할 때 필요한 기본 옵션
            center: new kakao.maps.LatLng(mapY, mapX), //지도의 중심좌표.
            level: 3 //지도의 레벨(확대, 축소 정도)
        };
        var marker = new kakao.maps.Marker({
           position: new kakao.maps.LatLng(mapY, mapX)
        });

        var map = new kakao.maps.Map(container, options); //지도 생성 및 객체 리턴
        marker.setMap(map);
    }
</script>
</body>
</html>

