<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"  %>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<!DOCTYPE html>
<head>

      <!-- Meta -->
	<meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="MiOne - Minimal Landing Page Theme">
    <meta name="author" content="kingstudio.ro">
    <!-- Favicon -->
    <!-- Site Title -->
    <title>MiOne - Minimal Landing Page Theme</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
    <!-- Bootstrap 5 Core CSS -->
    <link href="<c:url value="/css/bootstrap.min.css"/>" type="text/css" rel="stylesheet">
    <!-- Custom Styles -->
    <link href="<c:url value="/css/animate.min.css"/>" type="text/css" rel="stylesheet">
    <link href="<c:url value="/css/aos.css"/>" type="text/css" rel="stylesheet">
    <link href="<c:url value="/css/glightbox.min.css"/>" type="text/css" rel="stylesheet">
    <link href="<c:url value="/css/swiper-bundle.min.css"/>" type="text/css" rel="stylesheet">
    <link href="<c:url value="/css/style.css"/>" type="text/css" rel="stylesheet">
    <!-- Fonts -->
    <link href="<c:url value="/css/fontawesome-all.min.css"/>" type="text/css" rel="stylesheet">
    


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


<div id="carouselExampleIndicators" class="carousel slide">
  <div class="carousel-indicators">
    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="1" aria-label="Slide 2"></button>
    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="2" aria-label="Slide 3"></button>
  </div>
  <div class="carousel-inner">
    <div class="carousel-item active">
      <img src="<c:url value="images/main1.png"/>" class="d-block w-100" alt="">
    </div>
    <div class="carousel-item">
      <img src="<c:url value="images/main2.png"/>" class="d-block w-100" alt="">
    </div>
    <div class="carousel-item">
      <img src="<c:url value="images/main3.png"/>" class="d-block w-100" alt="">
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
                   <div class="swiper-slide" style="max-width: 100px; max-height: 100px;">
                        <img src="<c:url value="/images/net2.png"/>" alt="넷플릭스" class="swiper-slide">
                       <a href="http://www.naver.com" ><p class="main_image_text1" >파티장으로 </p></a>
                        <a href="http://www.naver.com" ><p class="main_image_text2" >파티원으로 </p></a>
                    </div>
                    <div class="swiper-slide" style="max-width: 100px; max-height: 100px;">
                        <img src="<c:url value="/images/disney.png"/>" alt="디즈니플러스">
                        <a href="http://www.naver.com" ><p class="main_image_text1" >파티장으로 </p></a>
                        <a href="http://www.naver.com" ><p class="main_image_text2" >파티원으로 </p></a>
                    </div>
                    <div class="swiper-slide" style="max-width: 100px; max-height: 100px;">
                        <img src="<c:url value="/images/tving.png"/>" alt="티빙" >
                        <a href="http://www.naver.com" ><p class="main_image_text1" >파티장으로 </p></a>
                        <a href="http://www.naver.com" ><p class="main_image_text2" >파티원으로 </p></a>
                    </div>
                    <div class="swiper-slide" style="max-width: 100px; max-height: 100px;">
                        <img src="<c:url value="/images/wave.png"/>" alt="웨이브">
                        <a href="http://www.naver.com" ><p class="main_image_text1" >파티장으로 </p></a>
                        <a href="http://www.naver.com" ><p class="main_image_text2" >파티원으로 </p></a>
                    </div>
                    <div class="swiper-slide" style="max-width: 100px; max-height: 100px;">
                        <img src="<c:url value="/images/watcha.png"/>" alt="왓챠">
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
<img src="<c:url value="/images/netOne.png"/>"  alt="넷플릭스영상">
</a>
<a href="http://www.youtube.com/watch?v=gWsz8M_1VbU" class="glightbox-video btn btn-link pl-0">
<img src="<c:url value="/images/Dvideo.png"/>" width="180" height="200" alt="디즈니영상">
</a>
<a href="http://www.youtube.com/watch?v=lQADSjXqiPM" class="glightbox-video btn btn-link pl-0">
<img src="<c:url value="/images/WaveVideo.png"/>" width="180" height="200" alt="웨이브영상">
</a>
<a href="http://www.youtube.com/watch?v=CmEhX20ZdZA" class="glightbox-video btn btn-link pl-0">
<img src="<c:url value="/images/Tvideo.png"/>" width="180" height="200" alt="티빙영상">
</a>
</div>



 <section id="about-us" class="xl bg-white">
            <div class="container">
                <div class="row v-center">
                    <div class="col-lg-6 mb-50">
                        <img src="assets/images/mainSub1.png" alt="" class="rounded rellax" data-rellax-speed="1" data-rellax-percentage="0.5">
                    </div><!-- / column -->
                    <div class="col-lg-6 mb-50">
                        <h2 class="mb-30">왜 우리 [윗티]어야 하는가?</h2>
                        <p class="lead mb-0">가장 안전하게, 가장 저렴하게, 가장 편리하게!</p>
                        <div class="promo-box pb-60 mt-60 raised" data-aos="fade-up">
                            <div class="row">
                                <div class="col-lg-12 col-xl-6 tablet-xl-top-45">
                                    <div class="promo-left">
                                        <div class="promo-container-big">
                                            <div class="promo-big promo-icon-bg circle b-2 border-primary raised-sm">
