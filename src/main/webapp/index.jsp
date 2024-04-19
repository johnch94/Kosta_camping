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
    <link rel="stylesheet" href="assets/css/plugins.css" />
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
                                        <li><a href="#tour">추천 관광지</a></li>
                                        <li><a href="/camping/list.do">캠핑</a></li>
                                        <li><a href="#pricing">관광</a></li>
                                        <li><a href="#pricing">장터</a></li>
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
                                            <i class="fa fa-search search-button"></i>
                                            <input type="text" class="input-box" placeholder="캠핑장 이름 검색"/>
                                        </div>
                                    </div>
                                </div>
                                <div class="single_home_slider">
                                    <div class="main_home wow fadeInUp" data-wow-duration="700ms">
                                        <h3>weather</h3>
                                        <h1>오늘날씨</h1>
                                        <div class="separator"></div>
                                        	<div class="weather-forecast">
                                          	  <div class="forecast-day">
                                                <span id="date1" style="color: white; font-size:20px margin: auto;">날짜</span>
        										<img id="icon1" src="" style="display: block; margin: auto;">
        										<p class="weather" id="temp1" style="font:40px 'Roboto', sans-serif; margin: auto;">기온</p>
       											<span id="minTemp1" style="color: white;">최저온도</span><span style="color: white;">~</span><span id="maxTemp1" style="color: white;">최고온도</span>
   											  </div>
  									  		  <div class="forecast-day">
     								   			<span id="date2" style="color: white; font-size:20px margin: auto;">날짜</span>
     								 		    <img id="icon2" src="" style="display: block; margin: auto;">
								        		<p class="weather" id="temp2" style="font:40px 'Roboto', sans-serif; margin: auto;">기온</p>
								     			<span id="minTemp2" style="color: white;">최저온도</span><span style="color: white;">~</span><span id="maxTemp2" style="color: white;">최고온도</span>
								    		  </div>
								    		  <div class="forecast-day">
								        		<span id="date3" style="color: white; font-size:20px margin: auto;">날짜</span>
								        		<img id="icon3" src="" style="display: block; margin: auto;">
								     			<p class="weather" id="temp3" style="font:40px 'Roboto', sans-serif; margin: auto;">기온</p>
								        		<span id="minTemp3" style="color: white;">최저온도</span><span style="color: white;">~</span><span id="maxTemp3" style="color: white;">최고온도</span>
								   			  </div>
								    		  <div class="forecast-day">
								        		<span id="date4" style="color: white; font-size:20px margin: auto;">날짜</span>
								       			<img id="icon4" src="" style="display: block; margin: auto;">
								 			    <p class="weather" id="temp4" style="font:40px 'Roboto', sans-serif; margin: auto;">기온</p>
								       			<span id="minTemp4" style="color: white;">최저온도</span><span style="color: white;">~</span><span id="maxTemp4" style="color: white;">최고온도</span>
								    		  </div>
								    		  <div class="forecast-day">
								        		<span id="date5" style="color: white; font-size:20px margin: auto;">날짜</span>
								        		<img id="icon5" src="" style="display: block; margin: auto;">
								   				<p class="weather" id="temp5" style="font:40px 'Roboto', sans-serif; margin: auto;">기온</p>
								       			<span id="minTemp5" style="color: white;">최저온도</span><span style="color: white;">~</span><span id="maxTemp5" style="color: white;">최고온도</span>
								   			  </div>
								    		  <div class="forecast-day">
								        		<span id="date6" style="color: white; font-size:20px margin: auto;">날짜</span>
								        		<img id="icon6" src="" style="display: block; margin: auto;">
								     			<p class="weather" id="temp6" style="font:40px 'Roboto', sans-serif; margin: auto;">기온</p>
								       		    <span id="minTemp6" style="color: white;">최저온도</span><span style="color: white;">~</span><span id="maxTemp6" style="color: white;">최고온도</span>
								              </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="single_home_slider">
                                    <div class="main_home wow fadeInUp" data-wow-duration="700ms">
                                        <h3>keyword</h3>
                                        <h1>키워드 검색</h1>
                                        <div class="separator"></div>
                                        <div class="input-area">
                                            <i class="fa fa-search search-button"></i>
                                            <input type="text" class="input-box" placeholder="키워드 검색" style="color: black"/>
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
    <div class="container" style="margin-top: 50px; margin-bottom: -30px">
        <div class="row">
            <div class="text-center">
                <h2 style="margin-bottom: 80px">추천 관광지</h2>
            </div>
        </div>
    </div>
    <div class="container" style="margin-bottom: 50px">
        <div class="col-sm-3">
            <div class="single_feature">
                <div class="flex_center" style="margin-top: 50px;">
                    <div style="width: 150px; height: 150px; background-color: black; margin-bottom: 30px"></div>
                    <h4>관광지 1</h4>
                    <div class="separator3"></div>
                    <p>Lorem Ipsum is simply dummy text of the printing and typesetting let.
                        Lorem Ipsum has been the industry.</p>
                </div>
            </div>
        </div>
        <div class="col-sm-3">
            <div class="single_feature">
                <div class="flex_center" style="margin-top: 50px;">
                    <div style="width: 150px; height: 150px; background-color: black; margin-bottom: 30px"></div>
                    <h4>관광지 1</h4>
                    <div class="separator3"></div>
                    <p>Lorem Ipsum is simply dummy text of the printing and typesetting let.
                        Lorem Ipsum has been the industry.</p>
                </div>
            </div>
        </div>
        <div class="col-sm-3">
            <div class="single_feature">
                <div class="flex_center" style="margin-top: 50px;">
                    <div style="width: 150px; height: 150px; background-color: black; margin-bottom: 30px"></div>
                    <h4>관광지 1</h4>
                    <div class="separator3"></div>
                    <p>Lorem Ipsum is simply dummy text of the printing and typesetting let.
                        Lorem Ipsum has been the industry.</p>
                </div>
            </div>
        </div>
        <div class="col-sm-3">
            <div class="single_feature">
                <div class="flex_center" style="margin-top: 50px;">
                    <div style="width: 150px; height: 150px; background-color: black; margin-bottom: 30px"></div>
                    <h4>관광지 1</h4>
                    <div class="separator3"></div>
                    <p>Lorem Ipsum is simply dummy text of the printing and typesetting let.
                        Lorem Ipsum has been the industry.</p>
                </div>
            </div>
        </div>
    </div>
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
    let wlat = '36.07221';
    let wlon = '128.53836';
    const req = new XMLHttpRequest();
    req.onload = () => {
        if (req.status === 200) {
            try {
                let data = JSON.parse(req.responseText);
                data.forEach((item, index) => {
                    if (index < 6) { 
                        document.getElementById('date'+ (index + 1)).innerHTML = item.dateTime;
                        document.getElementById('icon'+ (index + 1)).src = 'https://openweathermap.org/img/wn/' + item.icon + '@2x.png';
                        document.getElementById('temp'+ (index + 1)).innerHTML = item.temp+'°C';
                        document.getElementById('minTemp'+ (index + 1)).innerHTML = '최저'+item.minTemp+'°C';
                        document.getElementById('maxTemp'+ (index + 1)).innerHTML = '최고'+item.maxTemp+'°C';
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
</script>
</body>
</html>
