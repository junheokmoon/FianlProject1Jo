<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">

<head>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
</head>

<body>


    <div id="home"></div>


    <header class="w-absolute-nav bg-white text-left">
        <div class="container">
            <h1 class="page-title mb-10">매표소</h1>
            <nav class="breadcrumb p-y-0 p-x-0 mb-0">
                <a class="breadcrumb-item" href="/withyFinal">홈</a>
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
                </div><!-- /  filters-button-group -->

               <div id="ticketListDiv"></div>
                	 
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
                            <a href="/withyFinal/guide" class="btn btn-primary"><i class="fas fa-paper-plane mr-5"></i>가이드로 이동</a>
                        </div><!-- / column -->
                    </div><!-- / row -->
                </div><!-- / container -->
            </div><!-- / cta -->
        </section>
    </div><!-- / main-container -->

    <button type="button" id="back-top" class="btn btn-icon btn-circle btn-primary btn-floating raised-sm">
        <i class="fas fa-chevron-up"></i>
    </button>

    <script type="text/javascript">
    
    ottList();
    monthList();
    ticketList();
    
    function ticketList(){
        $.ajax({
            type:"get",
            url:"<c:url value="/ticketBooth/ticket_list"/>",
            dataType:"json",
            success: function(result){
                let html = "";
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
                } else {
                	 html += "<div class='row grid' data-isotope='{ \"layoutMode\": \"masonry\" }'>";
                    result.forEach(function(ticket) {
                        let ottEnName = ottChainger(ticket.ottkindDTO.ottName);
                        let monthTx = monthChainger(ticket.ticketMonth);
                        html+= "<div class='col-md-6 col-lg-3 grid-item "+ottEnName+" "+monthTx+"'>";
                        html+= "    <div class='card raised'>";
                        html+= "        <div class='card-body text-center p-y-30'>";
                        html+= "            <img class='img-responsive' src='"+ticket.ticketImage1+"' alt=''>";
                        html+= "            <p class='card-title product-title fs-20 fw-bold'> <a href='#x' class='title-link primary-hover fs-20'>"+ticket.ottkindDTO.ottName+" "+ticket.ticketMonth+"개월 티켓</a></p>";
                        html+= "            <p class='price-block fw-bold mb-20'>"+ticket.ticketPrice+"원</p>";
                        html+= "            <div class='product-card-footer'>";
                        html+= "                <a href='/withyFinal/payment/?ticketCode="+ticket.ticketCode+"' class='btn btn-primary pill mt-15 p-x-45'><i class='fas fa-shopping-cart mr-5'></i> <span>구매하기</span></a>";
                        html+= "            </div>";<!-- / product-card-footer -->
                        html+= "        </div>";<!-- / card-body -->
                        html+= "    </div>";<!-- / card -->
                        html+= "</div>";<!-- / column -->
                    });
                    html+="</div>";
                    $("#ticketListDiv").html(html);

                    $('.grid').isotope({
                        layoutMode: 'masonry',
                        itemSelector: '.grid-item'
                    });
                }
            },
            error: function(xhr) {
                alert("에러코드(티켓 리스트 불러오기 오류) = " + xhr.status);
            }
        });
    }
    
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
                $('.grid').isotope({
                    layoutMode: 'masonry',
                    itemSelector: '.grid-item'
                });
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
                return "netflix";
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
	<script src="<c:url value='/js/isotope.min.js'/>"></script>
	<script src="<c:url value='/js/isotope-filter.js'/>"></script>
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