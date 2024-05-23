<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="xyz.withy.dto.UserDTO" %>
<%
    UserDTO loginUser = (UserDTO) session.getAttribute("loginUser");
%>
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
    <link rel="icon" href="assets/images/favicon.png">
    <!-- Site Title -->
    <title>MiOne - Minimal Landing Page Theme</title>
    <!-- Bootstrap 5 Core CSS -->
    <link href="assets/css/bootstrap.min.css" rel="stylesheet">
    <!-- Custom Styles -->
    <link rel="stylesheet" href="assets/css/animate.min.css">
    <link rel="stylesheet" href="assets/css/aos.css">
    <link rel="stylesheet" href="assets/css/glightbox.min.css">
    <link rel="stylesheet" href="assets/css/swiper-bundle.min.css">
    <link rel="stylesheet" href="assets/css/style.css">
    <!-- Fonts -->
    <link rel="stylesheet" href="assets/css/fontawesome-all.min.css" type="text/css">



<style type="text/css">
.swiper-slide {
    position: relative;
}

.swiper-slide img {
    transition: filter 0.3s ease;
}

.swiper-slide:hover img {
    filter: brightness(0.5);
}

.main_image_text1 {
    position: absolute;
    top: 40%;
    left: 50%;
    transform: translate(-50%, -50%);
    color: white;
    opacity: 0;
    transition: opacity 0.3s ease;
    font-size: 16px;
}

.main_image_text2 {
    position: absolute;
    top: 60%;
    left: 50%;
    transform: translate(-50%, -50%);
    color: white;
    opacity: 0;
    transition: opacity 0.3s ease;
    font-size: 16px;
}


.swiper-slide:hover .main_image_text1 {
    opacity: 1;
    
}

.swiper-slide:hover .main_image_text2 {
    opacity: 1;
}

.main_image_text1:hover{
        font-weight: bold; /* 텍스트 강조 */
    font-size: 17px; /* 원하는 크기로 조정 */
}

.main_image_text2:hover{
        font-weight: bold; /* 텍스트 강조 */
    font-size: 17px; /* 원하는 크기로 조정 */
}


</style>

    
</head>

<body data-bs-spy="scroll" data-bs-target="#nav-scroll">

    <div id="loader-wrapper">
        <div id="loader"></div>
        <div class="loader-section section-left"></div>
        <div class="loader-section section-right"></div>
    </div>

    <div id="home"></div>

    <nav id="nav-scroll" class="navbar navbar-expand-lg fixed-top" style="background-color: white;">
        <div class="container">
            <a class="navbar-brand" href="index.html"><img src="assets/images/logo.png" alt=""></a>

            <button class="navbar-toggler collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#navbar-toggle-nav-center" aria-controls="navbar-toggle-nav-center" aria-expanded="false" aria-label="Toggle navigation">
                <span class="icon-bar top-bar"></span>
                <span class="icon-bar middle-bar"></span>
                <span class="icon-bar bottom-bar"></span>
                <span class="sr-only">Toggle navigation</span>
            </button><!-- / navbar-toggler -->

            <div class="collapse navbar-collapse" id="navbar-toggle-nav-center">
               <ul class="navbar-nav ml-auto">
                    <li class="nav-item">
                        <a class="nav-link" href="#home">파티</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#about-us">이벤트</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#features">리뷰/평점</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#pricing">가이드</a>
                    </li>
                   <% if (loginUser != null) { %>
     			   <li class="nav-item">
      		      <p><%=loginUser.getUserName()%>님 환영합니다!</p>
      			  </li>
      			  <li class="nav-item">
      			      <a class="nav-link" href="/logout">로그아웃</a>
      			  </li>
      			  <li class="nav-item">
          		  <a class="nav-link last-menu-item" href="#contact">마이페이지</a>
       			 </li>
   				 <% } else { %>
   					 <li class="nav-item">
    			    <a class="nav-link" href="/login">로그인</a>
    				</li>
   				 <li class="nav-item">
      			  <a class="nav-link last-menu-item" href="#contact">회원가입</a>
    			</li>
				<% } %>
				</ul>
                </ul><!-- / navbar-nav -->
            </div><!-- / navbar-collapse -->
        </div><!-- / container -->
    </nav>

<div id="carouselExampleIndicators" class="carousel slide">
  <div class="carousel-indicators">
    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="1" aria-label="Slide 2"></button>
    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="2" aria-label="Slide 3"></button>
  </div>
  <div class="carousel-inner">
    <div class="carousel-item active">
      <img src="assets/images/main1.png" class="d-block w-100" alt="main1">
    </div>
    <div class="carousel-item">
      <img src="assets/images/main2.png" class="d-block w-100" alt="main1">
    </div>
    <div class="carousel-item">
      <img src="assets/images/main3.png" class="d-block w-100" alt="main1">
    </div>
  </div>
  <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Previous</span>
  </button>
  <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Next</span>
  </button>
