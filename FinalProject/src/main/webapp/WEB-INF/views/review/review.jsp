<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"  %>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>	
<!DOCTYPE html>
<html lang="en">

<head>
<style>
nav {
	font-size: 12pt;
	font-family: 'PT Sans', Arial, Sans-serif;
	position: relative;
}

nav ul {
	padding: 0;
	margin: 0 auto;
	width: auto;
}

nav li {
	
}

nav a {
	line-height: 50px;
	height: 50px;
}

nav li a {
	box-sizing: border-box;
	-moz-box-sizing: border-box;
	-webkit-box-sizing: border-box;
}

nav li:last-child a {
	border-right: 0;
}

nav a:hover, nav a:active {
	
}

nav a#pull {
	display: none;
}

html {
	-webkit-touch-callout: none;
	-webkit-user-select: none;
	-webkit-tap-highlight-color: rgba(0, 0, 0, 0);
}

ul {
	/*list-style-type: none;*/
	margin: 0;
	padding: 0;
	background-color: #333;
	text-align: center;
}

li {
	/*position: relative;*/
	display: inline-block;
}

li a {
	color: #FFFFFF;
	text-align: center;
	padding: 14.5px 16px;
	text-decoration: none;
}

li a:hover {
	/*color: #597812;*/
	color: #FFD400;
	font-weight: normal;
}

.menu {
	width: 5000px;
	height: 50px;
	text-align: center;
	max-width: 100%;
	background-position: center;
	background-size: cover;
	background-color: #333333;
	color: white;
	position: absolute;
	z-index: 1;
}

.clearfix {
	font-size: 13px
}


</style>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="MiOne - Minimal Landing Page Theme">
<meta name="author" content="kingstudio.ro">
<!-- Favicon -->
<link rel="icon" href="assets/images/favicon.png">
<!-- Site Title -->
<title>프로그램 디테일</title>
<!-- Bootstrap 5 Core CSS -->
 <link href="<c:url value="/css/bootstrap.min.css"/>" type="text/css" rel="stylesheet">
    <!-- Custom Styles -->
    <link href="<c:url value="/css/animate.min.css"/>" type="text/css" rel="stylesheet">
    
    <link href="<c:url value="/css/aos.css"/>" type="text/css" rel="stylesheet">
    <link href="<c:url value="/css/glightbox.min.css"/>" type="text/css" rel="stylesheet">
    <link href="<c:url value="/css/swiper-bundle.min.css"/>" type="text/css" rel="stylesheet">
    <link href="<c:url value="/css/style.css"/>" type="text/css" rel="stylesheet">
    <link href="<c:url value="/css/fontawesome-all.min.css"/>" type="text/css" rel="stylesheet">
    
</head>
 <style>
        .navbar-nav {
            list-style-type: none;
            margin: 0;
            padding: 0;
            overflow: hidden;
            background-color: #f0f0f0; /* 네비게이션 바의 배경색 */
            text-align: center;
        }

        .nav-item {
            display: inline; /* 가로로 배치 */
            margin-right: 10px; /* 오른쪽 여백 추가 */
        }

        .nav-link {
            display: inline-block;
            color: black; /* 글씨 색을 검정색으로 변경 */
            font-weight: bold; /* 글씨를 진하게 */
            font-size: 1.5em; /* 기본 글씨 크기보다 조금 크게 */
            margin-right: 10px;
        }

        .nav-link:hover {
            background-color: #ddd; /* 마우스 오버 시 배경색 변경 */
        }
        .header-content {
    display: flex;
    justify-content: center; /* 가로 방향 중앙 정렬 */
    align-items: center; /* 세로 방향 중앙 정렬 */
    height: 100vh; /* 높이를 화면 높이와 동일하게 설정 */
}
    </style>
</head>
<body data-bs-spy="scroll" data-bs-target="#nav-scroll">
    <div class="text-center" style="margin: 0 auto; padding-top: 20px;"> <!-- 상단 패딩 추가 -->
        <ul class="navbar-nav">
            <li class="nav-item">
                <a class="nav-link" href="#landings">넷플릭스</a>&nbsp;&nbsp;
                <a class="nav-link" href="#pages">웨이브</a>&nbsp;&nbsp;
                <a class="nav-link" href="#features">왓챠</a>&nbsp;&nbsp;
                <a class="nav-link last-menu-item" href="components.html">티빙</a>&nbsp;&nbsp;
                <a class="nav-link last-menu-item" href="components.html">디즈니 플러스</a>
            </li>
        </ul>
    </div>

                

