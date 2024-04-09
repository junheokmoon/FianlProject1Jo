<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<!DOCTYPE html>
<html lang="ko">
<style>

.doc-info {
    padding: 30px;
    border-top-left-radius: 6px;
    border-top-right-radius: 6px;
    }
 
 .doc-style2 .doc-result-footer {
    background-color: #fff;
    border-radius: 6px;
}
 
 .doc-result-footer {
    background-color: #ffffff;
    padding: 20px 30px;
    border-top: 1px solid #f1f4f7;
    border-bottom-left-radius: 6px;
    border-bottom-right-radius: 6px;
	}
    
</style>
<head>
    <!-- Meta -->
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="MiOne - Minimal Landing Page Theme">
    <meta name="author" content="kingstudio.ro">
    <!-- Favicon -->
    <link rel="icon" href="<c:url value="/images/favicon.png"/>">
    <!-- Site Title -->
    <title>MiOne - Minimal Landing Page Theme</title>
    <!-- Bootstrap 5 Core CSS -->
    <link href="<c:url value="/css/bootstrap.min.css"/>" rel="stylesheet">
    <!-- Custom Styles -->
    <link rel="stylesheet" href="<c:url value="/css/animate.min.css"/>">
    <link rel="stylesheet" href="<c:url value="/css/aos.css"/>">
    <link rel="stylesheet" href="<c:url value="/css/swiper-bundle.min.css"/>">
    <link rel="stylesheet" href="<c:url value="/css/style.css"/>">
    <!-- Fonts -->
    <link rel="stylesheet" href="<c:url value="/css/fontawesome-all.min.css"/>" type="text/css">
</head>