</div>



        <div class="container p-y-150">
            <div id="logo-swiper" class="swiper-container">
                <div class="swiper-wrapper">
                   <div class="swiper-slide">
                        <img src="assets/images/net2.png" alt="넷플릭스" class="swiper-slide">
                       <a href="http://www.naver.com" ><p class="main_image_text1" >파티장으로 </p></a>
                        <a href="http://www.naver.com" ><p class="main_image_text2" >파티원으로 </p></a>
                    </div>
                    <div class="swiper-slide">
                        <img src="assets/images/disney.png" alt="디즈니플러스">
                        <a href="http://www.naver.com" ><p class="main_image_text1" >파티장으로 </p></a>
                        <a href="http://www.naver.com" ><p class="main_image_text2" >파티원으로 </p></a>
                    </div>
                    <div class="swiper-slide">
                        <img src="assets/images/tving.png" alt="티빙">
                        <a href="http://www.naver.com" ><p class="main_image_text1" >파티장으로 </p></a>
                        <a href="http://www.naver.com" ><p class="main_image_text2" >파티원으로 </p></a>
                    </div>
                    <div class="swiper-slide">
                        <img src="assets/images/wave.png" alt="웨이브">
                        <a href="http://www.naver.com" ><p class="main_image_text1" >파티장으로 </p></a>
                        <a href="http://www.naver.com" ><p class="main_image_text2" >파티원으로 </p></a>
                    </div>
                    <div class="swiper-slide">
                        <img src="assets/images/watcha.png" alt="왓챠">
                        <a href="http://www.naver.com" ><p class="main_image_text1" >파티장으로 </p></a>
                        <a href="http://www.naver.com" ><p class="main_image_text2" >파티원으로 </p></a>
                    </div>
                </div><!-- / swiper-wrapper -->
                <!-- Add Pagination -->
                <div class="swiper-pagination"></div>
            </div><!-- / logo-swiper -->
        </div><!-- / container -->

