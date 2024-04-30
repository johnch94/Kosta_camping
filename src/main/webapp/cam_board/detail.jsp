<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2024-04-18
  Time: 오전 11:18
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
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/member.css">
    <!--Theme Responsive css-->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/responsive.css" />

    <script src="https://kit.fontawesome.com/de9b677ac7.js" crossorigin="anonymous"></script>
    <link href="${pageContext.request.contextPath }/assets/css/board.css" rel="stylesheet" />
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
    <section id="home_camping" class="home_board">
        <div class="overlay" style="height: 300px">
            <div class="cam_subtitle">
                <h1>장터</h1>
            </div>
        </div>
    </section>
    <!--End of title -->
    <!--home Section -->
    <section>
        <div class="container">
            <div class="detail-section">
                <div style="display: flex; justify-content: space-between; flex-direction: row">
                    <div class="detail-title"><h2>${cb.title}</h2></div>
                    <div class="actions">
                        <c:if test="${cb.writer == sessionScope.loginId }">
                            <a href="${pageContext.request.contextPath }/cam_board/edit.do?bnum=${cb.bnum }">수정</a>
                            <a href="${pageContext.request.contextPath }/cam_board/delete.do?bnum=${cb.bnum}">삭제</a>
                        </c:if>
                    </div>
                </div>
                <div class="follow" style="text-align: right">
                    <c:if test="${not empty sessionScope.loginId}">
                        <c:if test="${boo }">
                            <a href="${pageContext.request.contextPath}/cam_board/follow.do?id=${cb.writer}&bnum=${cb.bnum}">❤️</a> ${cb.fnt}
                        </c:if>
                        <c:if test="${not boo }">
                            <a href="${pageContext.request.contextPath}/cam_board/delfollow.do?id=${cb.writer}&bnum=${cb.bnum}">💪</a> ${cb.fnt}
                        </c:if>
                    </c:if>
                </div>
                <div class="detail-info">
                    <div style="display: inline-block; margin-right: 15px">Writer : ${cb.writer }</div>
                    <div style="display: inline-block; margin-right: 15px">Area : ${cb.area }</div>
                    <div style="display: inline-block; margin-right: 15px">Date: ${cb.wdate }</div>

                    <hr style="margin: 15px 1px">
                    <div style="display: inline-block; font-size: 20px"><p style="font-size: 20px; color: red; display: inline-block">Price : </p>&nbsp;${cb.price }원</div>
                    <hr style="margin: 15px 1px">
                    <div class="detail-image">
                        <c:if test="${!cb.img1.contains('null') }">
                            <img src="${cb.img1}">
                        </c:if>
                        <c:if test="${cb.img1.contains('null') }">
                            <img src="${pageContext.request.contextPath }/assets/images/coming_soon.jpg">
                        </c:if>
                        <c:if test="${!cb.img2.contains('null') }">
                            <img src="${cb.img2}">
                        </c:if>
                        <c:if test="${cb.img2.contains('null') }">
                            <img src="${pageContext.request.contextPath }/assets/images/coming_soon.jpg">
                        </c:if>
                        <c:if test="${!cb.img3.contains('null') }">
                            <img src="${cb.img3}">
                        </c:if>
                        <c:if test="${cb.img3.contains('null') }">
                            <img src="${pageContext.request.contextPath }/assets/images/coming_soon.jpg">
                        </c:if>
                    </div>
                    <hr style="margin: 15px 1px">
                    <p>&nbsp;</p>
                    <div>${cb.content }</div>
                    <p>&nbsp;</p>
                </div>
            </div>

            <div class="detail-section">
                <div class="detail-title"><h3>댓글 달기</h3></div>
                <form action="${pageContext.request.contextPath }/cam_comment/add.do" method="post">
                    <input type="hidden" value="${sessionScope.loginId }" name="writer">
                    <input type="hidden" value="${cb.bnum }" name="bnum">
                    <div>
                        <textarea name="body" style="width:100%; height:75px"></textarea>
                    </div>
                    <div style="display: flex; justify-content: flex-end"><input type="submit"></div>
                </form>
            </div>

            <div class="detail-section">
                <div class="detail-title"><h3>댓글</h3></div>
                <c:forEach var="s" items="${clist }">
                    <div class="comment" style="display: flex; justify-content: space-between">
                        <div>
                            <div class="writer">${s.writer }</div>
                            <div class="body">${s.body }</div>
                            <div class="date">${s.wdate }</div>
                        </div>
                        <div>
                            <c:if test="${s.writer eq sessionScope.loginId }">
                                <form action="${pageContext.request.contextPath }/cam_comment/del.do?cnum=${s.cnum}&bnum=${cb.bnum}" method="post">
                                    <input type="submit" value="삭제">
                                </form>
                            </c:if>
                        </div>
                    </div>
                </c:forEach>
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

</body>
</html>