<header class="fh p-0 v-center bg-white">
    <div class="container">
        <div class="header-content">
            <div class="row v-center">
                <div class="col-lg-5 text-right">
                    <!-- .img-fluid 클래스 추가 -->
                    <img src="<c:url value="/images/tear.jpg"/>" alt=""
                        class="img-fluid z-index-2 relative rellax tablet-lg-hidden"
                        data-rellax-speed="2" data-rellax-percentage="0.5">
                </div>
                <div class="col-lg-6 z-index-1 tablet-lg-top-45">
                    <h2 class="page-title mb-0">눈물의 여왕(제목)</h2>
                    <p class="lead w-80 m-y-30" data-aos="fade-in" data-aos-delay="100">이런이런 내용의 드라마 입니다.(내용)</p>
                    <a href="#about-us" class="btn btn-outline-primary mr-5"><i class="fas fa-user mr-5"></i> <span>위티 참여하기</span></a>
                </div>
            </div>
        </div>
    </div>
</header>


<div style="display: flex; justify-content: center;">
	<div class="youtube-video-container"
		style="position: relative; padding-bottom: 33.75%; width: 70%; overflow: hidden;">
		<iframe
			style="position: absolute; top: 0; left: 0; width: 100%; height: 100%;"
			src="https://www.youtube.com/embed/1q2fe127Azc" frameborder="0"
			allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
			allowfullscreen></iframe>
	</div>
</div>



<div class="text-center p-y-70">
	<h2 class="section-title mb-15" data-aos="fade-down">한눈에보는 리뷰</h2>
	<div class="spacer-line border-primary mb-15">&nbsp;</div>
</div>
<!-- / text-center -->

<div class="row">
		<% for(int i=0; i<=5; i++) { %>
	<div class="col-lg-4">
		<div class="card raised" data-aos="fade-up">
			<div class="card-body text-center">
				<p class="mb-5 fw-medium fs-14 lsp-2x">2020-01-01</p>
				<p class="card-text mb-15">너무 재밌다 내밥친구.구구구구구절절절절구국ㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱ</p>
				<
                      <p class="mb-0 fs-12 fw-regular">닉네임</p>             
			</div>
		</div>
	</div>
	<% } %>

	
 
  <section id="testimonials" class="lg">
            <div class="container">
                <div class="text-center">
                    <h2 class="section-title mb-15" data-aos="fade-down">TESTIMONIALS</h2>
                   	<% for(int i=0; i<=5; i++) { %>
                    <div class="spacer-line border-white mb-80">&nbsp;</div>
                </div><!-- / text-center -->
                <div id="testimonials-swiper" class="swiper-container pagination-down">
                    <div class="swiper-wrapper">
                        <div class="swiper-slide">
                            <div class="card card-w-raised-img-top mb-0">
                                <div class="card-body text-center">
                                    <img class="card-raised-img-top mb-20 circle raised-sm"  alt="" style="max-width: 150px;">
                                    <p class="ratings mb-0">
                                        <i class="fas fa-star fs-12 va-middle"></i>
                                        <i class="fas fa-star va-middle"></i>
                                        <i class="fas fa-star fs-20 va-middle"></i>
                                        <i class="fas fa-star va-middle"></i>
                                        <i class="fas fa-star fs-12 va-middle"></i>
                                    </p><!-- / ratings -->
                                    <p class="card-text mb-15">너무 재밌다 내밥친구.</p>
                                    <p class="mb-0 fs-12 fw-regular">- 홍길동</p>
                                </div><!-- / card-body -->
                                </div>
                                </div>
                                </div>
                                <% } %>
                                </div>
                                </div>
                                </section>
                            


