<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>Shop Homepage - Start Bootstrap Template</title>
        <!-- Favicon-->
        <link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
        <!-- Bootstrap icons-->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css" rel="stylesheet" />
        <!-- Core theme CSS (includes Bootstrap)-->
        <link href="${pageContext.request.contextPath }/assets/css/board.css" rel="stylesheet" />
    </head>
    <body>
        <!-- Header-->
        <header class="bg-dark py-5">
            <div class="container px-4 px-lg-5 my-5">
                <div class="text-center text-white">
                    <h1 class="display-4 fw-bolder">Camp-Market</h1>
                    <div style="margin-top: 50px;">
						<button class="btn btn-secondary" onclick="location.href='${pageContext.request.contextPath }/cam_board/add.do'">게시글 작성</button>
					</div>
                </div>
            </div>
        </header>
        <!-- Section-->
        <section class="py-5">
            <div class="container px-4 px-lg-5 mt-5">
                <div class="row gx-4 gx-lg-5 row-cols-2 row-cols-md-3 row-cols-xl-4 justify-content-start">
                    
                    <c:forEach var="s" items="${list}">
	                   	 <div class="col mb-5">
	                        <div class="card h-100">
	                            <!-- Product image-->
	                            <img class="card-img-top" src="${s.img1 }" alt="..." />
	                            <!-- Product details-->
	                            <div class="card-body p-4">
	                                <div class="text-center">
	                                    <!-- Product name-->
	                                    <h5 class="fw-bolder">${s.title}</h5>
	                                    <!-- Product price-->
	                                    $${s.price}
	                                </div>
	                            </div>
	                            <!-- Product actions-->
	                            <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
	                                <div class="text-center">
	                                	<a class="btn btn-outline-dark mt-auto" href="${pageContext.request.contextPath }//cam_board/detail.do?bnum=${s.bnum}">상세보기</a>
	                                </div>
	                            </div>
							</div>
						</div>
                    </c:forEach>
					
					<div style="text-align: center;">
							<!-- 이전 페이지로 이동 -->
							<input type="button" value="처음으로" onclick="previousPage(1)">
							 <!-- 페이지 번호로 이동 -->
							<c:set var="startPage" value="${pageNum - 2 }" />
							<c:set var="endPage" value="${pageNum + 2 }" />
							<c:if test="${startPage < 1 }">
								<c:set var="startPage" value="1" />
								<c:set var="endPage" value="5" />
							</c:if>
							<c:if test="${endPage > totalPage }">
								<c:set var="endPage" value="${totalPage }" />
								<c:set var="startPage" value="${totalPage - 4 }" />
							</c:if>
							<c:forEach var="i" begin="1" end="${endPage }">
								<input type="button" value="${i }" onclick="goToPage(${i})">
							</c:forEach>
							<!-- 다음 페이지로 이동 -->
							<input type="button" value="마지막으로" onclick="nextPage('${totalPage}')"><br/>	
							현재 페이지: ${pageNum}
						</div>
					
                </div>
            </div>
        </section>
        <!-- Footer-->
        <footer class="py-5 bg-dark">
            <div class="container">
            	<p class="m-0 text-center text-white">Copyright &copy; Your Website 2023</p>
            </div>
        </footer>
        <!-- Bootstrap core JS-->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
        <!-- Core theme JS -->
        <script src="js/scripts.js"></script>
        <script type="text/javascript">
			let pageNum = 1;
			
			const previousPage = (pageNum) => {
				
			   	const form = document.createElement('form');
			    form.method = 'POST';
			    form.action = '${pageContext.request.contextPath}//cam_board/list.do';
			    
			    const numInput = document.createElement('input');
			    numInput.type = 'hidden';
			    numInput.name = 'pageNum';
			    numInput.value = pageNum;
			    form.appendChild(numInput);    
			    
			    document.body.appendChild(form);
			    form.submit();
			}
			
			const nextPage = (pageNum) => {
			    
			    const form = document.createElement('form');
			    form.method = 'POST';
			    form.action = '${pageContext.request.contextPath}/cam_board/list.do';
			    
			    const numInput = document.createElement('input');
			    numInput.type = 'hidden';
			    numInput.name = 'pageNum';
			    numInput.value = pageNum;
			    form.appendChild(numInput);
			    
			    document.body.appendChild(form);
			    form.submit();
			}
			
			const goToPage = (pageNum) => {
				const form = document.createElement('form');
			    form.method = 'POST';
			    form.action = '${pageContext.request.contextPath}/cam_board/list.do';
			    
			    const numInput = document.createElement('input');
			    numInput.type = 'hidden';
			    numInput.name = 'pageNum';
			    numInput.value = pageNum;
			    form.appendChild(numInput);
			    
			    document.body.appendChild(form);
			    form.submit();
			}
		</script>
    </body>
</html>
