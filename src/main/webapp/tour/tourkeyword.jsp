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
    <section id="home_touring" class="home_tour">
        <div class="overlay" style="height: 300px">
            <div class="cam_subtitle">
                <h1 style="display: inline-block">"</h1>
                <h1 style="display: inline-block; color: #ff6457; text-shadow: none">${keyword}</h1>
                <h1 style="display: inline-block">"&nbsp;검색 결과</h1>
            </div>
        </div>
    </section>
    <!--End of title -->
    <!--home Section -->
    <section>
        <div class="container">
            <div class="row">
                <div class="col-sm-1"></div>
                <div class="col-sm-10" style="margin-bottom: 100px;">
                    <div class="list" style="margin-top: 50px">
<!--                       <div> -->
<%-- 			 		    <form class="tourbutton" id="tourType" action="${pageContext.request.contextPath}/tour/tourlist.do" method="POST"> --%>
<!-- 					    <input type="hidden" name="contentTypeId" id="contentTypeId"> -->
<!-- 					    <input type="hidden" name="pageNum" value="1"> -->
<!-- 					    <input type="button" value="관광지" onclick="tourid(12)"> -->
<!-- 					    <input type="button" value="문화시설" onclick="tourid(14)"> -->
<!-- 					    <input type="button" value="행사,공연,축제" onclick="tourid(15)"> -->
<!-- 					    <input type="button" value="여행코스" onclick="tourid(25)"> -->
<!-- 					    <input type="button" value="레저스포츠" onclick="tourid(28)"> -->
<!-- 					    <input type="button" value="쇼핑" onclick="tourid(38)"> -->
<!-- 					    <input type="button" value="음식점" onclick="tourid(39)"> -->
<!-- 						</form> -->
<%--  						<div id="checkType" style="display:none">${contenttypeid}</div> --%>
<!--           			  </div> -->
                        <c:if test="${not empty list}">
                            <c:forEach var="tour" items="${list}">
                                <div class="list_content">
                                    <c:if test="${not empty tour.firstimage}">
                                        <img src="${tour.firstimage}">
                                    </c:if>
                                    <c:if test="${empty tour.firstimage}">
                                        <img src="${pageContext.request.contextPath }/assets/images/coming_soon.jpg">
                                    </c:if>
                                    <div style="height: 200px">
                                        <div>
                                            <a href="${pageContext.request.contextPath}/tour/tourdetail.do?contentId=${tour.contentId}&mapX=${tour.mapX}&mapY=${tour.mapY}" style="font-size: 25px"><b>${tour.title}</b></a>
                                        </div><br>
                                        <div>🚀${tour.addr1}${tour.addr2}</div><br>
                                        <div class="myDiv">
                                            <c:if test="${tour.cat1 == 'A01'}">🏞️자연</c:if>
                                      	    <c:if test="${tour.cat1 == 'A02'}">🏞️인문(문화/예술/역사)</c:if>
                                         	<c:if test="${tour.cat1 == 'A03'}">🏞️레저스포츠</c:if>
                                         	<c:if test="${tour.cat1 == 'A04'}">🏞️쇼핑</c:if>
                                            <c:if test="${tour.cat1 == 'A05'}">🏞️음식</c:if>
                                            <c:if test="${tour.cat1 == 'C01'}">🏞️추천코스</c:if>                                                               
                                                        <div style="display:inline-block"></div>  
                                        </div>
                                        <br>
                                        <div style="font-size: 15px; word-break: break-all">            
                                               <div style="margin-top: 20px; margin-bottom: 20px"></div>
                                        </div>
                                        <br>
                                    </div>
                                </div>
                                <hr width=”100%” color=”red” noshade />
                            </c:forEach>
                            <!-- 페이지 인덱스 -->
                            <div style="text-align: center;">
                                <!-- 이전 페이지로 이동 -->
                                <input type="button" value="처음으로" onclick="previousPage(1, '${keyword}')">
                                <!-- 페이지 번호로 이동 -->
                                <c:set var="startPage" value="${pageNum - 2 }" />
                                <c:set var="endPage" value="${pageNum + 2 }" />
                                <c:if test="${startPage < 1 }">
                                    <c:set var="startPage" value="1" />
                                    <c:set var="endPage" value="5" />
                                </c:if>
                                <c:if test="${endPage > totalCount }">
                                    <c:set var="endPage" value="${totalCount }" />
                                    <c:set var="startPage" value="${totalCount - 4 }" />
                                </c:if>
                                <c:forEach var="i" begin="${startPage }" end="${endPage }">
                                    <input type="button" value="${i }" onclick="goToPage(${i} , '${keyword}')">
                                </c:forEach>
                                <!-- 다음 페이지로 이동 -->
                                <input type="button" value="마지막으로" onclick="nextPage('${totalCount}', '${keyword}')"><br/>
                                현재 페이지: ${pageNum}
                            </div>
                        </c:if>

                        <c:if test="${empty list}">
                            <p>No camping sites found.</p>
                        </c:if>
                    </div>
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
                                    <a href="https://github.com/johnch94/Kosta_touring"><i class="fa fa-github"></i></a>
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

<!-- list page js -->
<script type="text/javascript">
    let pageNum = 1;
    let keyword = '${keyword}';
    let totalCount = '${totalCount}';
    
    const previousPage = (pageNum, contentTypeId) => {

        const form = document.createElement('form');
        form.method = 'POST';
        form.action = '${pageContext.request.contextPath}/tour/keydetail.do';

        const numInput = document.createElement('input');
        numInput.type = 'hidden';
        numInput.name = 'pageNum';
        numInput.value = pageNum;
        form.appendChild(numInput);
        const contentInput = document.createElement('input');
        contentInput.type = 'hidden';
        contentInput.name = 'keyword';
        contentInput.value = keyword;
        form.appendChild(contentInput);

        document.body.appendChild(form);
        form.submit();
    }

    const nextPage = (pageNum, contentTypeId) => {

        const form = document.createElement('form');
        form.method = 'POST';
        form.action = '${pageContext.request.contextPath}/tour/keydetail.do';

        const numInput = document.createElement('input');
        numInput.type = 'hidden';
        numInput.name = 'pageNum';
        numInput.value = pageNum;
        form.appendChild(numInput);
        const contentInput = document.createElement('input');
        contentInput.type = 'hidden';
        contentInput.name = 'keyword';
        contentInput.value = keyword;
        form.appendChild(contentInput);


        document.body.appendChild(form);
        form.submit();
    }

    const goToPage = (pageNum, contentTypeId) => {
        const form = document.createElement('form');
        form.method = 'POST';
        form.action = '${pageContext.request.contextPath}/tour/keydetail.do';

        const numInput = document.createElement('input');
        numInput.type = 'hidden';
        numInput.name = 'pageNum';
        numInput.value = pageNum;
        form.appendChild(numInput);
        const contentInput = document.createElement('input');
        contentInput.type = 'hidden';
        contentInput.name = 'keyword';
        contentInput.value = keyword;
        form.appendChild(contentInput);

        document.body.appendChild(form);
        form.submit();
    }
</script>

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
<!-- <script> 
// function tourid(contentTypeId) {
//     document.getElementById('contentTypeId').value = contentTypeId;
//     document.getElementById('tourType').submit();
// }
</script> -->
</body>
</html>