<svg xmlns="http://www.w3.org/2000/svg" width="55" height="55" color="#0978F5" style="margin-top: 20px;" fill="currentColor" class="bi bi-puzzle" viewBox="0 0 16 16">
  <path d="M3.112 3.645A1.5 1.5 0 0 1 4.605 2H7a.5.5 0 0 1 .5.5v.382c0 .696-.497 1.182-.872 1.469a.5.5 0 0 0-.115.118l-.012.025L6.5 4.5v.003l.003.01q.005.015.036.053a.9.9 0 0 0 .27.194C7.09 4.9 7.51 5 8 5c.492 0 .912-.1 1.19-.24a.9.9 0 0 0 .271-.194.2.2 0 0 0 .039-.063v-.009l-.012-.025a.5.5 0 0 0-.115-.118c-.375-.287-.872-.773-.872-1.469V2.5A.5.5 0 0 1 9 2h2.395a1.5 1.5 0 0 1 1.493 1.645L12.645 6.5h.237c.195 0 .42-.147.675-.48.21-.274.528-.52.943-.52.568 0 .947.447 1.154.862C15.877 6.807 16 7.387 16 8s-.123 1.193-.346 1.638c-.207.415-.586.862-1.154.862-.415 0-.733-.246-.943-.52-.255-.333-.48-.48-.675-.48h-.237l.243 2.855A1.5 1.5 0 0 1 11.395 14H9a.5.5 0 0 1-.5-.5v-.382c0-.696.497-1.182.872-1.469a.5.5 0 0 0 .115-.118l.012-.025.001-.006v-.003a.2.2 0 0 0-.039-.064.9.9 0 0 0-.27-.193C8.91 11.1 8.49 11 8 11s-.912.1-1.19.24a.9.9 0 0 0-.271.194.2.2 0 0 0-.039.063v.003l.001.006.012.025c.016.027.05.068.115.118.375.287.872.773.872 1.469v.382a.5.5 0 0 1-.5.5H4.605a1.5 1.5 0 0 1-1.493-1.645L3.356 9.5h-.238c-.195 0-.42.147-.675.48-.21.274-.528.52-.943.52-.568 0-.947-.447-1.154-.862C.123 9.193 0 8.613 0 8s.123-1.193.346-1.638C.553 5.947.932 5.5 1.5 5.5c.415 0 .733.246.943.52.255.333.48.48.675.48h.238zM4.605 3a.5.5 0 0 0-.498.55l.001.007.29 3.4A.5.5 0 0 1 3.9 7.5h-.782c-.696 0-1.182-.497-1.469-.872a.5.5 0 0 0-.118-.115l-.025-.012L1.5 6.5h-.003a.2.2 0 0 0-.064.039.9.9 0 0 0-.193.27C1.1 7.09 1 7.51 1 8s.1.912.24 1.19c.07.14.14.225.194.271a.2.2 0 0 0 .063.039H1.5l.006-.001.025-.012a.5.5 0 0 0 .118-.115c.287-.375.773-.872 1.469-.872H3.9a.5.5 0 0 1 .498.542l-.29 3.408a.5.5 0 0 0 .497.55h1.878c-.048-.166-.195-.352-.463-.557-.274-.21-.52-.528-.52-.943 0-.568.447-.947.862-1.154C6.807 10.123 7.387 10 8 10s1.193.123 1.638.346c.415.207.862.586.862 1.154 0 .415-.246.733-.52.943-.268.205-.415.39-.463.557h1.878a.5.5 0 0 0 .498-.55l-.001-.007-.29-3.4A.5.5 0 0 1 12.1 8.5h.782c.696 0 1.182.497 1.469.872.05.065.091.099.118.115l.025.012.006.001h.003a.2.2 0 0 0 .064-.039.9.9 0 0 0 .193-.27c.14-.28.24-.7.24-1.191s-.1-.912-.24-1.19a.9.9 0 0 0-.194-.271.2.2 0 0 0-.063-.039H14.5l-.006.001-.025.012a.5.5 0 0 0-.118.115c-.287.375-.773.872-1.469.872H12.1a.5.5 0 0 1-.498-.543l.29-3.407a.5.5 0 0 0-.497-.55H9.517c.048.166.195.352.463.557.274.21.52.528.52.943 0 .568-.447.947-.862 1.154C9.193 5.877 8.613 6 8 6s-1.193-.123-1.638-.346C5.947 5.447 5.5 5.068 5.5 4.5c0-.415.246-.733.52-.943.268-.205.415-.39.463-.557z"/>
