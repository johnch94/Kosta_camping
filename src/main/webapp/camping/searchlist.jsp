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
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/plugins.css" />
    <!--Theme custom css -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/style.css">
    <!--Theme Responsive css-->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/responsive.css" />

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
                                        <li><a href="${pageContext.request.contextPath}/index.jsp">HOME</a></li>
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
    <!-- title section -->
    <section id="home" class="home_mem">
        <div class="overlay" style="height: 300px">
            <div class="cam_subtitle">
                <h1 style="display: inline-block">"</h1>
                <h1 style="display: inline-block; color: #ff6457; text-shadow: none">${keyword}</h1>
                <h1 style="display: inline-block">"&nbsp;검색 결과</h1>
            </div>
        </div>
    </section>
    <!-- End of title section -->
    <!-- search section -->
    <section>
        <div class="container">
            <div class="input-area">
                <form action="${pageContext.request.contextPath}/go/list.do">
                    <i class="fa fa-search search-button" style="padding-top: 15px; padding-left: 15px"></i>
                    <input type="text" id="searchInput" name="kw" class="input-box" placeholder="키워드 검색" style="border-color: #e74c3c;">
                </form>
            </div>
            <hr>
        </div>
    </section>
    <!-- End of search section -->
    <!--home Section -->
    <section>
        <div class="container">
            <div class="row">
                <div class="col-sm-12">
                    <div class="list" style="margin-bottom: 50px">
                        <div style="display: flex; justify-content: space-between">
                            <div><h2>캠핑장</h2></div>
                            <div style="padding-top: 20px"><a href="${pageContext.request.contextPath}/go/listdetail.do?kw=${keyword}">더보기...</a></div>
                        </div>
                        <hr style="border:0; height:1px; background: #000; margin-top: 0px">

                        <div style="margin-bottom: 50px">
                            <c:forEach var="camp" items="${list}">
                                <div class="list_content">
                                    <c:if test="${not empty camp.firstImageUrl}">
                                        <img src="${camp.firstImageUrl}">
                                    </c:if>
                                    <c:if test="${empty camp.firstImageUrl}">
                                        <img src="${pageContext.request.contextPath }/assets/images/coming_soon.jpg" style="width: 275px">
                                    </c:if>
                                    <div style="height: 200px">
                                        <div>
                                            <a href="${pageContext.request.contextPath}/go/info.do?kw=${camp.facltNm}&id=${camp.contentId}" style="font-size: 25px"><b>${camp.facltNm}</b></a>
                                        </div><br>
                                        <div>🚀${camp.addr1} ${camp.addr2}</div><br>
                                        <div class="myDiv">
                                            🏞️${camp.lineIntro}
                                            <c:if test="${empty camp.lineIntro}">
                                                ${camp.intro}
                                                <c:if test="${empty camp.intro}">
                                                    ${camp.featureNm}
                                                    <c:if test="${empty camp.featureNm }">
                                                        <div style="display:inline-block;height: 90px">...</div>
                                                    </c:if>
                                                </c:if>
                                            </c:if>
                                        </div>
                                        <br>
                                        <div style="font-size: 15px; word-break: break-all">🛸${camp.sbrsCl}
                                            <c:if test="${empty camp.sbrsCl }">
                                                <div style="margin-top: 20px; margin-bottom: 20px">...</div>
                                            </c:if>
                                        </div>
                                        <br>
                                    </div>
                                </div>
                                <hr width=”500px” color=”black” noshade/>
                            </c:forEach>
                        </div>
                        <div>
                            <div style="display: flex; justify-content: space-between">
                                <div><h2>관광지</h2></div>
                                <div style="padding-top: 20px"><a href="${pageContext.request.contextPath}/tour/keydetail.do?keyword=${keyword}">더보기...</a></div>
                            </div>
                            <hr style="border:0; height:1px; background: #000; margin-top: 0px">

                            <div id="mapX1" style="display:none"></div>
                            <div id="mapY1" style="display:none"></div>
                            <div id="id1" style="display:none"></div>
                            <div class="list_content">
                                <div>
                                    <img id="tourim1" src="">
                                </div>
                                <div style="height: 200px">
                                    <div>
                                        <a id="totitle1" href="" style="font-size: 25px; font-weight: bold"></a>
                                    </div><br>
                                    <div style="display: inline-block">🚀<div id="addr1" style="display: inline-block"></div></div>
                                    <div>
                                        <br>
                                        <div id="cat1">...</div>
                                    </div>
                                </div>
                            </div>

                            <hr width=”500px” color=”black” noshade/>

                            <div id="mapX2" style="display:none"></div>
                            <div id="mapY2" style="display:none"></div>
                            <div id="id2" style="display:none"></div>
                            <div class="list_content">
                                <div>
                                    <img id="tourim2" src="">
                                </div>
                                <div style="height: 200px">
                                    <div>
                                        <a id="totitle2" href="" style="font-size: 25px; font-weight: bold"></a>
                                    </div><br>
                                    <div style="display: inline-block">🚀<div id="addr2" style="display: inline-block"></div></div>
                                    <div>
                                        <br>
                                        <div id="cat2">...</div>
                                    </div>
                                </div>
                            </div>

                            <hr width=”500px” color=”black” noshade/>

                            <div id="mapX3" style="display:none"></div>
                            <div id="mapY3" style="display:none"></div>
                            <div id="id3" style="display:none"></div>
                            <div class="list_content">
                                <div>
                                    <img id="tourim3" src="">
                                </div>
                                <div style="height: 200px">
                                    <div>
                                        <a id="totitle3" href="" style="font-size: 25px; font-weight: bold"></a>
                                    </div><br>
                                    <div style="display: inline-block">🚀<div id="addr3" style="display: inline-block"></div></div>
                                    <div>
                                        <br>
                                        <div id="cat3">...</div>
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