<body>

    <div id="loader-wrapper">
        <div id="loader"></div>
        <div class="loader-section section-left"></div>
        <div class="loader-section section-right"></div>
    </div>

    <div id="home"></div>

    <nav id="nav-scroll" class="navbar navbar-expand-lg navbar-light bg-white fixed-top">
        <div class="container">
            <a class="navbar-brand" href="/index.html"><img src="<c:url value="/images/logo.png"/>" alt=""></a>

            <button class="navbar-toggler collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#navbar-toggle-nav-center" aria-controls="navbar-toggle-nav-center" aria-expanded="false" aria-label="Toggle navigation">
                <span class="icon-bar top-bar"></span>
                <span class="icon-bar middle-bar"></span>
                <span class="icon-bar bottom-bar"></span>
                <span class="sr-only">Toggle navigation</span>
            </button><!-- / navbar-toggler -->
        </div><!-- / container -->
    </nav>

    <header class="page-header w-absolute-nav bg-white text-left">
        <div class="container">
            <h1 class="page-title mb-10">결제</h1>
            <nav class="breadcrumb p-y-0 p-x-0 mb-0">
                <a class="breadcrumb-item" href="/withyFinal/">홈</a>
                <a class="breadcrumb-item" href="/withyFinal/product">상품</a>
                <span class="breadcrumb-item active">결제</span>
            </nav><!-- / breadcrumb -->
            <p class="lead w-50 mt-15" data-aos="fade-in" data-aos-delay="100">[<strong>고객 닉네임</strong>]님! 저희 <strong>윗티</strong>를 이용해 주셔서 감사합니다!</p>
        </div><!-- / container -->
    </header>

    <div class="main-container p-0">

        <section id="about-me" class="lg">
            <div class="container">
			    <div class="productmain">
			        <div class="doc-container container-fluid">
			            <div class="row">
			                <div class="col-lg-12">
			                    <div id="cards" class="doc-wrapper">
			                        <h4 class="doc-main-title">결제 페이지<a href="#cards"><i class="fas fa-link"></i></a></h4>
			
			                        <p class="pt-30">[<strong>고객 닉네임</strong>]님! 저희 <strong>윗티</strong>를 이용해 주셔서 감사합니다!</p>
			
			                        <div class="doc-holder">
			                            <div class="doc-info bg-light">
			                             <div class="row">
			                              <div class="col-xl-4">
			                        		  <div class="card w-raised-icon lg-icon">
			                                     <div class="card-body text-center p-y-30">
			                                         <div class="raised-icon bg-white icon-lg pos-center circle raised">
			                                             <i class="far fa-user promo-icon text-success"></i>
			                                         </div><!-- / raised-icon -->
				                                         <h5 class="card-title mt-40">고객 정보</h5>
				                                         <p class="card-text">고객이름: 고길동 </p>  
				                                         <p class="card-text">고객아이디: 드래곤볼</p>
				                                         <p class="card-text">고객닉네임: 고길동</p>
				                                         <p class="card-text">고객전화번호: 010-3020-4122</p>
			                                	  	</div><!-- / card-body -->
			                                	 </div><!-- / card -->
			                                  </div><!-- / column -->
			                              <div class="col-xl-4">
			                        		  <div class="card w-raised-icon lg-icon">
			                                     <div class="card-body text-center p-y-30">
			                                         <div class="raised-icon bg-white icon-lg pos-center circle raised">
			                                             <i class="fas fa-briefcase text-primary"></i>
			                                         </div><!-- / raised-icon -->
			                                         <h5 class="card-title mt-40">주문 상품</h5>
			                                         <p class="card-text">상품 코드 : N3</p>
			                                         <p class="card-text">OTT : NETFLIX</p>
			                                         <p class="card-text">기간 : 3개월</p>
			                                         <p class="card-text">요금 : 20000</p>
			                                     </div><!-- / card-body -->
			                                  </div><!-- / card -->
			                              </div><!-- / column -->
			                              
			                              <div class="col-xl-4">
			                        		  <div class="card w-raised-icon lg-icon">
			                                     <div class="card-body text-center p-y-30">
			                                         <div class="raised-icon bg-white icon-lg pos-center circle raised">
			                                             <i class="fas fa-briefcase text-primary"></i>
			                                         </div><!-- / raised-icon -->
			                                         <h5 class="card-title mt-40">포인트</h5>
					                                         <p class="card-text">현제 포인트 : 2000</p>
					                                            <div class="input-group input-w-overlap-btn mb-0">
					                                                <input type="text" class="form-control rounded-sm" placeholder="사용금액">
					                                                <span class="input-group-btn">
					                                                    <button class="btn btn-sm btn-primary lh-0 overlapping-btn big-btn rounded-sm" type="button">사용</button>
					                                                </span><!-- / input-group-btn -->
					                                            </div><!-- / input-group -->
					                                         <p class="card-text">사용 포인트 : 200</p>
														<!-- modal -->
														<div class="modal fade default-modal" tabindex="-1" role="dialog">
														    <div class="modal-dialog modal-dialog-centered">
														        <div class="modal-content text-center">
														            <div class="modal-header">
														                <h5 class="modal-title">Default Modal</h5>
														                <button type="button" class="close" data-bs-dismiss="modal" aria-label="Close">
														                    <span aria-hidden="true">×</span>
														                </button>
														            </div><!-- / modal-header -->
														            <div class="modal-body">
														                <p>Modal body text goes here. Quisque a eros porta urna vulputate congue at in dui. Nulla sed sapien a velit vestibulum varius. Cras eu eros nibh commodo.</p>
														            </div><!-- / modal-body -->
														            <div class="modal-footer">
														                <button type="button" class="btn btn-sm btn-danger" data-bs-dismiss="modal"><i class="fas fa-times fs-14 mr-5"></i> <span>Close</span></button>
														                    <button type="button" class="btn btn-sm btn-success" data-bs-dismiss="modal"><i class="fas fa-check fs-14 mr-5"></i> <span>Save</span></button>
														            </div><!-- / modal-footer -->
														        </div><!-- / modal-content -->
														    </div><!-- / modal-dialog -->
														</div><!-- / modal -->
														<!-- / default-modal -->
			                                     </div><!-- / card-body -->
			                                  </div><!-- / card -->
			                              </div><!-- / column -->
			                              
			                              <hr style="border-top: 1px solid #333333; width: 100%; margin: 20px 0;">
			                              
												<div class="col-xl-100 ">
												    <div class="card w-raised-icon lg-icon">
												        <div class="card-body p-y-30">
												            <div class="row">
												                <div class="col-md-6">
												                    <h5 class="card-title ">결제2금액</h5>
												                </div><!-- / column -->
												
												                <div class="col-md-6 text-right">
												                    
												                    <h5 class="card-title">금액</h5>
												                    <h5 class="card-title">20000-2000 = 18000원</h5>
												                </div><!-- / column -->
												            </div><!-- / row -->
												        </div><!-- / card-body -->
												    </div><!-- / card -->
												</div><!-- / column -->
			                             </div><!-- / row -->
			                            </div><!-- / doc-info -->
			
			                            <div class="doc-result-footer text-center">
			                            <a href="#x" class="btn btn-primary pill">결제하기!</a>
			                            <a href="#x" class="btn btn-primary pill">당신은 결제를 취소할 수 없습니다.</a>
			                            </div><!-- / doc-result-footer -->
			
			                        </div><!-- / doc-holder -->
			                    </div><!-- / doc-wrapper -->
			                    <!-- / cards -->
			
			                </div><!-- / column -->
			            </div><!-- / row -->
			        </div><!-- / doc-container -->
			    </div><!-- / productmain -->
            </div><!-- / container -->
        </section>
        <!-- / about-me -->
    </div><!-- / main-container -->

    <div class="footer-wrapper bg-light">
        <div class="footer-widget-area bg-transparent">
            <div class="container">
                <div class="row">
                    <div class="col-md-6 col-xl-4">
                        <div class="widget">
                            <img src="/resources/images/logo.png" class="footer-logo mb-20" alt="">
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

    <!-- Rellax -->
    <script src="<c:url value="/js/rellax.min.js"/>"></script>
    <script>
        var rellax = new Rellax('.rellax');
    </script>
    <!-- / Rellax -->

    <!-- Swiper Slider -->
    <script src="<c:url value="/js/swiper-bundle.min.js"/>"></script>
    <!-- swiper-imit -->
    <script>
        var swiper = new Swiper('#testimonials-slider', {
          navigation: {
          nextEl: '.swiper-button-next',
          prevEl: '.swiper-button-prev',
          },
          keyboard: true,
        });
    </script>
    <!-- / Swiper Slider -->

</body>
</html>