</svg>                                            </div><!-- / promo-icon-bg -->
                                            <h2 class="lsp-extra pt-10 mb-0" >20M+</h2>
                                            <p class="mb-0 fs-14 fw-medium text-primary">누적 성사된 파티</p>
                                        </div><!-- / promo-container-big -->
                                    </div><!-- / promo-box -->
                                </div><!-- / column -->

                                 <div class="col-lg-12 col-xl-6">
                                    <div class="promo-left">
                                        <div class="promo-container-big">
                                            <div class="promo-big promo-icon-bg circle b-2 border-primary raised-sm">
                                                <i class="fas fa-users promo-icon text-primary"></i>
                                            </div><!-- / promo-icon-bg -->
                                            <h2 class="lsp-extra pt-10 mb-0">20K+</h2>
                                            <p class="mb-0 fs-14 fw-medium text-primary">누적 사용자</p>
                                        </div><!-- / promo-container-big -->
                                    </div><!-- / promo-box -->
                                </div><!-- / column -->
                            </div><!-- / row -->
                        </div><!-- / promo-box -->
                    </div><!-- / column -->

             
            
        <section id="features" class="xl">
            <div class="container">
                <div class="text-center">
                    <h2 class="section-title mb-15" data-aos="fade-down">특징</h2>
                    <div class="spacer-line border-primary mb-80">&nbsp;</div>
                </div><!-- / text-center -->
                <div class="row">
                    <div class="col-md-6 col-xl-4 col-line col-line-bottom tablet-xl-no-border">
                        <div class="p-y-40 p-x-30 promo-center" data-aos="fade-up" data-aos-delay="100">
                            <div class="promo-big promo-icon-bg circle bg-primary-light b-0 mb-20">
                                <i class="fas fa-laptop promo-icon text-primary"></i>
                            </div><!-- / promo-big -->
                            <h6 class="box-title mb-15">안전하다!</h6>
                            <p class="box-description">Mobile-first approach, it looks and works perfectly on any device.</p>
                        </div><!-- / promo-center -->
                    </div><!-- / column -->

                    <div class="col-md-6 col-xl-4 col-line col-line-bottom tablet-xl-no-border">
                        <div class="p-y-40 p-x-30 promo-center" data-aos="fade-up" data-aos-delay="200">
                            <div class="promo-big promo-icon-bg circle bg-primary-light b-0 mb-20">
                                <i class="fab fa-sass promo-icon text-primary"></i>
                            </div><!-- / promo-big -->
                            <h6 class="box-title mb-15">저렴하다!</h6>
                            <p class="box-description">Sass files are included for fast and easy styling &amp; customizations.</p>
                        </div><!-- / promo-center -->
                    </div><!-- / column -->

                    <div class="col-md-6 col-xl-4 col-line col-line-bottom br-0 tablet-xl-no-border">
                        <div class="p-y-40 p-x-30 promo-center" data-aos="fade-up" data-aos-delay="300">
                            <div class="promo-big promo-icon-bg circle bg-primary-light b-0 mb-20">
                                <i class="fab fa-bootstrap promo-icon text-primary"></i>
                            </div><!-- / promo-big -->
                            <h6 class="box-title mb-15">편리하다!</h6>
                            <p class="box-description">Built with Bootstrap 5, using Vanilla JS plugins, no jQuery dependencies.</p>
                        </div><!-- / promo-center -->
                    </div><!-- / column -->

                    <div class="col-md-6 col-xl-4 col-line tablet-xl-no-border">
                        <div class="p-y-40 p-x-30 promo-center" data-aos="fade-up" data-aos-delay="400">
                            <div class="promo-big promo-icon-bg circle bg-primary-light b-0 mb-20">
                                <i class="fas fa-code promo-icon text-primary"></i>
                            </div><!-- / promo-big -->
                            <h6 class="box-title mb-15">다양하다!</h6>
                            <p class="box-description">100% Valid HTML &amp; Bootstrap code. Tested with W3C Validator.</p>
                        </div><!-- / promo-center -->
                    </div><!-- / column -->

                    <div class="col-md-6 col-xl-4 col-line tablet-xl-no-border">
                        <div class="p-y-40 p-x-30 promo-center" data-aos="fade-up" data-aos-delay="500">
                            <div class="promo-big promo-icon-bg circle bg-primary-light b-0 mb-20">
                                <i class="fab fa-js promo-icon text-primary"></i>
                            </div><!-- / promo-big -->
                            <h6 class="box-title mb-15">빠른 매칭가능!</h6>
                            <p class="box-description">Built with just Vanilla JS, using Bootstrap v5, no jQuery dependencies.</p>
                        </div><!-- / promo-center -->
                    </div><!-- / column -->

                    <div class="col-md-6 col-xl-4 col-line tablet-xl-no-border">
                       <div class="p-y-40 p-x-30 promo-center" data-aos="fade-up" data-aos-delay="600">
                            <div class="promo-big promo-icon-bg circle bg-primary-light b-0 mb-20">
                                <i class="far fa-file-alt promo-icon text-primary"></i>
                            </div><!-- / promo-big -->
                            <h6 class="box-title mb-15">포인트로 결제가능!</h6>
                            <p class="box-description">Well commented code &amp; the download package includes Documentation.</p>
                        </div><!-- / promo-center -->
                    </div><!-- / column -->
                </div><!-- / row -->

                <div class="spacer-2x">&nbsp;</div>

      
  

        <section id="pricing" class="xl">
            <div class="container">
                <div class="text-center">
                    <h2 class="section-title mb-15" data-aos="fade-down">파티시작</h2>
                    <div class="spacer-line border-primary mb-80">&nbsp;</div>
                </div><!-- / text-center -->

                <div class="row v-center">
                
                    <div class="col-md-6" >
                        <div class="pricing-table text-center" data-aos="fade-up">
                            <div class="pricing-table-title">
                                <h4 class="pricing-title text-primary">팀원으로 시작</h4>
                            </div><!-- / pricing-table-title -->
                            <div class="pricing-table-price">
                                <svg xmlns="http://www.w3.org/2000/svg" width="55" height="55" fill="currentColor" class="bi bi-search" viewBox="0 0 16 16">
  <path d="M11.742 10.344a6.5 6.5 0 1 0-1.397 1.398h-.001q.044.06.098.115l3.85 3.85a1 1 0 0 0 1.415-1.414l-3.85-3.85a1 1 0 0 0-.115-.1zM12 6.5a5.5 5.5 0 1 1-11 0 5.5 5.5 0 0 1 11 0"/>
