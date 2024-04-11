<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"  %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html>
<html lang="en">

<head>
    <!-- Meta -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="MiOne - Minimal Landing Page Theme">
    <meta name="author" content="kingstudio.ro">
    <!-- Favicon -->
    <!-- Site Title -->
    <!-- Bootstrap 5 Core CSS -->
    <link href="assets/css/bootstrap.min.css" rel="stylesheet">
    <!-- Custom Styles -->
    <link rel="stylesheet" href="<c:url value="/css/animate.min.css"/>">
    <link rel="stylesheet" href="<c:url value="/css/aos.css"/>">
    <link rel="stylesheet" href="<c:url value="/css/style.css"/>">
    <!-- Fonts -->
    <link rel="stylesheet" href="<c:url value="/css/fontawesome-all.min.css"/>" type="text/css">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
    
</head>
<style>
.nav-link {
	color: black; /* 글씨 색을 검정색으로 변경 */
	font-weight: bold; /* 글씨를 진하게 */
	font-size: 1.5em; /* 기본 글씨 크기보다 조금 크게 */
}

.proType {
	text-align: right;
}

.searchBar {
	position: relative;
	width: 300px;
}

#ottBar {
	color: white;
}

.container {
	background-color: #gray;
}

#searchBtn {
	width: 5px;
	height: 5px;
}