<script src="${pageContext.request.contextPath }/assets/js/vendor/jquery-1.11.2.min.js"></script>
<script src="${pageContext.request.contextPath }/assets/js/vendor/bootstrap.min.js"></script>

<script src="${pageContext.request.contextPath }/assets/js/jquery.magnific-popup.js"></script>
<script src="${pageContext.request.contextPath }/assets/js/jquery.mixitup.min.js"></script>
<script src="${pageContext.request.contextPath }/assets/js/jquery.easing.1.3.js"></script>
<script src="${pageContext.request.contextPath }/assets/js/jquery.masonry.min.js"></script>

<script src="${pageContext.request.contextPath }/assets/js/plugins.js"></script>
<script src="${pageContext.request.contextPath }/assets/js/main.js"></script>

<!--slick slide js -->
<script src="${pageContext.request.contextPath}/assets/css/slick/slick.min.js"></script>

<script type="text/javascript">
    let pageNum = 1;
    let totalPages = ${totalPages};
    let keyword = '${keyword}';
    let num = ${pageNum};
    let currentPage = ${num}; // 현재 페이지 번호를 저장할 변수
    const previousPage = (num) => {

        const form = document.createElement('form');
        form.method = 'POST';
        form.action = '${pageContext.request.contextPath}/go/list.do?rows=3';

        const numInput = document.createElement('input');
        numInput.type = 'hidden';
        numInput.name = 'num';
        numInput.value = 1;
        form.appendChild(numInput);

        const keywordInput = document.createElement('input');
        keywordInput.type = 'hidden';
        keywordInput.name = 'kw';
        keywordInput.value = keyword;
        form.appendChild(keywordInput);

        document.body.appendChild(form);
        form.submit();
    }

    const nextPage = (num) => {

        const form = document.createElement('form');
        form.method = 'POST';
        form.action = '${pageContext.request.contextPath}/go/list.do?rows=3';

        const numInput = document.createElement('input');
        numInput.type = 'hidden';
        numInput.name = 'num';
        numInput.value = totalPages;
        form.appendChild(numInput);

        const keywordInput = document.createElement('input');
        keywordInput.type = 'hidden';
        keywordInput.name = 'kw';
        keywordInput.value = keyword;
        form.appendChild(keywordInput);

        document.body.appendChild(form);
        form.submit();
    }

    const goToPage = (num) => {
        const form = document.createElement('form');
        form.method = 'POST';
        form.action = '${pageContext.request.contextPath}/go/list.do?row=3';

        const numInput = document.createElement('input');
        numInput.type = 'hidden';
        numInput.name = 'num';
        numInput.value = num;
        form.appendChild(numInput);

        const keywordInput = document.createElement('input');
        keywordInput.type = 'hidden';
        keywordInput.name = 'kw';
        keywordInput.value = keyword;
        form.appendChild(keywordInput);

        document.body.appendChild(form);
        form.submit();
    }
</script>
<script type="text/javascript">
    window.onload = () => {
        let keyword = '${keyword}';
        const req = new XMLHttpRequest();
        req.onload = () => {
            if (req.status === 200) {
                try {
                    let data = JSON.parse(req.responseText);
                    data.forEach((item, index) => {
                        if (index < 3) {
                            if (item.imgs !== "") {
                                document.getElementById('tourim' + (index + 1)).src = item.tourl;
                            } else {

                                document.getElementById('tourim' + (index + 1)).src = "${pageContext.request.contextPath }/assets/images/coming_soon.jpg";
                            }

                            let id = item.id;
                            let mapX = item.mapY;
                            let mapY = item.mapX;
                            document.getElementById('addr' + (index + 1)).innerHTML = item.addr1 + item.addr2;
                            document.getElementById('totitle' + (index + 1)).innerHTML = '' + item.totitle;
                            document.getElementById('totitle' + (index + 1)).href = "${pageContext.request.contextPath}/tour/tourdetail.do?contentId=" + id + "&mapX=" + mapY + "&mapY=" + mapX;
                            let catE = document.getElementById('cat' + (index + 1));
                            switch (item.cat1) {
                                case 'A01':
                                    catE.innerHTML = "🏞️자연";
                                    break;
                                case 'A02':
                                    catE.innerHTML = "🏞️인문(문화/예술/역사)";
                                    break;
                                case 'A03':
                                    catE.innerHTML = "🏞️레저스포츠";
                                    break;
                                case 'A04':
                                    catE.innerHTML = "🏞️쇼핑";
                                    break;
                                case 'A05':
                                    catE.innerHTML = "🏞️음식";
                                    break;
                                case 'C01':
                                    catE.innerHTML = "🏞️추천코스";
                                    break;
                            }
                        }
                    });
                } catch (e) {
                    console.error(e);
                }
            }
        };
        req.open('GET', '${pageContext.request.contextPath}/tour/tourkeyword.do?keyword=' + keyword);
        req.send();
    };
</script>
</body>
</html>