</svg>
                            </div><!-- / pricing-table-price -->
                            <div class="pricing-table-content">
                                <ul>
                                    <li>이용 서비스는 물론 파티 스케줄까지
									내 맘에 쏙 드는 파티를 찾아보세요.</li>
                                </ul>
                                <div class="pricing-table-button">
                                    <a href="#x" class="btn btn-primary-light"><span>Get Started</span></a>
                                </div><!-- / pricing-table-button -->
                            </div><!-- / pricing-table-content -->
                        </div><!-- / pricing-table -->
                    </div><!-- / column -->

                    <div class="col-md-6" >
                        <div class="pricing-table text-center featured" data-aos="fade-down">
                            <div class="pricing-table-title">
                                <h4 class="pricing-title text-primary">팀장으로 시작</h4>
                            </div><!-- / pricing-table-title -->
                            <div class="pricing-table-price">
                                <p class="title-color"><span class="pricing-currency"><p class="title-color">
                                <svg xmlns="http://www.w3.org/2000/svg" width="55" height="55" fill="currentColor" class="bi bi-patch-plus" viewBox="0 0 16 16">
  <path fill-rule="evenodd" d="M8 5.5a.5.5 0 0 1 .5.5v1.5H10a.5.5 0 0 1 0 1H8.5V10a.5.5 0 0 1-1 0V8.5H6a.5.5 0 0 1 0-1h1.5V6a.5.5 0 0 1 .5-.5"/>
  <path d="m10.273 2.513-.921-.944.715-.698.622.637.89-.011a2.89 2.89 0 0 1 2.924 2.924l-.01.89.636.622a2.89 2.89 0 0 1 0 4.134l-.637.622.011.89a2.89 2.89 0 0 1-2.924 2.924l-.89-.01-.622.636a2.89 2.89 0 0 1-4.134 0l-.622-.637-.89.011a2.89 2.89 0 0 1-2.924-2.924l.01-.89-.636-.622a2.89 2.89 0 0 1 0-4.134l.637-.622-.011-.89a2.89 2.89 0 0 1 2.924-2.924l.89.01.622-.636a2.89 2.89 0 0 1 4.134 0l-.715.698a1.89 1.89 0 0 0-2.704 0l-.92.944-1.32-.016a1.89 1.89 0 0 0-1.911 1.912l.016 1.318-.944.921a1.89 1.89 0 0 0 0 2.704l.944.92-.016 1.32a1.89 1.89 0 0 0 1.912 1.911l1.318-.016.921.944a1.89 1.89 0 0 0 2.704 0l.92-.944 1.32.016a1.89 1.89 0 0 0 1.911-1.912l-.016-1.318.944-.921a1.89 1.89 0 0 0 0-2.704l-.944-.92.016-1.32a1.89 1.89 0 0 0-1.912-1.911z"/>
