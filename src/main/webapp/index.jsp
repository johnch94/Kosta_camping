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
    <link rel="stylesheet" href="assets/css/iconfont.css">
    <link rel="stylesheet" href="assets/css/slick/slick.css">
    <link rel="stylesheet" href="assets/css/slick/slick-theme.css">
    <link rel="stylesheet" href="assets/css/stylesheet.css">
    <link rel="stylesheet" href="assets/css/font-awesome.min.css">
    <%--    <link rel="stylesheet" href="assets/css/jquery.fancybox.css">--%>
    <link rel="stylesheet" href="assets/css/bootstrap.css">
    <link rel="stylesheet" href="assets/css/bootstrap.min.css">
    <link rel="stylesheet" href="assets/css/magnific-popup.css">
    <!--        <link rel="stylesheet" href="assets/css/bootstrap-theme.min.css">-->
    <!--For Plugins external css-->
    <link rel="stylesheet" href="assets/css/plugins.css"/>
    <!--Theme custom css -->
    <link rel="stylesheet" href="assets/css/style.css">
    <!--Theme Responsive css-->
    <link rel="stylesheet" href="assets/css/responsive.css"/>
    <script src="assets/js/vendor/modernizr-2.8.3-respond-1.4.2.min.js"></script>
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
                                    <a class="navbar-brand" href="${pageContext.request.contextPath}/index.jsp">
                                        <img src="${pageContext.request.contextPath}/assets/images/cam_logo.png"
                                             style="width: 55px; height: 52px; position: relative; margin-top: -7px"/>
                                        <img src="${pageContext.request.contextPath}/assets/images/Main-logo.png"
                                             style="width: 350px; position: absolute; left: 0; top: 0; margin-left: -20px; margin-top: -10px">
                                    </a>
                                </div>

                                <!-- Collect the nav links, forms, and other content for toggling -->

                                <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">

                                    <ul class="nav navbar-nav navbar-right">
                                        <li><a href="${pageContext.request.contextPath}/index.jsp#home">HOME</a></li>
                                        <li><a href="${pageContext.request.contextPath}/index.jsp#tour">추천 관광지</a></li>
                                        <li><a href="${pageContext.request.contextPath}/camping/list.do">캠핑</a></li>
                                        <li><a href="${pageContext.request.contextPath}/tour/tourlist.do">관광</a></li>
                                        <li><a href="${pageContext.request.contextPath}/camping/listtest.do?pageNum=1">장터</a>
                                        </li>
                                        <li></li>
                                        <c:if test="${empty sessionScope.loginId}">
                                            <%--                                            비로그인--%>
                                            <li><a href="${pageContext.request.contextPath}/mem/memAdd.jsp">회원가입</a>
                                            </li>
                                            <li><a href="${pageContext.request.contextPath}/mem/memLogin.jsp">로그인</a>
                                            </li>
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

    <!--home Section -->
    <section id="home" class="home">
        <div class="overlay">
            <div class="home_skew_border">
                <div class="container">
                    <div class="row">
                        <div class="col-sm-12 ">
                            <div class="main_home_slider text-center">
                                <div class="single_home_slider">
                                    <div class="main_home wow fadeInUp" data-wow-duration="700ms">
                                        <h3>전국 캠핑장 찾아보기</h3>
                                        <h1>이름 검색</h1>
                                        <div class="separator"></div>
                                        <div class="input-area">
                                            <form action="/go/listdetail.do">
                                                <i class="fa fa-search search-button"></i>
                                                <input type="text" class="input-box" placeholder="캠핑장 이름 검색" name="kw"/>
                                            </form>
                                        </div>
                                    </div>
                                </div>
                                <div class="single_home_slider">
                                    <div class="main_home wow fadeInUp" data-wow-duration="700ms">
                                        <h3>내가 있는 곳</h3>
                                        <h1>오늘 날씨</h1>
                                        <div class="separator"></div>
                                        <div style="display: none">
                                            <div id="xxx"></div>
                                            <div>/</div>
                                            <div id="yyy"></div>
                                        </div>
                                        <div class="cam_list_info">
                                            <div style="display: flex; flex-direction: row; margin-top: 10px">
                                                <div class="forecast-day">
                                                    <span id="date1">날짜</span>
                                                    <img id="icon1" src="">
                                                    <p id="temp1">기온</p>
                                                </div>
                                                <div class="forecast-day">
                                                    <span id="date2">날짜</span>
                                                    <img id="icon2" src="">
                                                    <p id="temp2">기온</p>
                                                </div>
                                                <div class="forecast-day">
                                                    <span id="date3">날짜</span>
                                                    <img id="icon3" src="">
                                                    <p id="temp3">기온</p>
                                                </div>
                                            </div>
                                            <div style="display: flex; flex-direction: row; margin-top: 10px">
                                                <div class="forecast-day">
                                                    <span id="date4">날짜</span>
                                                    <img id="icon4" src="">
                                                    <p id="temp4">기온</p>
                                                </div>
                                                <div class="forecast-day">
                                                    <span id="date5">날짜</span>
                                                    <img id="icon5" src="">
                                                    <p id="temp5">기온</p>
                                                </div>
                                                <div class="forecast-day">
                                                    <span id="date6">날짜</span>
                                                    <img id="icon6" src="">
                                                    <p id="temp6">기온</p>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="single_home_slider">
                                    <div class="main_home wow fadeInUp" data-wow-duration="700ms">
                                        <h3>#강릉 #여름 #바다</h3>
                                        <div>
                                            <h1 style="display: inline-block; color: #fc4b35">키워드</h1>
                                            <h1 style="display: inline-block">&nbsp;검색</h1>
                                        </div>
                                        <div class="separator"></div>
                                        <div class="input-area">
                                            <form action="${pageContext.request.contextPath }/go/list.do">
                                                <i class="fa fa-search search-button"></i>
                                                <input type="text" class="input-box" placeholder="키워드 검색" name="kw"/>
                                            </form>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!--End of home section -->
    <!--tour section-->
    <section id="tour">
        <div class="container" style="margin-top: 100px; margin-bottom: -30px">
            <div class="row">
                <div class="text-center">
                    <h2 style="margin-bottom: 80px">추천 관광지</h2>
                </div>
            </div>
        </div>
        <div class="container" style="margin-bottom: 50px">
            <div class="index_tour">
                <div class="col-sm-3">
                    <div class="single_feature">
                        <div class="flex_center" style="margin-top: 50px;">
                            <div id="contentid1" style="display:none"></div>
                            <div id="mapX1" style="display:none"></div>
                            <div id="mapY1" style="display:none"></div>
                            <a id="href1" href=""><img id="recomimg1" src="" style=""></a>
                            <h4 id="recomtitle1">관광지 1</h4>
                            <div class="separator3"></div>
                            <p id="recomcat1"></p>
                        </div>
                    </div>
                </div>
                <div class="col-sm-3">
                    <div class="single_feature">
                        <div class="flex_center" style="margin-top: 50px;">
                            <div id="contentid2" style="display:none"></div>
                            <div id="mapX2" style="display:none"></div>
                            <div id="mapY2" style="display:none"></div>
                            <a id="href2" href=""><img id="recomimg2" src=""></a>
                            <h4 id="recomtitle2">관광지 1</h4>
                            <div class="separator3"></div>
                            <p id="recomcat2"></p>
                        </div>
                    </div>
                </div>
                <div class="col-sm-3">
                    <div class="single_feature">
                        <div class="flex_center" style="margin-top: 50px;">
                            <div id="contentid3" style="display:none"></div>
                            <div id="mapX3" style="display:none"></div>
                            <div id="mapY3" style="display:none"></div>
                            <a id="href3" href=""><img id="recomimg3" src=""></a>
                            <h4 id="recomtitle3">관광지 1</h4>
                            <div class="separator3"></div>
                            <p id="recomcat3"></p>
                        </div>
                    </div>
                </div>
                <div class="col-sm-3">
                    <div class="single_feature">
                        <div class="flex_center" style="margin-top: 50px;">
                            <div id="contentid4" style="display:none"></div>
                            <div id="mapX4" style="display:none"></div>
                            <div id="mapY4" style="display:none"></div>
                            <a id="href4" href=""><img id="recomimg4" src=""></a>
                            <h4 id="recomtitle4">관광지 1</h4>
                            <div class="separator3"></div>
                            <p id="recomcat4"></p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!--End of tour section-->
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