<section id="contact" class="xl">
	<div class="container">
		<div class="row v-center">
			<div class="col-lg-6 tablet-lg-top-45">
				<h2 class="mb-5">작품에 대한 리뷰를 남겨주세요!</h2>
				<p class="lead mb-20">리뷰는 위티들에게 도움이 됩니다.</p>
				<div class="accordion minimal-accordion"
					id="minimal-accordionExample" data-aos="fade-up"
					data-aos-delay="100">
					<div class="accordion-item">
						<h2 class="accordion-header" id="minimal-headingOne">
							<button class="accordion-button" type="button"
								data-bs-toggle="collapse" data-bs-target="#minimal-collapseOne"
								aria-expanded="true" aria-controls="minimal-collapseOne">
								리뷰는 어떻게 선정되나요? <span><i class="fas fa-chevron-down"></i></span>
							</button>
						</h2>
						<!-- / accordion-header -->
						<div id="minimal-collapseOne"
							class="accordion-collapse collapse show"
							aria-labelledby="minimal-headingOne"
							data-bs-parent="#minimal-accordionExample">
							<div class="accordion-body">잘쓰는 사람들은 포인트 지급 예정입니다.</div>
							<!-- / accordion-body -->
						</div>
						<!-- / collapse -->
					</div>
					<!-- / accordion-item -->

					<div class="accordion-item">
						<h2 class="accordion-header" id="minimal-headingTwo">
							<button class="accordion-button collapsed" type="button"
								data-bs-toggle="collapse" data-bs-target="#minimal-collapseTwo"
								aria-expanded="false" aria-controls="minimal-collapseTwo">
								리뷰는 어떻게 작성해야하나요? <span><i class="fas fa-chevron-down"></i></span>
							</button>
						</h2>
						<!-- / accordion-header -->
						<div id="minimal-collapseTwo" class="accordion-collapse collapse"
							aria-labelledby="minimal-headingTwo"
							data-bs-parent="#minimal-accordionExample">
							<div class="accordion-body">
								감명깊었던 내용을 작성해</div>
							<!-- / accordion-body -->
						</div>
						<!-- / collapse -->
					</div>
					<!-- / accordion-item -->

					
				</div>
				<!-- / accordion -->
			</div>
			<!-- / column -->
			<div class="col-lg-6">
				<div class="promo-box p-y-80 p-x-50" data-aos="fade-up"
					data-aos-delay="300">
					<form class="needs-validation" id="form-validation5"
						novalidate="novalidate">
						<div class="row">
							<div class="col-md-6">
								<div class="form-group">
									<p>평점 5개 만점!</p>
								</div>
								<!-- / form-group -->
							</div>
							<!-- / column -->

							<div class="col-md-6">
								<div class="form-group">
									<p>★★★★★</p>
								</div>
								<!-- / form-group -->
							</div>
							<!-- / column -->

							<div class="col-md-12">
								<p>위티만의 두줄리뷰를 남겨보세요!</p>
								<!-- / form-group -->
							</div>
							<!-- / column -->
						</div>
						<!-- / row -->
						<div class="form-group">
							<textarea id="contact-message6" class="form-control"
								name="inputMessage6" rows="5" placeholder="&#xf4ad; Message"
								required=""
								style="font-family: 'Font Awesome 5 Free', sans-serif !important; font-weight: 400; min-height: 115px; max-height: 150px;"></textarea>
						</div>
						<button type="submit" class="btn btn-primary btn-submit">리뷰등록</button>
					</form>
					<!-- / form-group -->
				</div>
				<!-- / promo-box -->
			</div>
			<!-- / column -->
		</div>
		<!-- / row -->
	</div>
	<!-- / container -->
</section>
<!-- / contact -->
</div>
<!-- / main-container -->



<!-- Core JavaScript -->
<script src="<c:url value="/js/bootstrap.bundle.min.js"/>"></script>
<script src="<c:url value="/js/theme.js"/>"></script>

<!-- aos -->
<script src="<c:url value="/js/aos.js"/>"></script>
<script>
	AOS.init({
		duration : 1200,
	})
</script>
<!-- / aos -->

<!-- Nav-Scroll -->
<script src="<c:url value="/js/nav-fixed.js"/>"></script>
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
<!-- / Rellax -->

<!-- Isotope -->
<script src="<c:url value="/js/isotope.min.js"/>"></script>
<script src="<c:url value="/js/isotope-filter.js"/>"></script>
<!-- / Isotope -->

<!-- GLightbox -->
<script src="<c:url value="/js/glightbox.min.js"/>"></script>
<script>
	var lightboxDescription = GLightbox({
		selector : '.project-details'
	});
</script>
<!-- / GLightbox -->

</body>
</html>