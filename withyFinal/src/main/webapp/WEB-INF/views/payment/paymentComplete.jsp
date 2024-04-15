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
    
  .card-body {
    height: 340px; 
    overflow-y: hidden; 
}
</style>
<head>
    <meta charset="UTF-8">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    
    
</head>

<body>

    <div id="home"></div>

    <header class="w-absolute-nav bg-white text-left">
        <div class="container">
            <h1 class="page-title mb-10">결제</h1>
            <nav class="breadcrumb p-y-0 p-x-0 mb-0">
                <a class="breadcrumb-item" href="/withyFinal/">홈</a>
                <a class="breadcrumb-item" href="/withyFinal/ticketBooth/">상품</a>
                <span class="breadcrumb-item active">결제</span>
            </nav><!-- / breadcrumb -->
            <div id = "titleTextDiv"></div>
            <p class="lead w-50 mt-15" data-aos="fade-in" data-aos-delay="100">[<strong>${userInfo.userNickname }</strong>]님! 저희 <strong>윗티</strong>를 이용해 주셔서 감사합니다!</p>
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
			                        <div class="doc-holder">
			                            <div class="doc-info bg-light">
			                            </div><!-- / doc-info -->
			
			                            <div class="doc-result-footer text-center">
			                            <button id ="payButton" type="button" class="btn btn-primary pill">결제하기!</button>
			                            <a href="/withyFinal/ticketBooth/" class="btn btn-primary pill">당신은 결제를 취소할 수 없습니다.</a>
			                            </div><!-- / doc-result-footer -->
			
			                        </div><!-- / doc-holder -->
			                    </div><!-- / doc-wrapper -->
			                    <!-- / cards -->
			
			            </div><!-- / row -->
			        </div><!-- / doc-container -->
			    </div><!-- / productmain -->
            </div><!-- / container -->
        </section>
            
        <!-- / about-me -->
    </div><!-- / main-container -->

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