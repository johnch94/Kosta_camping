<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2024-04-17
  Time: 오후 4:43
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
    <!-- kakao map api -->
    <script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=fbe64bacc6adfc8c04f2abe21ed24a86"></script>

    <!-- kakao map api js -->
    <script type="text/javascript">
        var container = document.getElementById('map'); //지도를 담을 영역의 DOM 레퍼런스
        var options = { //지도를 생성할 때 필요한 기본 옵션
            
            center: new kakao.maps.LatLng(33.450701, 126.570667), //지도의 중심좌표.
            level: 3 //지도의 레벨(확대, 축소 정도)
        };

        var map = new kakao.maps.Map(container, options); //지도 생성 및 객체 리턴
    </script>
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
                    <div id="map" style="width: 500px; height: 400px;"></div>
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
