<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">

<head>

    <!-- Meta -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="MiOne - Minimal Landing Page Theme">
    <meta name="author" content="kingstudio.ro">
    <!-- Favicon -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    
    <link rel="icon" href='<c:url value ="images/favicon.png"/>'>
    <!-- Site Title -->
    <title>MiOne - Minimal Landing Page Theme</title>
    <!-- Bootstrap 5 Core CSS -->
    <link href="/css/bootstrap.min.css" rel="stylesheet">
    <!-- Custom Styles -->
    <link rel="stylesheet" href='<c:url value ="/css/animate.min.css"/>'>
    <link rel="stylesheet" href='<c:url value ="/css/aos.css"/>'>
    <link rel="stylesheet" href='<c:url value ="/css/glightbox.min.css"/>'>
    <link rel="stylesheet" href='<c:url value ="/css/style.css"/>'>
    <!-- Fonts -->
    <link rel="stylesheet" href='<c:url value ="/css/fontawesome-all.min.css"/>' type="text/css">
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
            <a class="navbar-brand" href="../index.html"><img src='<c:url value ="/images/logo.png"/>' alt=""></a>

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
            <h1 class="page-title mb-10">매123123표소</h1>
            <nav class="breadcrumb p-y-0 p-x-0 mb-0">
                <a class="breadcrumb-item" href="/withyFinal">Home</a>
                <span class="breadcrumb-item active">매표소</span>
            </nav><!-- / breadcrumb -->
            <p class="lead w-50 mt-15" data-aos="fade-in" data-aos-delay="100">파티 매칭을 하기 위해 필요한 티켓을 판매하는 매표소입니다!</p>
        </div><!-- / container -->
    </header>

    <div class="main-container p-0">

        <section id="portfolio" class="lg">
            <div class="container">
            
            	<div class="button-group filters-button-group">
                   <div id = "ottListDiv"></div>
                   <div id = "monthListDiv"></div>
                   <%--
                   <div>
                    <button class="btn filter-btn is-checked" data-filter="*">All</button>
                    <button class="btn filter-btn" data-filter=".netfilx">넷플릭스</button>
                    <button class="btn filter-btn" data-filter=".tving">티빙</button>
                    <button class="btn filter-btn" data-filter=".disney">디즈니+</button>
                    <button class="btn filter-btn" data-filter=".watcha">왓챠</button>
                    <button class="btn filter-btn" data-filter=".wavve">웨이브</button>
                   </div>
                   
                    --%>
               </div><!-- /  filters-button-group -->

			                
                <div class="row grid" data-isotope='{ "layoutMode": "masonry" }'>
                	
                	<div id="ticketListDiv"></div>
                    <div class="col-md-6 col-lg-4 grid-item netfilx onem">

                        	<div class="card raised">
                            	<div class="card-body text-center p-y-30">
                                    <img class="img-responsive" src='<c:url value= "/images/ph.jpg" />'alt="">
	                                <p class="card-title product-title fs-20 fw-bold"> <a href="#x" class="title-link primary-hover fs-20">넷플릭스 1개월 티켓</a></p>
	                                <p class="price-block fw-bold mb-20">$199.99</p>
	                                <div class="product-card-footer">
	                                    <a href="#x" class="btn btn-primary pill mt-15 p-x-45"><i class="fas fa-shopping-cart mr-5"></i> <span>구매하기</span></a>
	                                </div><!-- / product-card-footer -->
                            	</div><!-- / card-body -->
                        	</div><!-- / card -->
                    </div><!-- / column -->
                    
                    <div class="col-md-6 col-lg-4 grid-item tving ninem">
                       	<div class="card raised">
                           	<div class="card-body text-center p-y-30">
                                   <img class="img-responsive" src='<c:url value= "/images/ph.jpg" />'alt="">
                                <p class="card-title product-title fs-20 fw-bold"> <a href="#x" class="title-link primary-hover fs-20">티빙 9개월 티켓</a></p>
                                <p class="price-block fw-bold mb-20">$199.99</p>
                                <div class="product-card-footer">
                                    <a href="#x" class="btn btn-primary pill mt-15 p-x-45"><i class="fas fa-shopping-cart mr-5"></i> <span>Buy Now</span></a>
                                </div><!-- / product-card-footer -->
                           	</div><!-- / card-body -->
                       	</div><!-- / card -->
                    </div><!-- / column -->
                
                    <div class="col-md-6 col-lg-4 grid-item tving twelvem">
                       	<div class="card raised">
                           	<div class="card-body text-center p-y-30">
                                   <img class="img-responsive" src='<c:url value= "/images/ph.jpg" />'alt="">
                                <p class="card-title product-title fs-20 fw-bold"> <a href="#x" class="title-link primary-hover fs-20">티빙 12개월 티켓</a></p>
                                <p class="price-block fw-bold mb-20">$199.99</p>
                                <div class="product-card-footer">
	                                    <a href="#x" class="btn btn-primary pill mt-15 p-x-45"><i class="fas fa-shopping-cart mr-5"></i> <span>Buy Now</span></a>
                                </div><!-- / product-card-footer -->
                           	</div><!-- / card-body -->
                       	</div><!-- / card -->
                    </div><!-- / column -->

                    <div class="col-md-6 col-lg-4 grid-item wavve threem">
                        	<div class="card raised">
                            	<div class="card-body text-center p-y-30">
                                    <img class="img-responsive" src='<c:url value= "/images/ph.jpg" />'alt="">
	                                <p class="card-title product-title fs-20 fw-bold"> <a href="#x" class="title-link primary-hover fs-20">웨이브 3개월 티켓</a></p>
	                                <p class="price-block fw-bold mb-20">$199.99</p>
	                                <div class="product-card-footer">
	                                    <a href="#x" class="btn btn-primary pill mt-15 p-x-45"><i class="fas fa-shopping-cart mr-5"></i> <span>Buy Now</span></a>
	                                </div><!-- / product-card-footer -->
                            	</div><!-- / card-body -->
                        	</div><!-- / card -->
                    </div><!-- / column -->
                </div><!-- / row -->
                  
            </div><!-- / container -->
        </section><!-- / portfolio -->
        <section class="lg bg-white">
            <div class="cta p-0">
                <div class="container">
                    <div class="row v-center">
                        <div class="col-lg-6 left-area left-aligned tablet-center">
                            <h3 class="mb-5">저희 윗티를 처음 사용해보신다구요?</h3>
                            <p class="lead mb-0">가이드를 만들어 놨으니 이용해보세요!</p>
                        </div><!-- / column -->
                        <div class="col-lg-6 right-area right-aligned tablet-center">
                            <a href="#x" class="btn btn-primary"><i class="fas fa-paper-plane mr-5"></i>가이드로 이동</a>
                        </div><!-- / column -->
                    </div><!-- / row -->
                </div><!-- / container -->
            </div><!-- / cta -->
        </section>
    </div><!-- / main-container -->

    <div class="footer-wrapper bg-light">
        <div class="footer-widget-area bg-transparent">
            <div class="container">
                <div class="row">
                    <div class="col-md-6 col-xl-4">
                        <div class="widget">
                            <img src='<c:url value="/assets/images/logo.png"/>' class="footer-logo mb-20" alt="">
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

    <script type="text/javascript">
    
	var html = "";
    
    ottList();
    monthList();
    
    
    
    function ticketList(){
    	
    	$.ajax({
    		type:"get",
    		url:"<c:url value="/ticketBooth/ticket_list"/>",
    		dataType:"json",
    		success: function(result){
    			
    			if(result.length === 0){
    				html+="<div class='col-xl-100'>";
					html+=    "<div class='card w-raised-icon lg-icon'>";
					html+=        "<div class='card-body text-center p-y-30'>";
					html+=            "<div class='row'>";
					html+=                "<div class='col-md-12'>";
					html+=                    "<h5 class='card-title'>이런! 저희가 준비한 티켓이 다 떨어졌군요!</h5>";
					html+=                "</div>";<!-- / column -->
					html+=            "</div>";<!-- / row -->
					html+=        "</div>";<!-- / card-body -->
					html+=   "</div>";<!-- / card -->
					html+="</div>";<!-- / column -->
					$("#ticketListDiv").html(html);
    			};
    			if(result.length !== 0){
    				
    					result.forEach(function(ticket) {
    						
	    				let ottCode = ottChainger(ticket.ottkindDTO.ottCd);
    					let monthTx = monthChainger(ticket.ticketMonth);
                        
    					html+= "<div class='col-md-6 col-lg-4 grid-item "+ottCode+" "+monthTx+">";
    					html+= "	<div class='card raised'>";
    					html+= "		<div class='card-body text-center p-y-30'>";
    					html+= "     		<img class='img-responsive' src='<c:url value= "/images/ph.jpg" />'alt=''>";
    					html+= "    		<p class='card-title product-title fs-20 fw-bold'> <a href='#x' class='title-link primary-hover fs-20'>넷플릭스 1개월 티켓</a></p>";
    					html+= "        	<p class='price-block fw-bold mb-20'>$199.99</p>";
    					html+= "        	<div class='product-card-footer'>";
    					html+= "         		<a href='#x' class='btn btn-primary pill mt-15 p-x-45'><i class='fas fa-shopping-cart mr-5'></i> <span>구매하기</span></a>";
    					html+= "        	</div>";<!-- / product-card-footer -->
    					html+= "		</div>";<!-- / card-body -->
    					html+= "	</div>";<!-- / card -->
    					html+= "</div>";<!-- / column -->
                
						})
					$("#ticketListDiv").html(html);
    			};
    		},
    		error:function(xhr) {
				alert("에러코드(티켓 리스트 불러오기 오류) = "+xhr.status);
			}
    	});
    };
    
    function ottList(html){
    	
    	if(html===null||html===""){
    		
    		html=""
    	}
    	$.ajax({
    		type:"get",
    		url:"<c:url value="/ottkind/ottName_list"/>",
    		dataType:"json",
    		success: function(result){
    			var html="";
    			if(result.length === 0){
    				html+="<button class='btn filter-btn'>준비중</button>";
    			};	
    			
    			if(result.length !== 0){
    				html+="<button class='btn filter-btn is-checked' data-filter='*'>All</button>";
    				
    				result.forEach(function(ottName){
	    				let ottEnName = ottChainger(ottName);
	  			  		html+="<button class='btn filter-btn' data-filter='."+ottEnName+"'>"+ottName+"</button>";
    				})
    			};
                $("#ottListDiv").html(html);
    		},
    		error:function(xhr) {
				alert("에러코드(개월 수 리스트 불러오기 오류) = "+xhr.status);
			}
    	})
    };
    
    function monthList(html){
    	if(html===null||html===""){
    		
    		html="";
    	}
    	
    	$.ajax({
    		type:"get",
    		url:"<c:url value="/ticketBooth/ticket_month"/>",
    		dataType:"json",
    		success: function(result){
    			var html="";
    			if(result.length === 0){
    				
    				html+="<button class='btn filter-btn'>준비중</button>";
    				
    			};	
    			
    			if(result.length !== 0){
    				
    				result.forEach(function(monthNo){
	    				let monthTx = monthChainger(monthNo);
	  			  		html+="<button class='btn filter-btn' data-filter='."+monthTx+"'>"+monthNo+"개월</button>";
    				})
    				
    			};
                $("#monthListDiv").html(html);
    		},
    		error:function(xhr) {
				alert("에러코드(개월 수 리스트 불러오기 오류) = "+xhr.status);
			}
    	})
    };
    
    
    function monthChainger(monthNo) {
        switch (monthNo) {
            case 1:
                return "onem";
            case 3:
                return "threem";
            case 6:
                return "sixm";
            case 9:
                return "ninem";
            case 12:
                return "twelvem";
            default:
                return ""; // 기본값
        }
    };
    function ottChainger(ottName) { //이거 ottkind mapper 만드는 사람한테 select Distinct 해달라구 하기 그 값 가져와서 만들기 
        switch (ottName) {
            case "넷플릭스":
                return "netfilx";
            case "디즈니플러스":
                return "disney";
            case "왓챠":
                return "watcha";
            case "웨이브":
                return "wavve";
            case "티빙":
                return "tving";
            default:
                return ""; 
        }
    };

    </script>
    <!-- Core JavaScript -->
    <script src='<c:url value ="/js/bootstrap.bundle.min.js"/>'></script>
    <script src='<c:url value ="/js/theme.js"/>'></script>

    <!-- aos -->
    <script src='<c:url value ="/js/aos.js"/>'></script>
    <script>
        AOS.init({
          duration: 1200,
        })
    </script>
    <!-- / aos -->

    <!-- Nav-Scroll -->
    <script src='<c:url value ="/js/nav-fixed.js"/>'></script>
    <script src='<c:url value ="/js/scroll-top.js"/>'></script>
    <!-- / Nav-Scroll -->

    <!-- Isotope -->
    <script src='<c:url value ="/js/isotope.min.js"/>'></script>
    <script src='<c:url value ="/js/isotope-filter.js"/>'></script>
    <!-- / Isotope -->

    <!-- GLightbox -->
    <script src='<c:url value ="/js/glightbox.min.js"/>'></script>
    <script>
        var lightboxDescription = GLightbox({
            selector: '.project-details'
        });
    </script>
    <!-- / GLightbox -->
    

</body>
</html>