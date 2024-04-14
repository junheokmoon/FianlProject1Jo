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
            <h1 class="page-title mb-10">결2제</h1>
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
			                        <h4 class="doc-main-title">결제 페이지</h4>
			                        <div class="doc-holder">
			                            <div class="doc-info bg-light">
			                             <div class="row">
			                              <div class="col-xl-4">
			                        		  <div class="card w-raised-icon lg-icon">
			                                     <div class="card-body text-center p-y-30">
			                                         <div class="raised-icon bg-white icon-lg pos-center circle raised">
			                                             <i class="far fa-user promo-icon text-success"></i>
			                                         </div><!-- / raised-icon -->
			                                         <!-- 
			                                          <div id="userInfoDiv"></div>
			                                          -->
			                                         <h5 class="card-title mt-40">고객 정보</h5>
			                                         <p class="card-text">고객이름 : ${userInfo.userName } </p> 
			                                         <p class="card-text">고객아이디: ${userInfo.userId }</p>
			                                         <p class="card-text">고객닉네임: ${userInfo.userNickname }</p>
			                                         <p class="card-text">고객전화번호: ${userInfo.userPhone }</p>
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
			                                         <p class="card-text">상품 이름 : ${ticketInfo.ottkindDTO.ottName} ${ticketInfo.ticketMonth }개월 티켓</p>
			                                         <p class="card-text">OTT : ${ticketInfo.ottkindDTO.ottName}</p>
			                                         <p class="card-text">기간 : ${ticketInfo.ticketMonth }개월</p>
			                                         <p class="card-text">요금 : ${ticketInfo.ticketPrice }원</p>
			                                     </div><!-- / card-body -->
			                                     
			                                  </div><!-- / card -->
			                              
			                              </div><!-- / column -->
			                              <div class="col-xl-4">
			                        		  <div class="card w-raised-icon lg-icon">
			                                     <div class="card-body text-center p-y-30">
			                                         <div class="raised-icon bg-white icon-lg pos-center circle raised">
			                                             <i class="fas fa-briefcase text-primary"></i>
			                                         </div><!-- / raised-icon -->
			                                         
			                                         <div id ="pointInfoDiv"></div>
			                                         <h5 class="card-title mt-40">포인트</h5>
			                                         <p class="card-text">현제 포인트 : ${userInfo.userPoint }</p>
			                                         <div class="input-group input-w-overlap-btn mb-0">
			                                             <input id = "usePointInput" type="number" step="10" class="form-control rounded-sm" placeholder="사용금액" min="0">
			                                             <span class="input-group-btn"> 
			                                                 <button id="pointUseButton" class="btn btn-sm btn-primary lh-0 overlapping-btn big-btn rounded-sm" type="button">사용</button>
			                                             </span><!-- / input-group-btn -->
			                                             <p id ="errorMessage" class="card-text" style="color : red;"></p>
			                                         </div><!-- / input-group -->
			                                         
			                                         <p id ="usePoint" class="card-text">사용 포인트 : 0</p>
			                                     </div><!-- / card-body -->
			                                     </div><!-- / card-body -->
			                                  </div><!-- / card -->
			                              </div><!-- / column -->
			                              
			                              <hr style="border-top: 1px solid #333333; width: 100%; margin: 20px 0;">
			                              
												<div class="col-xl-100 ">
												    <div class="card w-raised-icon lg-icon">
												        <div class="card-body p-y-30" style="height: 140px; overflow-y: hidden;">
												            <div class="row">
												                <div class="col-md-6">
												                    <h5 class="card-title ">상품 이름</h5>
												                    <div></div>
												                    <h5 class="card-title ">${ticketInfo.ottkindDTO.ottName} ${ticketInfo.ticketMonth }개월 티켓</h5>
												                    
												                </div><!-- / column -->
												
												                <div class="col-md-6 text-right">
												                    
												                    <h5 class="card-title">금액</h5>
												                    <h5 id="totalPrice" class="card-title">${ticketInfo.ticketPrice }원</h5>
												                </div><!-- / column -->
												            </div><!-- / row -->
												        </div><!-- / card-body -->
												    </div><!-- / card -->
												</div><!-- / column -->
			                             </div><!-- / row -->
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

	<script type="text/javascript">
	
	
	
	var totalPrice = 0;

	$('#usePointInput').on('input', function(event) {
		
		var userPoint = parseInt(${userInfo.userPoint});
		var selectPoint = parseInt($(this).val());
		
		if(selectPoint > userPoint){
			
			$(this).val(userPoint);
		}
	});
	
	
	$("#pointUseButton").click(function(event){
		var selectPoint = $("#usePointInput").val()
		
		let ticketPrice = parseInt(${ticketInfo.ticketPrice });
		
		if(selectPoint == 0 || selectPoint === ""){
			$("#usePoint").text("사용 포인트 : 0");
			$("#totalPrice").text(ticketPrice+"원");
			return;
		}
		
		$("#usePoint").text("사용 포인트 : " + selectPoint);
		
		totalPrice = ticketPrice-selectPoint;
		
		$("#totalPrice").text(ticketPrice + " - " + selectPoint + " = " + totalPrice + "원");
		
	});
	
	
	$("#payButton").click(function() {
		var pg=$(this).attr("id");
		//alert(pg);
		
		var IMP=window.IMP;
		//IMP 객체 초기화 - 가맹점 식별코드
		IMP.init("imp37020058");
		
		//주문번호 - 주문테이블에서 제공된 값 사용
		var merchantUid="merchant_"+new Date().getTime();
		//결제금액 - 주문테이블에서 제공된 값 사용
		var amount=10;
		
		//결제 전 주문번호와 결제금액을 세션에 저장하기 위한 페이지 요청
		// => 결제 후 결제정보와 비교하여 검증하기 위해 세션에 저장 
		$.ajax({
			type: "post",
			url: "<c:url value="/pay/payment"/>",
			contentType: "application/json",
			data: JSON.stringify({"merchantUid":merchantUid, "amount":amount}),
			dataType: "text",
			success: function(result) {
				if(result=="ok") {
					//결제를 요청하는 메소드 호출
					IMP.request_pay({
						// 결제 대행사 : kakaopay, html5_inicis, nice, jtnet, uplus, danal, payco 등
						pg : pg,
						// 결제 방식 : card(카드), samsung(삼성페이), trans(실시간계좌이체), vbank(가상계좌), phone(휴대폰소액결제)
						pay_method : "card",
						//주문번호
						merchant_uid : merchantUid,
						//결제금액
						amount : amount,
						//결제창에 보여질 제품명
						name: "컴퓨터",
						//결제 사용자의 이메일 주소 
			            buyer_email: "ocj1778@hanmail.net",
			            buyer_name: "홍길동",//결제 사용자 이름
			            buyer_tel: "010-1234-5678",//결제 사용자 전화번호
			            buyer_postcode: "123-456",//결제 사용자 우편번호
			            buyer_addr: "서울시 강남구 역삼동 내빌딩 4층 3강의실",//결제 사용자 주소
						//m_redirect_url: "http://localhost:8000:auth/payment/pay",//모바일의 리다이렉트 URL 주소
					}, function(response) {//결제 관련 응답 결과를 제공받아 처리하는 함수
						//response : 응답결과를 저장한 Object 객체
						if (response.success) {//결제한 경우
							//결제금액을 검증하기 위한 페이지를 요청
							$.ajax({
								type: "post",
								url: "<c:url value="/pay/complate"/>",
								contentType: "application/json",
								data: JSON.stringify({"impUid": response.imp_uid, "merchantUid": response.merchant_uid}),
								dataType: "text",
								success: function(result) {
									if(result == "success") {
										//결제 성공 페이지로 이동
										alert("결제 성공");
									} else {
										//결제 실패 페이지로 이동
										alert("결제 취소");
									}
								}, 
								error: function(xhr) {
									alert("에러 = "+xhr.status);
								}
							});
						}
					});
				}
			}, 
			error: function(xhr) {
				alert("에러 = "+xhr.status);
			}
		});
		
	});
	
	
	/*
	titleTextDiv()
	userInfo(userNo);
	ticketInfo(ticketCode);
	pointInfo();
	totalPrice();
    
    
	function userInfo(userNo) {

	$.ajax({
		type:"get",
		contentType: "application/json",
		url: "<c:url value="/payment/payment_user_data"/>",
		data: {"userNo": userNo},
		dataType: "json",
		success: function(user) { 
			
			userPoint = user.userPoint;
			
			var html = "<h5 class='card-title mt-40'>고객 정보</h5>";
				html +="<p class='card-text'>고객이름: "+user.userName+" </p>";
				html +="<p class='card-text'>고객아이디: "+user.userId+"</p>";
				html +="<p class='card-text'>고객닉네임: "+user.userName+"</p>";
				html +="<p class='card-text'>고객전화번호: "+user.userPhone+"</p>";
				
			$("#userInfoDiv").html(html);
			
		},
		error: function(xhr) {
			alert("에러코드(게시글 목록 검색) = "+xhr.status);
		}
	});
}
	function ticketInfo(ticketCode) {
		
		$.ajax({	
			type:"get",
			contentType: "application/json",
			url: "<c:url value="/ticketBooth/ticket_info"/>",
			data: {"ticketCode":ticketCode},
			dataType: "json",
			success: function(ticket) { 
				
				ticketPrice = ticket.ticketPrice;
				
				var html = "<h5 class='card-title mt-40'>주문 상품</h5>";
					html +="<p class='card-text'>티켓 이름 : "+ticket.ottkindDTO.ottName+" "+ticket.ticketMonth+"개월 티켓</p>";
					html +="<p class='card-text'>OTT : "+ticket.ottkindDTO.ottName+"</p>";
					html +="<p class='card-text'>기간 : "+ticket.ticketMonth+"개월</p>";
					html +="<p class='card-text'>요금 : "+ticketPrice+"</p>";
				
				$("#ticketInfoDiv").html(html);
				
				totalPrice();
			},
			error: function(xhr) {
				alert("에러코드(게시글 목록 검색) = "+xhr.status);
			}
		});
	}
	
	function pointInfo(){
		 
        var html = "<h5 class='card-title mt-40'>포인트</h5>";
        	html +="<p class='card-text'>현제 포인트 : 2000</p>";
        	html +="<div class='input-group input-w-overlap-btn mb-0'>";
        	html +="<input type='text' class='form-control rounded-sm' placeholder='사용금액'>";
        	html +="<span class='input-group-btn'>";
        	html +="<button class='btn btn-sm btn-primary lh-0 overlapping-btn big-btn rounded-sm' type='button'>사용</button>";
        	html +="</span>";<!-- / input-group-btn -->
        	html +="</div>";<!-- / input-group -->
        	html +="<p class='card-text'>사용 포인트 : 200</p>";
        $("#pointInfoDiv").html(html);
	}
	
	
	
	
	
	function totalPrice(){
		
		var html = "<h5 class='card-title'>"+ticketPrice+"-2000 = 18000원</h5>"
		
		$("#totalPriceDiv").html(html);
	}
*/	
	
	</script>



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