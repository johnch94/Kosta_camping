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
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/iconfont.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/stylesheet.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/font-awesome.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/jquery.fancybox.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/bootstrap.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/bootstrap.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/magnific-popup.css">
    <!--        <link rel="stylesheet" href="assets/css/bootstrap-theme.min.css">-->
    <!--For Plugins external css-->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/plugins.css" />
    <!--Theme custom css -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/style.css">
    <!--Theme Responsive css-->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/responsive.css" />

    <script src="${pageContext.request.contextPath}/assets/js/vendor/modernizr-2.8.3-respond-1.4.2.min.js"></script>
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
                    <h1 style="font-style: oblique;color: #2b542c">${keyword}</h1>
                    <p>검색 키워드: <%= request.getAttribute("keyword") %></p>

                    <%-- 캠핑 정보 테이블 --%>
                        <%-- list 속성에 담긴 캠핑 정보 출력 --%>
                        <c:forEach var="list" items="${list}">

                            <div style="display: inline-block;float: left; margin: 10px;"><img  src="${list.firstImageUrl}" style="display:inline-block; vertical-align:top; width:650px ; height:400px"></div> <!-- 첫 번째 이미지 URL -->
                            <hr style="margin-top: 25px;margin-bottom: 10px;background-color:red;">
                            <div style="display: inline-block;font-size: 20px;margin-top: 5px">주소: ${list.addr1}, ${list.addr2}</div> <!-- 주소 -->
                            <hr style="margin: 10px 10px" />
                                <div style="display: inline-block;font-size: 20px">문의처: ${list.tel}</div> <!-- 전화번호 -->
                            <hr style="margin: 10px 10px;color: pink" />
                                <div style="display: inline-block;font-size: 20px">캠핑장 환경: ${list.lctCl} / ${list.facltDivNm}</div> <!-- 시설 구분명 -->
                            <hr style="margin: 10px 10px" />
                                <div style="display: inline-block;font-size: 20px">캠핑장 유형: ${list.induty}</div> <!-- 업종 -->
                            <hr style="margin: 10px 10px" />
                                <div style="display: inline-block;font-size: 20px">운영기간: ${list.operPdCl}</div> <!-- 운영 기간 분류 -->
                            <hr style="margin: 10px 10px" />
                                <div style="display: inline-block;font-size: 20px">운영일: ${list.operDeCl}</div> <!-- 운영 일 분류 -->
                            <hr style="margin: 10px 10px" />
                                <div style="display: inline-block;font-size: 20px">주변이용가능시설: ${list.posbFcltyCl}</div> <!-- 가능 시설 분류 -->
                            <hr style="margin: 10px 10px" />



                                 <div id="mapX" style="display:none">${list.mapX}</div>
                                <div id="mapY" style="display:none">${list.mapY}</div><!-- 위치 -->
                                <div><a href="${list.resveUrl}" style="display: inline-block; padding: 15px 45px; background-color: #1EC800; color: #ffffff; text-decoration: none; border-radius: 5px; font-weight:bold">예약하기</a></div> <!-- 예약 URL -->
                            <hr style="margin: 10px 10px" />
                                <div >${list.lineIntro}</div> <!-- 한 줄 소개 -->
                                <div>${list.intro}</div> <!-- 상세 소개 -->
                                <div>${list.featureNm}</div> <!-- 특징명 -->
                                <div>${list.manageSttus}</div> <!-- 운영 -->
                                <c:if test="${list.gnrlSiteCo !=0}"><div>${list.gnrlSiteCo}</div></c:if><!-- 일반 캠핑장 수 -->
                                <div>${list.autoSiteCo}</div> <!-- 자동차 캠핑장 수 -->
                                <div>${list.glampSiteCo}</div> <!-- 글램핑장 수 -->
                                <div>${list.caravSiteCo}</div> <!-- 캐러밴 수 -->
                                <div>${list.indvdlCaravSiteCo}</div> <!-- 개별 캐러밴 수 -->
                                <div>${list.glampInnerFclty}</div> <!-- 글램핑 내부 시설 -->
                                <div>${list.caravInnerFclty}</div> <!-- 캐러밴 내부 시설 -->


                                <div>${list.toiletCo}</div> <!-- 화장실 수 -->
                                <div>${list.swrmCo}</div> <!-- 샤워실 수 -->
                                <div>${list.wtrplCo}</div> <!-- 물놀이 수 -->
                                <div>${list.brazierCl}</div> <!-- 불씨 분류 -->
                                <div>
                            <c:forEach items="${list.sbrsCl}" var="item">
                                <c:if test="${item eq '전기'}">
                                ⚡️${item}
                                </c:if>
                                <c:if test="${item eq '무선인터넷' }">
                                    🛜️${item}
                                </c:if>
                                <c:if test="${item eq '장작판매' }">
                                    🪵️${item}
                                </c:if>
                                <c:if test="${item eq '온수' }">
                                    🔥️${item}
                                </c:if>
                                <c:if test="${item eq '트렘펄린' }">
                                    ${item}
                                </c:if>
                                <c:if test="${item eq '물놀이장' }">
                                    🏊${item}
                                </c:if>
                                <c:if test="${item eq '놀이터' }">
                                    🧸${item}
                                </c:if>
                                <c:if test="${item eq '운동시설' }">
                                    💪${item}
                                </c:if>
                                <c:if test="${item eq '마트.편의점' }">
                                    🏢${item}
                                </c:if>

                            </c:forEach>
                                </div>
                                <div>${list.exprnProgrmAt}</div> <!-- 체험 프로그램 위치 -->
                                <div st>${list.exprnProgrm}</div> <!-- 체험 프로그램 -->
                                <div>${list.animalCmgCl}</div> <!-- 동물 출몰 분류 -->
                                <div>${list.createdtime}</div> <!-- 생성 시간 -->
                                <div>${list.modifiedtime}</div> <!-- 수정 시간 -->

                            <div>${list.allar}</div> <!-- 면적 -->
                        </c:forEach>
                </div>
            </div>
        </div>
    </section>
    <!--End of home section -->
 <!-- Start of weather section -->
    <h1>오늘날씨</h1>
    <section style="background-color:white; margin:auto; border-width:1px; border-style:solid;">				
    								<div class="weather-forecast">
    								<div id="wlat"></div><div id="wlon"></div>
                                          	  <div class="forecast-day" style="margin:auto">
                                                <span id="date1" style="color: black; font-size:15px; margin: auto;">날짜</span>
        										<img id="icon1" src="" style="display: block; margin: auto;">
        										<p class="weather" id="temp1" style="font-size:25px; margin: auto;">기온</p>
        										<p class="weather" id="tempFeel1" style="font-size:25px; margin: auto;">기온</p>
       											<span id="minTemp1" style="color: black;">최저온도</span><span style="color: black;">~</span><span id="maxTemp1" style="color: black;">최고온도</span>
       											<div id="humidity1" style="color: black;">습도</div>
   											  </div>
  									  		  <div class="forecast-day" style="margin:auto">
     								   			<span id="date2" style="color: black; font-size:15px; margin: auto;">날짜</span>
     								 		    <img id="icon2" src="" style="display: block; margin: auto;">
								        		<p class="weather" id="temp2" style="font-size:25px; margin: auto;">기온</p>
								        		<p class="weather" id="tempFeel2" style="font-size:25px; margin: auto;">기온</p>
								     			<span id="minTemp2" style="color: black;">최저온도</span><span style="color: black;">~</span><span id="maxTemp2" style="color: black;">최고온도</span>
								    		 <div id="humidity2" style="color: black;">습도</div>
								    		  </div>
								    		  <div class="forecast-day" style="margin:auto">
								        		<span id="date3" style="color: black; font-size:15px; margin: auto;">날짜</span>
								        		<img id="icon3" src="" style="display: block; margin: auto;">
								     			<p class="weather" id="temp3" style="font-size:25px; margin: auto;">기온</p>
								     			<p class="weather" id="tempFeel3" style="font-size:25px ; margin: auto;">기온</p>
								        		<span id="minTemp3" style="color: black;">최저온도</span><span style="color: black;">~</span><span id="maxTemp3" style="color: black;">최고온도</span>
								   			<div id="humidity3" style="color: black;">습도</div>
								   			  </div>
								    		  <div class="forecast-day" style="margin:auto">
								        		<span id="date4" style="color: black; font-size:15px; margin: auto;">날짜</span>
								       			<img id="icon4" src="" style="display: block; margin: auto;">
								 			    <p class="weather" id="temp4" style="font-size:25px; margin: auto;">기온</p>
								 			    <p class="weather" id="tempFeel4" style="font-size:25px; margin: auto;">기온</p>
								       			<span id="minTemp4" style="color: black;">최저온도</span><span style="color: black;">~</span><span id="maxTemp4" style="color: black;">최고온도</span>
								    		 <div id="humidity4" style="color: black;">습도</div>
								    		  </div>
								    		<div class="forecast-day" style="margin:auto">
								        		<span id="date5" style="color: black; font-size:15px; margin: auto;">날짜</span>
								        		<img id="icon5" src="" style="display: block; margin: auto;">
								   				<p class="weather" id="temp5" style="font-size:25px; margin: auto;">기온</p>
								   				<p class="weather" id="tempFeel5" style="font-size:25px; margin: auto;">기온</p>
								       			<span id="minTemp5" style="color: black;">최저온도</span><span style="color: black;">~</span><span id="maxTemp5" style="color: black;">최고온도</span>
								   			  	<div id="humidity5" style="color: black;">습도</div>
								   			  </div>
								    		 <div class="forecast-day" style="margin:auto">
								        		<span id="date6" style="color: black; font-size:15px; margin: auto;">날짜</span>
								        		<img id="icon6" src="" style="display: block; margin: auto;">
								     			<p class="weather" id="temp6" style="font-size:25px; margin: auto;">기온</p>
								     			<p class="weather" id="tempFeel6" style="font-size:25px; margin: auto;">기온</p>
								       		    <span id="minTemp6" style="color: black;">최저온도</span><span style="color: black;">~</span><span id="maxTemp6" style="color: black;">최고온도</span>
								              	<div id="humidity6" style="color: black;">습도</div>
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
                        document.getElementById('date'+ (index + 1)).innerHTML = item.dateTime;
                        document.getElementById('icon'+ (index + 1)).src = 'https://openweathermap.org/img/wn/' + item.icon + '@2x.png';
                        document.getElementById('temp'+ (index + 1)).innerHTML = '현재'+item.temp+'°C';
                        document.getElementById('minTemp'+ (index + 1)).innerHTML = '최저'+item.minTemp+'°C';
                        document.getElementById('maxTemp'+ (index + 1)).innerHTML = '최고'+item.maxTemp+'°C';
                        document.getElementById('tempFeel'+ (index + 1)).innerHTML = '체감'+item.feels_like+'°C';
                        document.getElementById('humidity'+ (index + 1)).innerHTML = '습도'+item.humidity+'%';
                    }
                });
            } catch (e) {
               e.e;
            }
        } 
    };
    req.open('GET', '${pageContext.request.contextPath}/weather/detailswea.do?wlat=' + wlat + '&wlon=' + wlon);
    req.send();
}
</script>
</body>
</html>

