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
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7" lang=""> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8" lang=""> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9" lang=""> <![endif]-->
<!--[if gt IE 8]><!--> <html class="no-js" lang=""> <!--<![endif]-->
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <title>Bino html5 free Template</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="${pageContext.request.contextPath} assets/css/iconfont.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath} assets/css/stylesheet.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath} assets/css/font-awesome.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath} assets/css/jquery.fancybox.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath} assets/css/bootstrap.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath} assets/css/bootstrap.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath} assets/css/magnific-popup.css">
    <!--        <link rel="stylesheet" href="assets/css/bootstrap-theme.min.css">-->
    <!--For Plugins external css-->
    <link rel="stylesheet" href="${pageContext.request.contextPath} assets/css/plugins.css" />
    <!--Theme custom css -->
    <link rel="stylesheet" href="assets/css/style.css">
    <!--Theme Responsive css-->
    <link rel="stylesheet" href="assets/css/responsive.css" />

    <script src="assets/js/vendor/modernizr-2.8.3-respond-1.4.2.min.js"></script>
</head>
<body data-spy="scroll" data-target=".navbar-collapse">

<div class='preloader'><div class='loaded'>&nbsp;</div></div>
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
                                    <a class="navbar-brand" href="#home">
                                        <img src="assets/images/cam_logo.png" style="width: 55px; height: 52px"/>
                                    </a>
                                </div>

                                <!-- Collect the nav links, forms, and other content for toggling -->

                                <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">

                                    <ul class="nav navbar-nav navbar-right">
                                        <li><a href="/index.jsp">HOME</a></li>
                                        <li><a href="/index.jsp">추천 관광지</a></li>
                                        <li><a href="#portfolio">캠핑</a></li>
                                        <li><a href="#pricing">관광</a></li>
                                        <li><a href="#pricing">장터</a></li>
                                        <li></li>
                                        <c:if test="${empty sessionScope.loginId}">
                                            <%--                                            비로그인--%>
                                            <li><a href="/mem/add.do">회원가입</a></li>
                                            <li><a href="/mem/login.do">로그인</a></li>
                                        </c:if>
                                        <c:if test="${not empty sessionScope.loginId}">
                                            <%--                                            로그인--%>
                                            <li><a href="/mem/info.do">내정보 확인</a></li>
                                            <li><a href="/mem/logout.do">로그아웃</a></li>
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
                <h1>Sub Title</h1>
            </div>
        </div>
    </section>
    <!--End of title -->
    <!--home Section -->
    <section>
        <div class="container">
            <div class="row">
                <div class="col-sm-12 " style="height: 1500px">
                    <h1>Camping Information</h1>
                    <p>검색 키워드: <%= request.getAttribute("keyword") %></p>

                    <%-- 캠핑 정보 테이블 --%>
                    <table border="1">
                        <thead>
                        <tr>
                            <th>Content ID</th>
                            <th>Facility Name</th>
                            <th>Line Introduction</th>
                            <th>Introduction</th>
                            <th>Allar</th>
                            <th>Facility Division Name</th>
                            <th>Management Status</th>
                            <th>Feature Name</th>
                            <th>Industry</th>
                            <th>Location</th>
                            <th>Address</th>
                            <th>Map Coordinates</th>
                            <th>Telephone</th>
                            <th>Reservation URL</th>
                            <th>General Site Count</th>
                            <th>Auto Site Count</th>
                            <th>Glamp Site Count</th>
                            <th>Caravan Site Count</th>
                            <th>Individual Caravan Site Count</th>
                            <th>Glamp Inner Facilities</th>
                            <th>Caravan Inner Facilities</th>
                            <th>Operation Period Classification</th>
                            <th>Operation Date Classification</th>
                            <th>Toilet Count</th>
                            <th>Shower Room Count</th>
                            <th>Water Play Count</th>
                            <th>Brazier Classification</th>
                            <th>Submerged Classification</th>
                            <th>Possible Facility Classification</th>
                            <th>Experience Program At</th>
                            <th>Experience Program</th>
                            <th>Animal Coming Classification</th>
                            <th>First Image URL</th>
                            <th>Created Time</th>
                            <th>Modified Time</th>
                        </tr>
                        </thead>
                        <tbody>
                        <%-- list 속성에 담긴 캠핑 정보 출력 --%>
                        <c:forEach var="campInfo" items="${list}">
                            <tr>
                                <td>${campInfo.contentId}</td> <!-- 콘텐츠 ID -->
                                <td>${campInfo.facltNm}</td> <!-- 시설명 -->
                                <td>${campInfo.lineIntro}</td> <!-- 한 줄 소개 -->
                                <td>${campInfo.intro}</td> <!-- 상세 소개 -->
                                <td>${campInfo.allar}</td> <!-- 평점 -->
                                <td>${campInfo.facltDivNm}</td> <!-- 시설 구분명 -->
                                <td>${campInfo.manageSttus}</td> <!-- 관리 상태 -->
                                <td>${campInfo.featureNm}</td> <!-- 특징명 -->
                                <td>${campInfo.induty}</td> <!-- 업종 -->
                                <td>${campInfo.lctCl}, ${campInfo.doNm}, ${campInfo.sigunguNm}</td> <!-- 위치 -->
                                <td>${campInfo.addr1}, ${campInfo.addr2}</td> <!-- 주소 -->
                                <td>${campInfo.mapX}, ${campInfo.mapY}</td> <!-- 지도 좌표 -->
                                <td>${campInfo.tel}</td> <!-- 전화번호 -->
                                <td>${campInfo.resveUrl}</td> <!-- 예약 URL -->
                                <td>${campInfo.gnrlSiteCo}</td> <!-- 일반 캠핑장 수 -->
                                <td>${campInfo.autoSiteCo}</td> <!-- 자동차 캠핑장 수 -->
                                <td>${campInfo.glampSiteCo}</td> <!-- 글램핑장 수 -->
                                <td>${campInfo.caravSiteCo}</td> <!-- 캐러밴 수 -->
                                <td>${campInfo.indvdlCaravSiteCo}</td> <!-- 개별 캐러밴 수 -->
                                <td>${campInfo.glampInnerFclty}</td> <!-- 글램핑 내부 시설 -->
                                <td>${campInfo.caravInnerFclty}</td> <!-- 캐러밴 내부 시설 -->
                                <td>${campInfo.operPdCl}</td> <!-- 운영 기간 분류 -->
                                <td>${campInfo.operDeCl}</td> <!-- 운영 일 분류 -->
                                <td>${campInfo.toiletCo}</td> <!-- 화장실 수 -->
                                <td>${campInfo.swrmCo}</td> <!-- 샤워실 수 -->
                                <td>${campInfo.wtrplCo}</td> <!-- 물놀이 수 -->
                                <td>${campInfo.brazierCl}</td> <!-- 불씨 분류 -->
                                <td>${campInfo.sbrsCl}</td> <!-- 침수 분류 -->
                                <td>${campInfo.posbFcltyCl}</td> <!-- 가능 시설 분류 -->
                                <td>${campInfo.exprnProgrmAt}</td> <!-- 체험 프로그램 위치 -->
                                <td>${campInfo.exprnProgrm}</td> <!-- 체험 프로그램 -->
                                <td>${campInfo.animalCmgCl}</td> <!-- 동물 출몰 분류 -->
                                <td>${campInfo.firstImageUrl}</td> <!-- 첫 번째 이미지 URL -->
                                <td>${campInfo.createdtime}</td> <!-- 생성 시간 -->
                                <td>${campInfo.modifiedtime}</td> <!-- 수정 시간 -->
                            </tr>

                        </c:forEach>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </section>
    <!--End of home section -->

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
                                    <p class=" wow fadeInRight" data-wow-duration="1s">Made with <i class="fa fa-heart"></i> by <a href="http://bootstrapthemes.co">Bootstrap Themes</a>2016. All Rights Reserved</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section><!-- End off footer Section-->
</div>

<script src="assets/js/vendor/jquery-1.11.2.min.js"></script>
<script src="assets/js/vendor/bootstrap.min.js"></script>

<script src="assets/js/jquery.magnific-popup.js"></script>
<script src="assets/js/jquery.mixitup.min.js"></script>
<script src="assets/js/jquery.easing.1.3.js"></script>
<script src="assets/js/jquery.masonry.min.js"></script>

<script src="assets/js/plugins.js"></script>
<script src="assets/js/main.js"></script>

<!--slick slide js -->
<script src="assets/css/slick/slick.min.js"></script>

</body>
</html>