</svg></p></p>
                            </div><!-- / pricing-table-price -->
                            <div class="pricing-table-content">
                                <ul>
                                    <li>혼자 이용하기엔 부담스러웠던
									다양한 서비스를 공유해 보세요.</li>
                                </ul>
                                <div class="pricing-table-button">
                                    <a href="#x" class="btn btn-primary"><span>Get Started</span></a>
                                </div><!-- / pricing-table-button -->
                            </div><!-- / pricing-table-content -->
                        </div><!-- / pricing-table -->
                    </div><!-- / column -->

              
                </div><!-- / row -->
            </div><!-- / container -->
        </section><!-- / pricing -->

        <section id="testimonials" class="xl bg-white">
            <div class="container">
                <div class="text-center">
                    <h2 class="section-title mb-15" data-aos="fade-down">이번주 최다 리뷰!</h2>
                    <div class="spacer-line border-primary mb-80">&nbsp;</div>
                </div><!-- / text-center -->
                <div id="testimonials-swiper" class="swiper-container pagination-down">
                    <div class="swiper-wrapper">
                        <div class="swiper-slide">
                            <div class="card card-w-raised-img-top mb-0">
                                <div class="card-body text-center">
                                    <img class="card-raised-img-top mb-20 circle raised-sm" src="assets/images/ph-mini.jpg" alt="" style="max-width: 150px;">
                                    <p class="ratings mb-0">
                                        <i class="fas fa-star fs-12 va-middle"></i>
                                        <i class="fas fa-star va-middle"></i>
                                        <i class="fas fa-star fs-20 va-middle"></i>
                                        <i class="fas fa-star va-middle"></i>
                                        <i class="fas fa-star fs-12 va-middle"></i>
                                    </p><!-- / ratings -->
                                    <p class="card-text mb-15">Quisque porttitor vulputate eros, in feugiat lectus condimentum vel.</p>
                                    <p class="mb-0 fs-12 fw-regular">- Merida Swan</p>
                                </div><!-- / card-body -->
                            </div><!-- / card -->
                        </div><!-- / swiper-slide -->
                        <div class="swiper-slide">
                            <div class="card card-w-raised-img-top mb-0">
                                <div class="card-body text-center">
                                    <img class="card-raised-img-top mb-20 circle raised-sm" src="assets/images/ph-mini.jpg" alt="" style="max-width: 150px;">
                                    <p class="ratings mb-0">
                                        <i class="fas fa-star fs-12 va-middle"></i>
                                        <i class="fas fa-star va-middle"></i>
                                        <i class="fas fa-star-half-alt fs-20 va-middle"></i>
                                        <i class="fas fa-star va-middle"></i>
                                        <i class="fas fa-star fs-12 va-middle"></i>
                                    </p><!-- / ratings -->
                                    <p class="card-text mb-15">Quisque porttitor vulputate eros, in feugiat lectus condimentum vel.</p>
                                    <p class="mb-0 fs-12 fw-regular">- Harold Adams</p>
                                </div><!-- / card-body -->
                            </div><!-- / card -->
                        </div><!-- / swiper-slide -->
                        <div class="swiper-slide">
                           <div class="card card-w-raised-img-top mb-0">
                                <div class="card-body text-center">
                                    <img class="card-raised-img-top mb-20 circle raised-sm" src="assets/images/ph-mini.jpg" alt="" style="max-width: 150px;">
                                    <p class="ratings mb-0">
                                        <i class="fas fa-star fs-12 va-middle"></i>
                                        <i class="fas fa-star va-middle"></i>
                                        <i class="fas fa-star fs-20 va-middle"></i>
                                        <i class="fas fa-star va-middle"></i>
                                        <i class="fas fa-star fs-12 va-middle"></i>
                                    </p><!-- / ratings -->
                                    <p class="card-text mb-15">Quisque porttitor vulputate eros, in feugiat lectus condimentum vel.</p>
                                    <p class="mb-0 fs-12 fw-regular">- Sophia Perez</p>
                                </div><!-- / card-body -->
                            </div><!-- / card -->
                        </div><!-- / swiper-slide -->
                        <div class="swiper-slide">
                            <div class="card card-w-raised-img-top mb-0">
                                <div class="card-body text-center">
                                    <img class="card-raised-img-top mb-20 circle raised-sm" src="assets/images/ph-mini.jpg" alt="" style="max-width: 150px;">
                                    <p class="ratings mb-0">
                                        <i class="fas fa-star fs-12 va-middle"></i>
                                        <i class="fas fa-star va-middle"></i>
                                        <i class="far fa-star fs-20 va-middle"></i>
                                        <i class="fas fa-star va-middle"></i>
                                        <i class="fas fa-star fs-12 va-middle"></i>
                                    </p><!-- / ratings -->
                                    <p class="card-text mb-15">Quisque porttitor vulputate eros, in feugiat lectus condimentum vel..</p>
                                    <p class="mb-0 fs-12 fw-regular">- Larry Lin</p>
                                </div><!-- / card-body -->
                            </div><!-- / card -->
                        </div><!-- / swiper-slide -->
                        <div class="swiper-slide">
                            <div class="card card-w-raised-img-top mb-0">
                                <div class="card-body text-center">
                                    <img class="card-raised-img-top mb-20 circle raised-sm" src="assets/images/ph-mini.jpg" alt="" style="max-width: 150px;">
                                    <p class="ratings mb-0">
                                        <i class="fas fa-star fs-12 va-middle"></i>
                                        <i class="fas fa-star va-middle"></i>
                                        <i class="fas fa-star-half-alt fs-20 va-middle"></i>
                                        <i class="fas fa-star va-middle"></i>
                                        <i class="fas fa-star fs-12 va-middle"></i>
                                    </p><!-- / ratings -->
                                    <p class="card-text mb-15">Quisque porttitor vulputate eros, in feugiat lectus condimentum vel.</p>
                                    <p class="mb-0 fs-12 fw-regular">- Dianna Smiley</p>
                                </div><!-- / card-body -->
                            </div><!-- / card -->
                        </div><!-- / swiper-slide -->
                        <div class="swiper-slide">
                            <div class="card card-w-raised-img-top mb-0">
                                <div class="card-body text-center">
                                    <img class="card-raised-img-top mb-20 circle raised-sm" src="assets/images/ph-mini.jpg" alt="" style="max-width: 150px;">
                                    <p class="ratings mb-0">
                                        <i class="fas fa-star fs-12 va-middle"></i>
                                        <i class="fas fa-star va-middle"></i>
                                        <i class="far fa-star fs-20 va-middle"></i>
                                        <i class="fas fa-star va-middle"></i>
                                        <i class="fas fa-star fs-12 va-middle"></i>
                                    </p><!-- / ratings -->
                                    <p class="card-text mb-15">Quisque porttitor vulputate eros, in feugiat lectus condimentum vel.</p>
                                    <p class="mb-0 fs-12 fw-regular">- Jacob Ginnish</p>
                                </div><!-- / card-body -->
                            </div><!-- / card -->
                        </div><!-- / swiper-slide -->
                    </div><!-- / swiper-wrapper -->
                    <!-- Add Pagination -->
                    <div class="swiper-pagination"></div>
                </div><!-- / testimonials-swiper-2 -->
            </div><!-- / container -->
        </section><!-- / testimonials -->
  
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

    <!-- GLightbox -->
    <script src="<c:url value="/js/glightbox.min.js"/>"></script>
    <script>
        var lightboxVideo = GLightbox({
            selector: '.glightbox-video'
        });
    </script>
    <!-- / GLightbox -->


    <!-- Swiper Slider -->
    <script src="<c:url value="/js/swiper-bundle.min.js"/>"></script>
    <!-- swiper-init -->
    <script type="text/javascript">
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