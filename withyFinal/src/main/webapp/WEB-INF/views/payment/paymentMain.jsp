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
			                            <a href="/withyFinal/ticketBooth/" class="btn btn-primary pill">취소하기!</a>
			                            <button id ="kakaopay" type="button" class="btn btn-primary pill pay">간편결제하기!</button>
			                            <button id ="html5_inicis" type="button" class="btn btn-primary pill pay">결제하기!</button>
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

	<script type="text/javascript">
	
	
	
	var totalPrice = 0;

	$('#usePointInput').on('input', function(event) {
		
		let userPoint = parseInt(${userInfo.userPoint});
		let selectPoint = parseInt($(this).val());
		let ticketPrice = parseInt(${ticketInfo.ticketPrice });
		
		if(selectPoint > userPoint){
			
			$(this).val(userPoint);
		}
		
		if(ticketPrice < selectPoint){
			
			$(this).val(ticketPrice);
		}
		
	});
	
	
	$("#pointUseButton").click(function(event){
		let selectPoint = $("#usePointInput").val()
		let userPoint = parseInt(${userInfo.userPoint});
		let ticketPrice = parseInt(${ticketInfo.ticketPrice });
		
		if(selectPoint%10 != 0){
			selectPoint = Math.round(selectPoint/10)*10;
			
			if(selectPoint > userPoint){
				
				selectPoint -= 10;
			}
		}
		if(selectPoint > userPoint){
			
			$(this).val(userPoint);
			selectPoint = userPoint;
		}
		
		if(ticketPrice < selectPoint){
			
			$(this).val(ticketPrice);
		}
		
		if(selectPoint == 0 || selectPoint == ""){
			$("#usePoint").text("사용 포인트 : 0");
			$("#totalPrice").text(ticketPrice+"원");
			return;
		}
		
		$("#usePointInput").val(selectPoint);
		$("#usePoint").text("사용 포인트 : " + selectPoint);
		
		totalPrice = ticketPrice-selectPoint;
		$("#totalPrice").text(ticketPrice + " - " + selectPoint + " = " + totalPrice + "원");
		
	});
	/*
	$(".pay").click(function(event) {
		
			let paymentUserNo=parseInt(${userInfo.userNo});
			let paymentTicketCode=${ticketInfo.ticketCode};
			let paymentUsepoint = $("#usePointInput").val;
			
		if(totalPrice != 0){
			
			$.ajax({
				type: "post",
				url: "<c:url value='/payment/'/>",
				contentType: "application/json",
				data: JSON.stringify({"paymentUserNo":paymentUserNo, "paymentTicketCode":paymentTicketCode}
				, "paymentUsepoint":paymentUsepoint, "paymentPrice":totalPrice),
				dataType: "text",
				success: function(result) {
					if(result == "success") {
						
						window.location.href = "<c:url value='/payment/pointCompletePage'/>";
						
					
					}
				},
				error: function(xhr) {
					alert("에러코드(게시글 삽입) = "+xhr.status);
				}
			});
		}
		
		
		
	});
	
	*/
	
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