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
                                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse"
                                            data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                                        <span class="sr-only">Toggle navigation</span>
                                        <span class="icon-bar"></span>
                                        <span class="icon-bar"></span>
                                        <span class="icon-bar"></span>
                                    </button>
                                    <a class="navbar-brand" href="${pageContext.request.contextPath}/index.jsp#home">
                                        <img src="${pageContext.request.contextPath}/assets/images/cam_logo.png"
                                             style="width: 55px; height: 52px; position: relative"/>
                                        <img src="${pageContext.request.contextPath}/assets/images/Main-logo.png"
                                             style="width: 350px; position: absolute; left: 0; top: 0; margin-left: -20px; margin-top: -10px">
                                    </a>
                                </div>

                                <!-- Collect the nav links, forms, and other content for toggling -->

                                <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">

                                    <ul class="nav navbar-nav navbar-right">
                                        <li><a href="${pageContext.request.contextPath}/index.jsp">HOME</a></li>
                                        <li><a href="${pageContext.request.contextPath}/index.jsp">추천 관광지</a></li>
                                        <li><a href="${pageContext.request.contextPath}/camping/list.do">캠핑</a></li>
                                        <li><a href="#pricing">관광</a></li>
                                        <li><a href="#pricing">장터</a></li>
                                        <li></li>
                                        <c:if test="${empty sessionScope.loginId}">
                                            <%--                                            비로그인--%>
                                            <li><a href="${pageContext.request.contextPath}/mem/add.do">회원가입</a></li>
                                            <li><a href="${pageContext.request.contextPath}/mem/login.do">로그인</a></li>
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
                        <div id="mapX" style="display:none">${list.mapX}</div>
                        <div id="mapY" style="display:none">${list.mapY}</div><!-- 위치 -->

                        <hr style="margin-top: 25px;margin-bottom: 10px;border:none; height: 0.5px; background-color: black;">
                        <div style="display: inline-block;float: left; margin: 10px;">
                            <img src="${list.firstImageUrl}" style="display:inline-block; width:650px ; height:400px; margin-right: 30px">
                        </div>
                        <!-- 첫 번째 이미지 URL -->
                        <div>
                            <table>
                                <tr><th>주소</th><td>${list.addr1}, ${list.addr2}</td></tr>
                                <tr><th>연락처</th><td>${list.tel}</td></tr>
                                <tr><th>환경</th><td>${list.lctCl} / ${list.facltDivNm}</td></tr>
                                <tr><th>유형</th><td>${list.induty}</td></tr>
                                <tr><th>운영기간</th><td>${list.operPdCl}</td></tr>
                                <tr><th>운영일</th><td>${list.operDeCl}</td></tr>
                                <tr><th>주변 시설</th><td>${list.posbFcltyCl}</td></tr>
                                <tr><th></th><td></td></tr>
                            </table>
                            <!-- 위치 -->
                            <div style="display: flex ;justify-content: center">
                                <a href="${list.resveUrl}" style="display: inline-block; padding: 15px 45px; background-color: #1EC800; color: #ffffff; text-decoration: none; border-radius: 5px; font-weight:bold">예약하기</a>
                            </div>
                            <!-- 예약 URL -->
                            <hr  style="border:none; height: 0.5px; background-color: black;">
                        </div>
                        <details>
                            <summary><h4>▶Info</h4></summary>
                            <div style="font-size: 20px">${list.lineIntro}</div>
                            <!-- 한 줄 소개 -->
                            <div style="font-size: 20px">${list.intro}</div>
                            <!-- 상세 소개 -->
                            <div style="font-size: 20px">${list.featureNm}</div>
                            <!-- 특징명 -->
                        </details>

                        <hr style="border:none; height: 0.5px; background-color: black;">
                        <h4>▶캠핑장 시설정보</h4>
                        <table style="margin-left:auto;margin-right:auto; margin-bottom: 70px;">
                            <tr>
                                <c:forEach var="listItem" items="${split}">
                                    <c:if test="${listItem eq '전기'}">
                                        <th style="width:150px;text-align: center; vertical-align: middle;">
                                            <img src="${pageContext.request.contextPath}/img/bolt.jpg" style="width: 50px;height: 50px;">
                                        </th>
                                    </c:if>
                                </c:forEach>
                                <c:forEach var="listItem" items="${split}">
                                    <c:if test="${listItem eq '와이파이'}">
                                        <th style="width:150px;text-align: center; vertical-align: middle;">
                                            <img src="${pageContext.request.contextPath}/img/wifi.jpg" style="width: 50px;height: 50px;">
                                        </th>
                                    </c:if>
                                </c:forEach>
                                <c:forEach var="listItem" items="${split}">

                                    <c:if test="${listItem eq '장작판매'}">
                                        <th style="width:150px;text-align: center; vertical-align: middle;">
                                            <img src="${pageContext.request.contextPath}/img/fire.jpg" style="width: 75px;height: 75px;">
                                        </th>
                                    </c:if>
                                </c:forEach>
                                <c:forEach var="listItem" items="${split}">
                                    <c:if test="${listItem eq '온수'}">
                                        <th style="width:150px;text-align: center; vertical-align: middle;">
                                            <img src="${pageContext.request.contextPath}/img/boil.jpg" style="width: 75px;height: 75px;">
                                        </th>
                                    </c:if>
                                </c:forEach>
                                <c:forEach var="listItem" items="${split}">
                                    <c:if test="${listItem eq '물놀이장'}">
                                        <th style="width:150px;text-align: center; vertical-align: middle;">
                                            <img src="${pageContext.request.contextPath}/img/pool.jpg" style="width: 75px;height: 75px;">
                                        </th>
                                    </c:if>
                                </c:forEach>
                                <c:forEach var="listItem" items="${split}">
                                    <c:if test="${listItem eq '놀이터'}">
                                        <th style="width:150px;text-align: center; vertical-align: middle;">
                                            <img src="${pageContext.request.contextPath}/img/play.jpg" style="width: 75px;height: 75px;">
                                        </th>
                                    </c:if>
                                </c:forEach>
                                <c:forEach var="listItem" items="${split}">
                                    <c:if test="${listItem eq '운동시설'}">
                                        <th style="width:150px;text-align: center; vertical-align: middle;">
                                            <img src="${pageContext.request.contextPath}/img/ball.jpg" style="width: 75px;height: 75px;">
                                        </th>
                                    </c:if>
                                </c:forEach>
                                <c:forEach var="listItem" items="${split}">
                                    <c:if test="${listItem eq '마켓.편의점'}">
                                        <th style="width:150px;text-align: center; vertical-align: middle;">
                                            <img src="${pageContext.request.contextPath}/img/market.jpg" style="width: 75px;height: 75px;">
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
                                    <c:if test="${listItem eq '와이파이'}">
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

                        <h4>▶기타 주요시설</h4>
                        <hr style="border:none; height: 0.5px; background-color: black;">

                        <div  style="display: inline-block; width: 300px; height: 10px;">운영상태</div>
                        <div style="display: inline-block;">${list.manageSttus}</div>
                        <hr>

                        <c:if test="${list.gnrlSiteCo != 0}">
                            <div style="display: inline-block; width: 300px; height: 10px;">일반 캠핑장 수</div>
                            <div style="display: inline-block;">${list.gnrlSiteCo}</div>
                            <hr>
                        </c:if>

                        <c:if test="${list.autoSiteCo != 0}">
                            <div style="display: inline-block; width: 300px; height: 10px;">자동차 캠핑장 수</div>
                            <div style="display: inline-block;">${list.autoSiteCo}</div>
                            <hr>
                        </c:if>

                        <c:if test="${list.glampSiteCo != 0}">
                            <div style="display: inline-block; width: 300px; height: 10px;">글램핑장 수</div>
                            <div style="display: inline-block;">${list.glampSiteCo}</div>
                            <hr>
                        </c:if>

                        <c:if test="${list.caravSiteCo != 0}">
                            <div style="display: inline-block; width: 300px; height: 10px;">카라반 수</div>
                            <div style="display: inline-block;">${list.caravSiteCo}</div>
                            <hr>
                        </c:if>

                        <c:if test="${list.indvdlCaravSiteCo != 0}">
                            <div style="display: inline-block; width: 300px; height: 10px;">개별 카라반 수</div>
                            <div style="display: inline-block;">${list.indvdlCaravSiteCo}</div>
                            <hr>
                        </c:if>

                        <c:if test="${list.glampInnerFclty != 0}">
                            <div style="display: inline-block; width: 300px; height: 10px;">글램핑 내부시설</div>
                            <div style="display: inline-block;">${list.glampInnerFclty}</div>
                            <hr>
                        </c:if>

                        <c:if test="${list.caravInnerFclty != 0}">
                            <div style="display: inline-block; width: 300px; height: 10px;">카라반 내부시설</div>
                            <div style="display: inline-block;">${list.caravInnerFclty}</div>
                            <hr>
                        </c:if>

                        <c:if test="${list.toiletCo != 0}">
                            <div style="display: inline-block; width: 300px; height: 10px;">화장실 수</div>
                            <div style="display: inline-block;">${list.toiletCo}</div>
                            <hr>
                        </c:if>

                        <c:if test="${list.swrmCo != 0}">
                            <div style="display: inline-block; width: 300px; height: 10px;">샤워실 수</div>
                            <div style="display: inline-block;">${list.swrmCo}</div>
                            <hr>
                        </c:if>

                        <c:if test="${list.wtrplCo != 0}">
                            <div style="display: inline-block; width: 300px; height: 10px;">개수대 수</div>
                            <div style="display: inline-block;">${list.wtrplCo}</div>
                            <hr>
                        </c:if>

                        <div style="display: inline-block; width: 300px; height: 10px;">화로대</div>
                        <div style="display: inline-block;">${list.brazierCl}</div>
                        <hr>

                        <div style="display: inline-block; width: 300px; height: 10px;">체험 프로그램 여부</div>
                        <div style="display: inline-block;">${list.exprnProgrmAt}</div>
                        <hr>

                        <c:if test="${list.exprnProgrm != 0}">
                            <div style="display: inline-block; width: 300px; height: 10px;">체험 프로그램명</div>
                            <div style="display: inline-block;">${list.exprnProgrm}</div>
                            <hr>
                        </c:if>


                        <div style="display: inline-block; width: 300px; height: 10px;">반려동물 출입</div>
                        <div style="display: inline-block;">${list.animalCmgCl}</div>
                        <hr>

                        <div style="display: inline-block; width: 300px; height: 10px;">등록일</div>
                        <div style="display: inline-block;">${list.createdtime}</div>
                        <hr>

                        <div style="display: inline-block; width: 300px; height: 10px;">수정일</div>
                        <div style="display: inline-block;">${list.modifiedtime}</div>
                        <hr>

                        <div style="display: inline-block; width: 300px; height: 10px;">면적</div>
                        <div style="display: inline-block;">${list.allar}</div>
                        <hr style="border:none; height: 0.5px; background-color: black;">

                    </c:forEach>
                </div>
            </div>
        </div>
    </section>
    <!--End of home section -->
    <!-- Start of img section -->
    <section style="margin-top: 20px; margin-bottom: 20px; display: flex; justify-content: center; flex-direction: row">
        <div style="width: 200px; height: 150px;"><img id="imageUrl1" src=""></div>
        <div style="width: 200px; height: 150px;"><img id="imageUrl2" src=""></div>
        <div style="width: 200px; height: 150px;"><img id="imageUrl3" src=""></div>
        <div style="width: 200px; height: 150px;"><img id="imageUrl4" src=""></div>
        <div style="width: 200px; height: 150px;"><img id="imageUrl5" src=""></div>
    </section>
    <!--End of img section -->

    <!-- Start of weather section -->
    <section style="background-color:white; margin:auto; border-width:1px; border-style:solid;">
        <div class="weather-forecast">
            <div class="forecast-day" style="margin:auto">
                <span id="date1" style="color: black; font-size:15px; margin: auto;">날짜</span>
                <img id="icon1" src="" style="display: block; margin: auto;">
                <p class="weather" id="temp1" style="font-size:25px; margin: auto;">기온</p>
                <p class="weather" id="tempFeel1" style="font-size:25px; margin: auto;">기온</p>
                <span id="minTemp1" style="color: black;">최저온도</span><span style="color: black;">~</span><span
                    id="maxTemp1" style="color: black;">최고온도</span>
                <div id="humidity1" style="color: black;">습도</div>
            </div>
            <div class="forecast-day" style="margin:auto">
                <span id="date2" style="color: black; font-size:15px; margin: auto;">날짜</span>
                <img id="icon2" src="" style="display: block; margin: auto;">
                <p class="weather" id="temp2" style="font-size:25px; margin: auto;">기온</p>
                <p class="weather" id="tempFeel2" style="font-size:25px; margin: auto;">기온</p>
                <span id="minTemp2" style="color: black;">최저온도</span><span style="color: black;">~</span><span
                    id="maxTemp2" style="color: black;">최고온도</span>
                <div id="humidity2" style="color: black;">습도</div>
            </div>
            <div class="forecast-day" style="margin:auto">
                <span id="date3" style="color: black; font-size:15px; margin: auto;">날짜</span>
                <img id="icon3" src="" style="display: block; margin: auto;">
                <p class="weather" id="temp3" style="font-size:25px; margin: auto;">기온</p>
                <p class="weather" id="tempFeel3" style="font-size:25px ; margin: auto;">기온</p>
                <span id="minTemp3" style="color: black;">최저온도</span><span style="color: black;">~</span><span
                    id="maxTemp3" style="color: black;">최고온도</span>
                <div id="humidity3" style="color: black;">습도</div>
            </div>
            <div class="forecast-day" style="margin:auto">
                <span id="date4" style="color: black; font-size:15px; margin: auto;">날짜</span>
                <img id="icon4" src="" style="display: block; margin: auto;">
                <p class="weather" id="temp4" style="font-size:25px; margin: auto;">기온</p>
                <p class="weather" id="tempFeel4" style="font-size:25px; margin: auto;">기온</p>
                <span id="minTemp4" style="color: black;">최저온도</span><span style="color: black;">~</span><span
                    id="maxTemp4" style="color: black;">최고온도</span>
                <div id="humidity4" style="color: black;">습도</div>
            </div>
            <div class="forecast-day" style="margin:auto">
                <span id="date5" style="color: black; font-size:15px; margin: auto;">날짜</span>
                <img id="icon5" src="" style="display: block; margin: auto;">
                <p class="weather" id="temp5" style="font-size:25px; margin: auto;">기온</p>
                <p class="weather" id="tempFeel5" style="font-size:25px; margin: auto;">기온</p>
                <span id="minTemp5" style="color: black;">최저온도</span><span style="color: black;">~</span><span
                    id="maxTemp5" style="color: black;">최고온도</span>
                <div id="humidity5" style="color: black;">습도</div>
            </div>
            <div class="forecast-day" style="margin:auto">
                <span id="date6" style="color: black; font-size:15px; margin: auto;">날짜</span>
                <img id="icon6" src="" style="display: block; margin: auto;">
                <p class="weather" id="temp6" style="font-size:25px; margin: auto;">기온</p>
                <p class="weather" id="tempFeel6" style="font-size:25px; margin: auto;">기온</p>
                <span id="minTemp6" style="color: black;">최저온도</span><span style="color: black;">~</span><span
                    id="maxTemp6" style="color: black;">최고온도</span>
                <div id="humidity6" style="color: black;">습도</div>
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
                            document.getElementById('temp' + (index + 1)).innerHTML = '현재' + item.temp + '°C';
                            document.getElementById('minTemp' + (index + 1)).innerHTML = '최저' + item.minTemp + '°C';
                            document.getElementById('maxTemp' + (index + 1)).innerHTML = '최고' + item.maxTemp + '°C';
                            document.getElementById('tempFeel' + (index + 1)).innerHTML = '체감' + item.feels_like + '°C';
                            document.getElementById('humidity' + (index + 1)).innerHTML = '습도' + item.humidity + '%';
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
        req2.onload=() =>{
            if (req2.status === 200) {
                try {
                    let data = JSON.parse(req2.responseText);
                    console.log(data);
                    data.forEach((item, index) => {
                        if(index < 5){
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
    }
</script>
</body>
</html>