<p style="margin-left: 180px; font-size: 18px; font-weight: bold;">추천 <span style="color: green;">컨텐츠!</span></p>
<div style="text-align: center;">
<a href="http://www.youtube.com/watch?v=7VwVbzw3O4w" class="glightbox-video btn btn-link pl-0">
<img src="assets/images/netOne.png"  alt="넷플릭스영상">
</a>
<a href="http://www.youtube.com/watch?v=gWsz8M_1VbU" class="glightbox-video btn btn-link pl-0">
<img src="assets/images/Dvideo.png" width="180" height="200" alt="디즈니영상">
</a>
<a href="http://www.youtube.com/watch?v=lQADSjXqiPM" class="glightbox-video btn btn-link pl-0">
<img src="assets/images/WaveVideo.png" width="180" height="200" alt="웨이브영상">
</a>
<a href="http://www.youtube.com/watch?v=CmEhX20ZdZA" class="glightbox-video btn btn-link pl-0">
<img src="assets/images/Tvideo.png" width="180" height="200" alt="티빙영상">
</a>
</div>


    <div class="main-container p-0">

        <div class="container p-y-150">
            <div id="logo-swiper" class="swiper-container">
                <div class="swiper-wrapper">
                   <div class="swiper-slide">
                        <img src="assets/images/net2.png" alt="넷플릭스">
                    </div>
                    <div class="swiper-slide">
                        <img src="assets/images/disney.png" alt="디즈니플러스">
                    </div>
                    <div class="swiper-slide">
                        <img src="assets/images/tving.png" alt="티빙">
                    </div>
                    <div class="swiper-slide">
                        <img src="assets/images/wave.png" alt="웨이브">
                    </div>
                    <div class="swiper-slide">
                        <img src="assets/images/watcha.png" alt="왓챠">
                    </div>
                </div><!-- / swiper-wrapper -->
                <!-- Add Pagination -->
                <div class="swiper-pagination"></div>
            </div><!-- / logo-swiper -->
        </div><!-- / container -->		

		
		<div class="footer-wrapper bg-light">
        <div class="footer-widget-area bg-transparent">
            <div class="container">
                <div class="row">
                    <div class="col-md-6 col-xl-4">
                        <div class="widget">
                            <img src="assets/images/logo.png" class="footer-logo mb-20" alt="">
                            <p class="fs-16 title-color">© 2021 MiOne by <a href="https://kingstudio.ro" target="_blank">KingStudio</a></p>
                            <p>
                                <a href="#x" class="text-link mr-20"><i class="fab fa-facebook-f"></i></a>
                                <a href="#x" class="text-link mr-20"><i class="fab fa-twitter"></i></a>
                                <a href="#x" class="text-link mr-20"><i class="fab fa-dribbble"></i></a>
                                <a href="#x" class="text-link"><i class="fab fa-instagram"></i></a>
                            </p>
                        </div><!-- / widget -->
                    </div><!-- / column -->

                    <div class="col-xl-4">
                        <div class="widget">
                            <div class="row">
                                <div class="col-6 tablet-xl-top">
                                    <ul class="list-unstyled list-has-link menu-list mb-0">
                                        <li class="mb-20 fs-14 title-color fw-medium">COMPANY</li>
                                        <li><a href="#x">About Us</a></li>
                                        <li><a href="#x">Contact Us</a></li>
                                        <li><a href="#x">Privacy Policy</a></li>
                                        <li class="mb-0"><a href="#x">Terms & Conditions</a></li>
                                    </ul><!-- / list-unstyled -->
                                </div><!-- / column -->

                                <div class="col-6">
                                    <ul class="list-unstyled list-has-link menu-list mb-0">
                                        <li class="mb-20 fs-14 title-color fw-medium">USEFUL LINKS</li>
                                        <li><a href="#x">FAQ</a></li>
                                        <li><a href="#x">Support</a></li>
                                        <li><a href="#x">Documentation</a></li>
                                        <li class="mb-0"><a href="#x">Knowledge Base</a></li>
                                    </ul><!-- / list-unstyled -->
                                </div><!-- / column -->
                            </div><!-- / row -->
                        </div><!-- / widget -->
                    </div><!-- / column -->

                    <div class="col-md-9 col-xl-4">
                        <div class="widget">
                            <h6 class="widget-title">Subscribe to Newsletter</h6>
                            <p class="mb-10">Quisque aliquet lorem nec dui posuere des:</p>
                            <div class="input-group input-w-overlap-btn mb-15">
                                <input type="text" class="form-control rounded-sm" placeholder="Email">
                                <span class="input-group-btn">
                                    <button class="btn btn-sm btn-dark lh-0 overlapping-btn big-btn btn-subscribe rounded-sm" type="button"><i class="fas fa-paper-plane mr-5"></i> Subscribe</button>
                                </span><!-- / input-group-btn -->
                            </div><!-- / input-group -->
                        </div><!-- / widget -->
                    </div><!-- / column -->
                </div><!-- / row -->
            </div><!-- / container -->
        </div><!-- / footer-widget-area -->
    </div><!-- / footer-wrapper -->

    <button type="button" id="back-top" class="btn btn-icon btn-circle btn-primary btn-floating raised-sm">
        <i class="fas fa-chevron-up"></i>
    </button>

    <!-- Core JavaScript -->
    <script src="assets/js/bootstrap.bundle.min.js"></script>
    <script src="assets/js/theme.js"></script>

    <!-- aos -->
    <script src="assets/js/aos.js"></script>
    <script>
        AOS.init({
          duration: 1200,
        })
    </script>
    <!-- / aos -->

    <!-- Nav-Scroll -->
    <script src="assets/js/nav-fixed.js"></script>
    <script src="assets/js/scroll-top.js"></script>
    <!-- / Nav-Scroll -->

    <!-- Jarallax -->
    <script src="assets/js/jarallax.min.js"></script>
    <!-- / Jarallax -->

    <!-- Rellax -->
    <script src="assets/js/rellax.min.js"></script>
    <script>
        var rellax = new Rellax('.rellax');
    </script>
    <!-- / Rellax -->

    <!-- GLightbox -->
    <script src="assets/js/glightbox.min.js"></script>
    <script>
        var lightboxVideo = GLightbox({
            selector: '.glightbox-video'
        });
    </script>
    <!-- / GLightbox -->

    <!-- Swiper Slider -->
    <script src="assets/js/swiper-bundle.min.js"></script>
    <!-- swiper-init -->
    <script>
        var swiper = new Swiper('#logo-swiper', {
          slidesPerView: 5,
          spaceBetween: 100,
          loop: true,
          speed: 1200,
          pagination: false,
          autoplay: {
            delay: 3500,
            disableOnInteraction: false,
          },
          breakpoints: {
            '@0.25': {
              slidesPerView: 2,
            },
            '@0.5': {
              slidesPerView: 3,
            },
            '@1.00': {
              slidesPerView: 5,
            },
          }
        });
    </script>

    <script>
        var swiper = new Swiper('#testimonials-swiper', {
          slidesPerView: 3,
          spaceBetween: 15,
          loop: true,
          pagination: {
            el: '.swiper-pagination',
            clickable: true,
          },
          breakpoints: {
            '@0.25': {
              slidesPerView: 1,
            },
            '@0.65': {
              slidesPerView: 2,
            },
            '@1.00': {
              slidesPerView: 3,
            },
          }
        });
    </script>
    <!-- / Swiper Slider -->

</body>
</html>