@media ( max-width : 768px) { /* 필요에 따라 max-width 조정 */
	
.navbar-nav.ml-auto {
		flex-direction: row !important; /* 항목들을 가로로 유지 */
		background-color: transparent !important; /* 원하는 색상으로 설정 */
	}
	.navbar-nav .nav-item {
		display: inline-block; /* 항목들을 인라인으로 표시 */
	}
	.search-container {
		display: flex; /* 플렉스박스 컨테이너로 지정 */
		justify-content: center; /* 항목들을 가운데 정렬 */
		align-items: center; /* 항목들을 수직 방향으로 가운데 정렬 */
		width: 100%; /* 컨테이너 너비를 100%로 설정 */
		max-width: 600px; /* 최대 너비 설정 */
		margin: 0 auto; /* 컨테이너를 페이지 중앙에 위치시킴 */
	}
	.searchBar {
		flex-grow: 1; /* 입력 필드가 남은 공간을 모두 차지하도록 설정 */
		margin-right: 10px; /* 버튼과의 간격 */
	}
	button {
		flex-shrink: 0; /* 버튼 크기가 줄어들지 않도록 설정 */
	}
	/* 슬라이드 컨테이너의 높이 조정 */
	.carousel-inner {
		height: 200px; /* 원하는 높이로 설정 */
	}
	


</style>
<body>
<div id="loader-wrapper">
		<div id="loader"></div>
		<div class="loader-section section-left"></div>
		<div class="loader-section section-right"></div>
	</div>

	<div id="#top"></div>


	<div id="imageCarousel" class="carousel slide" data-ride="carousel">
		<ol class="carousel-indicators">
			<li data-target="#imageCarousel" data-slide-to="0" class="active"></li>
			<li data-target="#imageCarousel" data-slide-to="1"></li>
			<li data-target="#imageCarousel" data-slide-to="2"></li>
		</ol>
		<div class="carousel-inner">
			<div class="carousel-item active" style="height: 500px;">
				<img class="d-block w-100" src="<c:url value="/images/ott_white.jpg"/>"
					alt="First slide" >
			</div>
			<div class="carousel-item"  style="height: 500px;">
				<img class="d-block w-100" src="<c:url value="/images/ott_white.jpg"/>"
					alt="Second slide" >
			</div>
			<header class="fh p-0 v-center bg-im g jarallax" data-jarallax
				data-speed="0.8" style="background-image: url();">
				<div class="container">
					<nav id="ottBar"
						class="navbar navbar-expand-lg navbar-light mobile-white-nav absolute top-0 left-0 right-0">
						<div class="container">
							<div class="text-center"
								style="padding-top: 20px; margin: 0 auto;">
								<!-- 상단 패딩 추가 -->
=
								<ul class="navbar-nav ml-auto">
								    <%--<li class="nav-item ottButton" data-ott-no="25" id="ottButton"><a class="nav-link">넷플릭스</a></li> --%>
								    <li class="nav-item ottButton" data-ott-no="25" id="ottButton"><button onclick="" class="nav-link">넷플릭스</button></li>
								    <li class="nav-item ottButton" data-ott-no="24" id="ottButton"><button class="nav-link">왓챠</button></li>
								    <li class="nav-item ottButton" data-ott-no="23" id="ottButton"><button class="nav-link">디즈니플러스</button></li>
								    <li class="nav-item ottButton" data-ott-no="21" id="ottButton"><button class="nav-link">웨이브</button></li>
								    <li class="nav-item ottButton" data-ott-no="22" id="ottButton"><button class="nav-link">티빙</button></li>
								</ul>

							</div>
							<ul class="navbar-button p-0 m-0 ml-30">
								<li class="nav-item"></li>
							</ul>
						</div>
					</nav>

					
					

					<div class="row v-center">
						<div class="col-lg-7 tablet-lg-top-45">
							<img src="<c:url value="/images/ott.jpg"/>" alt=""
								class="z-index-2 relative rellax w-90 tablet-lg-hidden"
								data-rellax-speed="2" data-rellax-percentage="0.5">
						</div>
						<!-- / column -->

						<div class="col-lg-5 z-index-1">
							<h6 class="fs-18 text-primary">어떤걸 볼까?</h6>
							<h2 class="page-title" style="font-size: 2.2em">위티들의 생생한
								후기!!</h2>
							<p class="header-text fw-regular fs-16">
								무엇을 봐야할지 망설여지신다구요? <br>지금'위티'들의 리뷰를 확인하세요!!
							</p>
							<a href="#features" class="btn btn-dark pill mr-5"><i
								class="fas fa-cog mr-5"></i> <span>당장 위티 참여!</span></a>
						</div>
					</div>
				</div>
			</header>
			</div>
					

		</div>
		<a class="carousel-control-prev" href="#imageCarousel" role="button"
			data-slide="prev"> <span class="carousel-control-prev-icon"
			aria-hidden="true"></span> <span class="sr-only">Previous</span>
		</a> <a class="carousel-control-next" href="#imageCarousel" role="button"
			data-slide="next"> <span class="carousel-control-next-icon"
			aria-hidden="true"></span> <span class="sr-only">Next</span>
		</a>
	</div>



	<div class="main-container p-0">

		<section id="landings" class="lg">
			<div class="container">
				<div class="spacer-line border-primary mb-15">&nbsp;</div>
				<div class="text-center" id="middleBar">
					<h2 class="section-title mb-15" data-aos="fade-down">인기 있는 방송
						한눈에 보기!</h2>
					<div class="search-container" data-aos="fade-in"
						data-aos-delay="100">
						<input type="text" class="searchBar" placeholder="프로그램 검색">
						<button type="button">검색</button>
					</div>
				</div>

				<div class="proType" style="margin-top: 50px;">
					<p>
						<a href="id="allprogram">전체</a>&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp; 
						<a href="id="movie">영화</a>&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp; 
						<a href="id="drama">드라마</a>&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp; 
						<a href="id="enter">예능</a>&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp; 
						<a href="id="docu">다큐</a>&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;
					</p>
				</div>
				
				
				<div class="container main-container p-0">
    <div class="row" id="itemContainer">
        
<c:forEach var="program" items="${programList}">
    <div class="col-md-6 col-lg-4">
        <!-- target="_blank" 제거 -->
        <a class="demo-item-link" href="<c:url value='/review'>
            <c:param name='programNo' value='${program.programNo}' />
        </c:url>">
            <div class="card">
            	<img  src="<c:url value="${program.programImage}"/>">
                <%-- <img src="${pageContext.request.contextPath}/resources/programImg/${program.programImage}" alt="${program.programImage}">--%>
                <div class="card-body text-center">
                    <h4 class="card-title fs-20 mb-5">${program.programName}</h4>
                    <p class="fs-14 fw-medium text-secondary-dark mb-0">${program.programDetail}</p>
                </div>
            </div>
        </a>
    </div>
</c:forEach>
</div>

    <!-- "더보기" 버튼 -->
    <div class="text-center mt-4">
        <button id="loadMore" class="btn btn-primary">더보기</button>
    </div>
</div>
		</section>


		<section id="cta" class="bg-light lg">
			<div class="container">
				<div class="cta p-0">
					<div class="row v-center">
						<div class="col-lg-8 left-area left-aligned tablet-center">
							<h4 class="mb-0">지금 당장 위티에 참여해보실래요?</h4>
						</div>
						<!-- / column -->
					</div>
					<!-- / row -->
				</div>
				<!-- / cta -->
			</div>
			<!-- / container -->
		</section>
		<!-- / cta -->
	</div>
	<!-- / main-container -->


	<button type="button" id="back-top"
		class="btn btn-icon btn-circle btn-primary btn-floating raised-sm">
		<i class="fas fa-chevron-up"></i>
	</button>

    <button type="button" id="back-top" class="btn btn-icon btn-circle btn-primary btn-floating raised-sm">
        <i class="fas fa-chevron-up"></i>
    </button>

    <!-- Core JavaScript -->
    <script src="<c:url value="/js/bootstrap.bundle.min.js"/>"></script>
    <script src="<c:url value="/js/theme.js"/>"></script>

    <!-- aos -->
    <script src="<c:url value="/js/aos.js"/>"></script>
    <script>
        AOS.init({
          duration: 1200,
        })
    </script>
    <!-- / aos -->

    <!-- Nav-Scroll -->
    <script src="<c:url value="/js/scroll-top.js"/>"></script>
    <!-- / Nav-Scroll -->

    <!-- Jarallax -->
    <script src="<c:url value="/js/jarallax.min.js"/>"></script>
    <!-- / Jarallax -->

    <!-- Rellax -->
    <script src="<c:url value="/js/rellax.min.js"/>"></script>
    <script>
        var rellax = new Rellax('.rellax');
    </script>
    
    
    <script>
document.addEventListener("DOMContentLoaded", function() {
    let items = document.querySelectorAll("#itemContainer .col-md-6.col-lg-4");
    let loadMoreBtn = document.getElementById("loadMore");
    let currentItem = 9; // 초기에 표시할 아이템 수

    // 초반에 9개만 보이게 설정
    for (let i = currentItem; i < items.length; i++) {
        items[i].style.display = 'none';
    }

    // 더보기 버튼 클릭 이벤트
    loadMoreBtn.addEventListener("click", function() {
        // 현재 숨겨진 아이템을 찾아 최대 currentItem 개수만큼 표시
        let hiddenItems = Array.from(items).filter(item => item.style.display === 'none');
        for (let i = 0; i < currentItem && i < hiddenItems.length; i++) {
            hiddenItems[i].style.display = 'block';
        }

        // 모든 아이템이 보이게 되면 더보기 버튼 숨기기
        if (Array.from(items).filter(item => item.style.display === 'none').length === 0) {
            loadMoreBtn.style.display = 'none';
        }
    });
});


	//정렬기능코드
$(document).ready(function() {
    // OTT 버튼과 카테고리 버튼에 대한 이벤트 바인딩
    $("#ottButton, #categoryButton").click(function() {
        // 현재 선택된 OTT 번호와 카테고리 가져오기
        var ottNo = $("#ottButton.active").data("ott-no");
        var category = $("#categoryButton.active").data("category");

        // 필터링 요청 함수 호출
        filterPrograms(ottNo, category);
    });

    function filterPrograms(ottNo, category) {
        $.ajax({
            url: '/filterPrograms',
            type: 'GET',
            data: {
                'programOttNo': ottNo,
                'programCategory': category
            },
            success: function(programs) {
                // 서버로부터 받은 프로그램 데이터로 HTML 구성
                var itemsHtml = '';
                $.each(programs, function(index, program) {
                    itemsHtml += '<div class="col-md-6 col-lg-4">' + 
                                  '<div class="card">' + 
                                  '<img src="' + program.programImage + '" alt="' + program.programName + '">' +
                                  '<div class="card-body text-center">' +
                                  '<h4 class="card-title fs-20 mb-5">' + program.programName + '</h4>' +
                                  '<p class="fs-14 fw-medium text-secondary-dark mb-0">' + program.programDetail + '</p>' +
                                  '</div>' +
                                  '</div>' +
                                  '</div>';
                });
                // #itemContainer 내용을 새로운 HTML로 업데이트
                $('#itemContainer').html(itemsHtml);
            },
            error: function(xhr, status, error) {
                console.error(error);
            }
        });
    }
});






</script>


	<!-- css 동적페이지를 위한 코드 -->
	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
	
</body>
</html>