<!-- START SCROLL TO TOP  -->

<div class="scrollup">
    <a href="#"><i class="fa fa-chevron-up"></i></a>
</div>

<script src="assets/js/vendor/jquery-1.11.2.min.js"></script>
<script src="assets/js/vendor/bootstrap.min.js"></script>

<script src="assets/js/jquery.magnific-popup.js"></script>
<script src="assets/js/jquery.mixitup.min.js"></script>
<script src="assets/js/jquery.easing.1.3.js"></script>
<script src="assets/js/jquery.masonry.min.js"></script>

<!--slick slide js -->
<script src="assets/css/slick/slick.js"></script>
<script src="assets/css/slick/slick.min.js"></script>


<script src="assets/js/plugins.js"></script>
<script src="assets/js/main.js"></script>

<script src="https://kit.fontawesome.com/2c827c8cca.js" crossorigin="anonymous"></script>
<!-- 날씨 script -->

<script type="text/javascript">
    window.onload = () => {
        navigator.geolocation.getCurrentPosition(function (position) {
            var testX = position.coords.latitude,
                testY = position.coords.longitude;
            var X = testX.toString().substring(0, 9),
                Y = testY.toString().substring(0, 9);
            var wlon = parseFloat(Y);
            var wlat = parseFloat(X);
            weather(wlat, wlon);
        });

        const weather = (xxx, yyy) => {
            let id = '12';
            let pageNum = '4';
            const req2 = new XMLHttpRequest();
            req2.onload = () => {
                if (req2.status === 200) {
                    try {
                        let data = JSON.parse(req2.responseText);
                        data.forEach((item, index) => {
                            if (index < 1) {
                                document.getElementById('recomtitle1').innerHTML = item.title;
                                document.getElementById('recomimg1').src = item.firstimage;
                                document.getElementById('recomcat1').innerHTML = item.cat1;
                                document.getElementById('href1').href = '${pageContext.request.contextPath}/tour/tourdetail.do?contentId=' + item.contentid + '&mapX=' + item.mapX + '&mapY=' + item.mapY;
                                cosole.log(item.contentid)
                            }
                        });
                    } catch (e) {
                        e.e;
                    }
                }
            };
            req2.open('GET', '${pageContext.request.contextPath}/tour/recomtour.do?id=' + id + '&pageNum=' + pageNum);
            req2.send();

            let id2 = '14';
            let pageNum2 = '2200';
            const req3 = new XMLHttpRequest();
            req3.onload = () => {
                if (req3.status === 200) {
                    try {
                        let data = JSON.parse(req3.responseText);
                        data.forEach((item, index) => {
                            if (index < 1) {
                                document.getElementById('recomtitle2').innerHTML = item.title;
                                document.getElementById('recomimg2').src = item.firstimage;
                                document.getElementById('recomcat2').innerHTML = item.cat1;
                                document.getElementById('href2').href = '${pageContext.request.contextPath}/tour/tourdetail.do?contentId=' + item.contentid + '&mapX=' + item.mapX + '&mapY=' + item.mapY;
                            }
                        });
                    } catch (e) {
                        e.e;
                    }
                }
            };
            req3.open('GET', '${pageContext.request.contextPath}/tour/recomtour.do?id=' + id2 + '&pageNum=' + pageNum2);
            req3.send();

            let id3 = '15';
            let pageNum3 = '9';
            const req4 = new XMLHttpRequest();
            req4.onload = () => {
                if (req4.status === 200) {
                    try {
                        let data = JSON.parse(req4.responseText);
                        data.forEach((item, index) => {
                            if (index < 1) {
                                document.getElementById('recomtitle3').innerHTML = item.title;
                                document.getElementById('recomimg3').src = item.firstimage;
                                document.getElementById('recomcat3').innerHTML = item.cat1;
                                document.getElementById('href3').href = '${pageContext.request.contextPath}/tour/tourdetail.do?contentId=' + item.contentid + '&mapX=' + item.mapX + '&mapY=' + item.mapY;
                            }
                        });
                    } catch (e) {
                        e.e;
                    }
                }
            };
            req4.open('GET', '${pageContext.request.contextPath}/tour/recomtour.do?id=' + id3 + '&pageNum=' + pageNum3);
            req4.send();


            let id4 = '12';
            let pageNum4 = '167';
            const req5 = new XMLHttpRequest();
            req5.onload = () => {
                if (req5.status === 200) {
                    try {
                        let data = JSON.parse(req5.responseText);
                        data.forEach((item, index) => {
                            if (index < 1) {
                                document.getElementById('recomtitle4').innerHTML = item.title;
                                document.getElementById('recomimg4').src = item.firstimage;
                                document.getElementById('recomcat4').innerHTML = item.cat1;
                                document.getElementById('href4').href = '${pageContext.request.contextPath}/tour/tourdetail.do?contentId=' + item.contentid + '&mapX=' + item.mapX + '&mapY=' + item.mapY;
                            }
                        });
                    } catch (e) {
                        e.e;
                    }
                }
            };
            req5.open('GET', '${pageContext.request.contextPath}/tour/recomtour.do?id=' + id4 + '&pageNum=' + pageNum4);
            req5.send();
            var wlat = xxx;
            var wlon = yyy;
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
                        });
                    } catch (e) {
                        e.e;
                    }
                }
            };
            req.open('GET', '${pageContext.request.contextPath}/weather/listwea.do?wlat=' + wlat + '&wlon=' + wlon);
            req.send();
        }
    }

</script>
</body>
</html>
