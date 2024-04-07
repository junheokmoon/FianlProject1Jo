<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
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
    <link rel="icon" href="<c:url value="/images/favicon.png"/>">
    <!-- Site Title -->
    <title>GUIDE</title>
	<link rel="stylesheet" href="<c:url value="/css/animate.min.css"/>">
    <link rel="stylesheet" href="<c:url value="/css/aos.css"/>">
    <link rel="stylesheet" href="<c:url value="/css/style.css"/>">
    <link rel="stylesheet" href="<c:url value="/css/prism.css"/>">
    <link rel="stylesheet" href="<c:url value="/css/doc.css"/>">
    <!-- Fonts -->
    <link rel="stylesheet" href="<c:url value="/css/fontawesome-all.min.css"/>" type="text/css">
        
    <style>	
	.width {
	    width: 12px;
    	height: 100%;
	}
	
	.subject {
	    -webkit-box-flex: 1;
	    flex-grow: 1;
	    text-align: left;
	    font-weight: bold;
	    color: var(--gray-700);
	    display: block;
	    font-size: 13px;
	    line-height: 20px;
	    margin: 0px;
	}	
	.notion-list {
	    font-size: 13px;
	    line-height: 20px;
	    margin: 0 0 4px;
	    list-style-type: disc;
   		padding-inline-start: 1.6em;
        margin-block-start: 0.6em;
   		margin-block-end: 0.6em;
	}
	
	.notion-list li {
		white-space: pre-wrap;
	}
	
	#nav-scroll2 {
	    position: fixed;
	    top: 110px;
	    left: 0;
	    width: 100%;
	    z-index: 1000; /* 네비게이션 바가 다른 요소들 위에 오도록 설정 */
		}
	
	.eOoFNS {
	    position: fixed;
	    bottom: 0px;
	    z-index: 10;
	    width: 100%;
	    max-width: 540px;
	    cursor: pointer;
	    box-sizing: border-box	  
   		inherit;
	}
	
	
	.NzttP {
	    position: absolute;
	    top: calc(-0px + -153px - env(safe-area-inset-bottom));
	    right: -1050px;
	    width: 88px;
	    height: 88px;
	}
    </style>    
</head>

<body class="maincontent" data-bs-spy="scroll" data-bs-target="#nav-scroll">

    <nav id="nav-scroll2" class="navbar navbar-expand-lg secondary-nav snav-tab navbar-light bg-white-frosted-dark sticky-top" >
        <div class="container">
            <button class="navbar-toggler collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#navbar-toggle-sticky-secondary" aria-controls="navbar-toggle-sticky-secondary" aria-expanded="false" aria-label="Toggle navigation">
            	<span class="icon-bar top-bar"></span>
                <span class="icon-bar middle-bar"></span>
                <span class="icon-bar bottom-bar"></span>
                <span class="sr-only">Toggle navigation</span>   
            </button><!-- / navbar-toggler -->

            <div class="collapse navbar-collapse" id="navbar-toggle-sticky-secondary">
                <ul class="navbar-nav m-auto">
                    <li class="nav-item">
                        <a class="nav-link" href="#base"><span>이용혜택</span></a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#buttons"><span>이용전 TIP</span></a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#features"><span>간단 설명서</span></a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#checkbox"><span>요금 가이드</span></a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#navigations"><span>자주 묻는 질문</span></a>
                    </li>
                    <li class="nav-item tablet-xl-hidden">
                        <a class="nav-link" href="../mypage/noticeDisplay.jsp"><span>공지사항</span></a>
                    </li>
                </ul><!-- / navbar-nav -->
            </div><!-- / navbar-collapse -->
          </div>
        </nav><!-- / navbar -->
    

  <div class="main-container" >
      <section id="base">
            <div class="container">  
             <h3>이용 혜택</h3>    
	       <div class="promo-box" data-aos="fade-up">
			<div class="accordion" id="accordionExample">
			    <div class="accordion-item">
			        <h2 class="accordion-header" id="headingOne">
			            <button class="accordion-button" type="button" data-bs-toggle="collapse" data-bs-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
			            <div class="icon">👫</div>
						<div class="subject"><span>&nbsp;&nbsp;파티장-파티원 자동 매칭 지원</span></div> <i class="fas fa-chevron-down"></i></button>
			        </h2><!-- / accordion-header -->
			        <div id="collapseOne" class="accordion-collapse collapse show" aria-labelledby="headingOne" data-bs-parent="#accordionExample">
			            <div class="accordion-body">
			            	<main class="notion">
								<ul class="notion-list">
									<li> 함께 볼 사람을 힘들게 구할 필요 없이 피클플러스가 <b>자동으로 매칭 </b>해줘요.</li>
								</ul>
								<ul class="notion-list">
									<li> 필요하다면 <b>직접 지인을 초대</b>해도 돼요.<br><b> 지인을 초대하면 피클 수수료 500원 할인 혜택</b>까지 받을 수 있어요.</li>
								</ul>
							</main>
			            </div><!-- / accordion-body -->
			        </div><!-- / collapse -->
			    </div><!-- / accordion-item -->
			</div><!-- / promo-box -->
			<div class="accordion-item">
			        <h2 class="accordion-header" id="headingTwo">
			            <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
			            <div class="icon">💳</div>
			            <div class="subject"><span>&nbsp;&nbsp;정산 스트레스 Zero</span></div><i class="fas fa-chevron-down"></i></button>
			        </h2><!-- / accordion-header -->
			        <div id="collapseTwo" class="accordion-collapse collapse" aria-labelledby="headingTwo" data-bs-parent="#accordionExample">
			            <div class="accordion-body">
			            	<main class="notion">
								<ul class="notion-list">
									<li> 매달 직접 챙기지 않아도 <b>자동으로 이용 요금을 정산 </b>해줘요.</li>
								</ul>
								<ul class="notion-list">
									<li> 파티장에게는 피클 수수료를 제외한 <b>파티원들의 이용 금액이 매달 계좌로 자동 입금</b> 돼요.</li>
								</ul>
								<ul class="notion-list">
									<li> 파티원의 이용 요금은 <b>매달 카드로 자동 결제 </b>돼요.</li>
								</ul>
							</main>
			            </div><!-- / accordion-body -->
			        </div><!-- / collapse -->
    		</div><!-- / accordion-item -->
    		<div class="accordion-item">
                 <h2 class="accordion-header" id="headingThree">
                     <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
                     <div class="icon">💵</div>
					 <div class="subject"><span>&nbsp;&nbsp;저렴한 금액에 화질은 최고</span></div> <i class="fas fa-chevron-down"></i></button>
                 </h2><!-- / accordion-header -->
                 <div id="collapseThree" class="accordion-collapse collapse" aria-labelledby="headingThree" data-bs-parent="#accordionExample">
                     <div class="accordion-body">
                     	<main class="notion">
							<ul class="notion-list">
								<li> 요금은 <b>혼자 볼 때 보다 최대 75% 저렴 </b>하지만 화질은 <b>4K 최고 화질</b>로 이용할 수 있어요.</li>
							</ul>
						</main>
                     </div><!-- / accordion-body -->
                 </div><!-- / collapse -->
             </div><!-- / accordion-item -->
             <div class="accordion-item">
                 <h2 class="accordion-header" id="headingFour">
                     <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseFour" aria-expanded="false" aria-controls="collapseFour">
                     <div class="icon">🔐</div>
					 <div class="subject"><span>&nbsp;&nbsp;파티장 정산금 100% 보장</span></div>		
			 		<i class="fas fa-chevron-down"></i></button>
                 </h2><!-- / accordion-header -->
                 <div id="collapseFour" class="accordion-collapse collapse" aria-labelledby="headingFour" data-bs-parent="#accordionExample">
                     <div class="accordion-body">
                     	<main class="notion">
							<ul class="notion-list">
								<li> 파티원이 다 모이지 않아도 <b>파티장 정산금은 매달 피클플러스가 보장하고 입금</b>해 드려요.</li>
								<li> 다른 곳에는 없는 <b>피클플러스만의 특별한 제도</b>에요.</li>
							</ul>
						</main>
                     </div><!-- / accordion-body -->
                 </div><!-- / collapse -->
             </div><!-- / accordion-item -->
             <div class="accordion-item">
                 <h2 class="accordion-header" id="headingFive">
                     <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseFive" aria-expanded="false" aria-controls="collapseFive">
                     <div class="icon">🚀</div>
					 <div class="subject"><span>&nbsp;&nbsp;가장 빠른 업계 1위 서비스</span></div>		
			 		<i class="fas fa-chevron-down"></i></button>
                 </h2><!-- / accordion-header -->
                 <div id="collapseFive" class="accordion-collapse collapse" aria-labelledby="headingFive" data-bs-parent="#accordionExample">
                     <div class="accordion-body">
                     	<main class="notion">
							<ul class="notion-list">
								<li> 40만 명 이상이 가입한 업계 1위 서비스로,<b>매칭 시간이 가장 짧아 빠르게 이용 </b>할 수 있어요.</li>
							</ul>
						</main>
                     </div><!-- / accordion-body -->
                 </div><!-- / collapse -->
             </div><!-- / accordion-item -->
             <div class="accordion-item">
                 <h2 class="accordion-header" id="headingSix">
                     <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseSix" aria-expanded="false" aria-controls="collapseSix">
                    <div class="icon">🙆‍♀️</div>
					<div class="subject"><span>&nbsp;&nbsp;필요한 만큼만 이용해도 OK</span></div>	
			 		<i class="fas fa-chevron-down"></i></button>
                 </h2><!-- / accordion-header -->
                 <div id="collapseSix" class="accordion-collapse collapse" aria-labelledby="headingSix" data-bs-parent="#accordionExample">
                     <div class="accordion-body">
                     	<main class="notion">
							<ul class="notion-list">
								<li> 파티장은 이용 기간에 상관없이 언제든지 파티를 해산할 수 있어요.파티 해산 시에는 <br><b> 공유한 일자만큼 계산해 정산금을 입금해 드려요. </b></li>
								<li> 파티원은 파티를 이용한지 30일이 지나면 언제든지 탈퇴할 수 있어요. 파티 탈퇴 시 <br> 에는<b> 남은 일자만큼 계산해 결제금을 환불해 드려요. </b></li>
							</ul>
						</main>
                     </div><!-- / accordion-body -->
                 </div><!-- / collapse -->
             </div><!-- / accordion-item -->
		</div>
	  </div>
  </section>

        <div class="spacer-1x">&nbsp;</div>

        <section id="buttons">
            <div class="container">
                <h3 class="mb-30">이용전 TIP</h3>
                <div class="promo-box" data-aos="fade-up">
                    <div class="accordion" id="accordionExample">
			    <div class="accordion-item">
			        <h2 class="accordion-header" id="headingOne">
			            <button class="accordion-button" type="button" data-bs-toggle="collapse" data-bs-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
			           <div class="icon">🤝</div>
						<div class="subject"><span>&nbsp;&nbsp;파티원 이럴 때 추천해요</span></div>	
						<i class="fas fa-chevron-down"></i></button>
			        </h2><!-- / accordion-header -->
			        <div id="collapseOne" class="accordion-collapse collapse show" aria-labelledby="headingOne" data-bs-parent="#accordionExample">
			            <div class="accordion-body">
			            	<main class="notion">
								<ul class="notion-list">
									<li> 무엇보다 <b>편한 게 최고 </b>일 때:공유 계정을 관리하지 않아도 돼요.</li>
								</ul>
								<ul class="notion-list">
									<li> <b>지출 관리를 심플하게</b> 하고 싶을 때:내 이용 금액만큼만 카드 결제돼요.</li>
								</ul>
							</main>
			            </div><!-- / accordion-body -->
			        </div><!-- / collapse -->
			    </div><!-- / accordion-item -->
			</div><!-- / promo-box -->
			<div class="accordion-item">
			        <h2 class="accordion-header" id="headingTwo">
			            <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
			            <div class="icon">👯</div>
						<div class="subject"><span>&nbsp;&nbsp;아는 사람과 함께 쓰기</span></div>	
			            <i class="fas fa-chevron-down"></i></button>
			        </h2><!-- / accordion-header -->
			        <div id="collapseTwo" class="accordion-collapse collapse" aria-labelledby="headingTwo" data-bs-parent="#accordionExample">
			            <div class="accordion-body">
			            	<main class="notion">
								<ul class="notion-list">
									<li> 친구,가족,지인과도 피클플러스를 통해 편하게 계정을 공유할 수 있어요.</li>
								</ul>
								<ul class="notion-list">
									<li> 파티장:파티 생성 후 지인에게 초대 링크를 보내 직접 매칭해요.</li>
								</ul>
								<ul class="notion-list">
									<li> 파티원:파티장에게 받은 초대 링크를 통해 파티에 참여해요.</li>
								</ul>
								<ul class="notion-list">
									<li> 초대한 파티장과 초대받은 파티원 모두 <b>수수료가 500원씩 할인</b>돼요!</li>
								</ul>
							</main>
			            </div><!-- / accordion-body -->
			        </div><!-- / collapse -->
    		</div><!-- / accordion-item -->
    		<div class="accordion-item">
                 <h2 class="accordion-header" id="headingThree">
                     <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
                     <div class="icon">🎁</div>
					 <div class="subject"><span>&nbsp;&nbsp;피클 수수료 할인받는 법</span></div>	
					 <i class="fas fa-chevron-down"></i></button>
                 </h2><!-- / accordion-header -->
                 <div id="collapseThree" class="accordion-collapse collapse" aria-labelledby="headingThree" data-bs-parent="#accordionExample">
                     <div class="accordion-body">
                     	<main class="notion">
							<ul class="notion-list">
								<li> 파티장:파티원을 <b>1명이라도 직접 초대</b>하면 수수료가 무료에요.(490원→0원)</li>
							</ul>
							<ul class="notion-list">
								<li> 파티원:파티장에게 <b>초대받아 파티에 참여</b>하면 수수료가 500원 할인돼요.(990원<br>→490원)</li>
							</ul>
						</main>
                     </div><!-- / accordion-body -->
                 </div><!-- / collapse -->
             </div><!-- / accordion-item -->
             <div class="accordion-item">
                 <h2 class="accordion-header" id="headingFour">
                     <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseFour" aria-expanded="false" aria-controls="collapseFour">
                     <div class="icon">🔐</div>
					 <div class="subject"><span>&nbsp;&nbsp;파티장 정산금 100% 보장</span></div>		
			 		<i class="fas fa-chevron-down"></i></button>
                 </h2><!-- / accordion-header -->
                 <div id="collapseFour" class="accordion-collapse collapse" aria-labelledby="headingFour" data-bs-parent="#accordionExample">
                     <div class="accordion-body">
                     	<main class="notion">
							<ul class="notion-list">
								<li> 파티원이 다 모이지 않아도 <b>파티장 정산금은 매달 피클플러스가 보장하고 입금</b>해 드려요.</li>
								<li> 다른 곳에는 없는 <b>피클플러스만의 특별한 제도</b>에요.</li>
							</ul>
						</main>
                     </div><!-- / accordion-body -->
                 </div><!-- / collapse -->
             </div><!-- / accordion-item -->
             <div class="accordion-item">
                 <h2 class="accordion-header" id="headingFive">
                     <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseFive" aria-expanded="false" aria-controls="collapseFive">
                     <div class="icon">🚀</div>
					 <div class="subject"><span>&nbsp;&nbsp;가장 빠른 업계 1위 서비스</span></div>		
			 		<i class="fas fa-chevron-down"></i></button>
                 </h2><!-- / accordion-header -->
                 <div id="collapseFive" class="accordion-collapse collapse" aria-labelledby="headingFive" data-bs-parent="#accordionExample">
                     <div class="accordion-body">
                     	<main class="notion">
							<ul class="notion-list">
								<li> 40만 명 이상이 가입한 업계 1위 서비스로,<b>매칭 시간이 가장 짧아 빠르게 이용 </b>할 수 있어요.</li>
							</ul>
						</main>
                     </div><!-- / accordion-body -->
                 </div><!-- / collapse -->
             </div><!-- / accordion-item -->
		</div>
	  </div>
  </section>
		
        <div class="spacer-1x">&nbsp;</div>

        <section id="features">
            <div class="container">
                <h3 class="mb-30">간단 설명서</h3>
                <div class="promo-box">
                    <div class="accordion" id="accordionExample">
			    <div class="accordion-item">
			        <h2 class="accordion-header" id="headingOne">
			            <button class="accordion-button" type="button" data-bs-toggle="collapse" data-bs-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
			           <div class="icon">🤝</div>
						<div class="subject"><span>&nbsp;&nbsp;파티원 이럴 때 추천해요</span></div>	
						<i class="fas fa-chevron-down"></i></button>
			        </h2><!-- / accordion-header -->
			        <div id="collapseOne" class="accordion-collapse collapse show" aria-labelledby="headingOne" data-bs-parent="#accordionExample">
			            <div class="accordion-body">
			            	<main class="notion">
								<ul class="notion-list">
									<li> 무엇보다 <b>편한 게 최고 </b>일 때:공유 계정을 관리하지 않아도 돼요.</li>
								</ul>
								<ul class="notion-list">
									<li> <b>지출 관리를 심플하게</b> 하고 싶을 때:내 이용 금액만큼만 카드 결제돼요.</li>
								</ul>
							</main>
			            </div><!-- / accordion-body -->
			        </div><!-- / collapse -->
			    </div><!-- / accordion-item -->
			</div><!-- / promo-box -->
			<div class="accordion-item">
			        <h2 class="accordion-header" id="headingTwo">
			            <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
			            <div class="icon">👯</div>
						<div class="subject"><span>&nbsp;&nbsp;아는 사람과 함께 쓰기</span></div>	
			            <i class="fas fa-chevron-down"></i></button>
			        </h2><!-- / accordion-header -->
			        <div id="collapseTwo" class="accordion-collapse collapse" aria-labelledby="headingTwo" data-bs-parent="#accordionExample">
			            <div class="accordion-body">
			            	<main class="notion">
								<ul class="notion-list">
									<li> 친구,가족,지인과도 피클플러스를 통해 편하게 계정을 공유할 수 있어요.</li>
								</ul>
								<ul class="notion-list">
									<li> 파티장:파티 생성 후 지인에게 초대 링크를 보내 직접 매칭해요.</li>
								</ul>
								<ul class="notion-list">
									<li> 파티원:파티장에게 받은 초대 링크를 통해 파티에 참여해요.</li>
								</ul>
								<ul class="notion-list">
									<li> 초대한 파티장과 초대받은 파티원 모두 <b>수수료가 500원씩 할인</b>돼요!</li>
								</ul>
							</main>
			            </div><!-- / accordion-body -->
			        </div><!-- / collapse -->
    		</div><!-- / accordion-item -->
    		<div class="accordion-item">
                 <h2 class="accordion-header" id="headingThree">
                     <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
                     <div class="icon">🎁</div>
					 <div class="subject"><span>&nbsp;&nbsp;피클 수수료 할인받는 법</span></div>	
					 <i class="fas fa-chevron-down"></i></button>
                 </h2><!-- / accordion-header -->
                 <div id="collapseThree" class="accordion-collapse collapse" aria-labelledby="headingThree" data-bs-parent="#accordionExample">
                     <div class="accordion-body">
                     	<main class="notion">
							<ul class="notion-list">
								<li> 파티장:파티원을 <b>1명이라도 직접 초대</b>하면 수수료가 무료에요.(490원→0원)</li>
							</ul>
							<ul class="notion-list">
								<li> 파티원:파티장에게 <b>초대받아 파티에 참여</b>하면 수수료가 500원 할인돼요.(990원<br>→490원)</li>
							</ul>
						</main>
                     </div><!-- / accordion-body -->
                 </div><!-- / collapse -->
             </div><!-- / accordion-item -->
             <div class="accordion-item">
                 <h2 class="accordion-header" id="headingFour">
                     <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseFour" aria-expanded="false" aria-controls="collapseFour">
                     <div class="icon">🔐</div>
					 <div class="subject"><span>&nbsp;&nbsp;파티장 정산금 100% 보장</span></div>		
			 		<i class="fas fa-chevron-down"></i></button>
                 </h2><!-- / accordion-header -->
                 <div id="collapseFour" class="accordion-collapse collapse" aria-labelledby="headingFour" data-bs-parent="#accordionExample">
                     <div class="accordion-body">
                     	<main class="notion">
							<ul class="notion-list">
								<li> 파티원이 다 모이지 않아도 <b>파티장 정산금은 매달 피클플러스가 보장하고 입금</b>해 드려요.</li>
								<li> 다른 곳에는 없는 <b>피클플러스만의 특별한 제도</b>에요.</li>
							</ul>
						</main>
                     </div><!-- / accordion-body -->
                 </div><!-- / collapse -->
             </div><!-- / accordion-item -->
            </div>
           </div>
        </section>
  	
   <div class="spacer-1x">&nbsp;</div>                

        <section id="checkbox">
            <div class="container">
                <!-- checkbox and radio -->
                <h3 class="mb-30">요금 가이드</h3>
                <div class="promo-box">
                    <div class="accordion" id="accordionExample">
			    <div class="accordion-item">
			        <h2 class="accordion-header" id="headingOne">
			            <button class="accordion-button" type="button" data-bs-toggle="collapse" data-bs-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
			           		<div class="icon">🧾</div>
							<div class="subject"><span>&nbsp;&nbsp;이용 요금표</span></div>		
						<i class="fas fa-chevron-down"></i></button>
			        </h2><!-- / accordion-header -->
			        <div id="collapseOne" class="accordion-collapse collapse show" aria-labelledby="headingOne" data-bs-parent="#accordionExample">
			            <div class="accordion-body">
							<main class="notion">
								<ul class="notion-list">
									<li> 이용 요금은 <b>프리미엄 이용권 가격을 4로 나눈 금액 + 피클 수수료 </b>로 구성돼요.</li>
								</ul>
								<ul class="notion-list">
									<li> 피클 수수료는 <b>파티장 490원·파티원 990원</b>으로 역할에 따라 달라요.</li>
								</ul>
							</main>			            
						</div><!-- / accordion-body -->
			        </div><!-- / collapse -->
			    </div><!-- / accordion-item -->
			</div><!-- / promo-box -->
			<div class="accordion-item">
			        <h2 class="accordion-header" id="headingTwo">
			            <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
			            <div class="icon">🔁</div>
						<div class="subject"><span>&nbsp;&nbsp;파티장 정산금</span></div>					            
						<i class="fas fa-chevron-down"></i></button>
			        </h2><!-- / accordion-header -->
			        <div id="collapseTwo" class="accordion-collapse collapse" aria-labelledby="headingTwo" data-bs-parent="#accordionExample">
			            <div class="accordion-body">
			            	<main class="notion">
								<ul class="notion-list">
									<li> 피클 수수료를 제외한 <b>파티원들의 이용 금액(정산금)을 파티장 계좌로 입금해 드려요.</b></li>
								</ul>
								<ul class="notion-list">
									<li> 파티장 정산금은 파티를 개설할 때 <b>설정한 파티원 수에 따라 달라져요.</b></li>
								</ul>
								<ul class="notion-list">
									<li> 기본 파티 구성은 <b>파티장 1명+파티원 3명이에요.</b></li>
								</ul>
							</main>
			            </div><!-- / accordion-body -->
			           </div><!-- / collapse -->
    				</div><!-- / accordion-item -->
                </div><!-- / promo-box -->
            </div><!-- / container -->
        </section>
        <!-- / checkbox -->

        <div class="spacer-1x">&nbsp;</div>

        <section id="navigations">
            <div class="container">
                <h3 class="mb-30">FAQ</h3>
            	<div class="promo-box">
         			<div class="accordion" id="accordionExample">
                                    <div class="accordion-item">
                                        <h2 class="accordion-header" id="headingOne">
                                            <button class="accordion-button" type="button" data-bs-toggle="collapse" data-bs-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne">Q1. ? <i class="fas fa-chevron-down"></i></button>
                                        </h2><!-- / accordion-header -->
                                        <div id="collapseOne" class="accordion-collapse collapse show" aria-labelledby="headingOne" data-bs-parent="#accordionExample">
                                            <div class="accordion-body">
                                                 Vivamus ut vestibulum quam. Duis at urna convallis, porta odio ac, varius ex. Cras ultrices quam eros, vitae auctor enim luctus at. Sed facilisis, ante eu malesuada consectetur, nunc dolor bibendum eros, eu suscipit nisl elit in arcu vulputate.
                                            </div><!-- / accordion-body -->
                                        </div><!-- / collapse -->
                                    </div><!-- / accordion-item -->

                                    <div class="accordion-item">
                                        <h2 class="accordion-header" id="headingTwo">
                                            <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">Q2. ? <i class="fas fa-chevron-down"></i></button>
                                        </h2><!-- / accordion-header -->
                                        <div id="collapseTwo" class="accordion-collapse collapse" aria-labelledby="headingTwo" data-bs-parent="#accordionExample">
                                            <div class="accordion-body">
                                                 Vivamus ut vestibulum quam. Duis at urna convallis, porta odio ac, varius ex. Cras ultrices quam eros, vitae auctor enim luctus at. Sed facilisis, ante eu malesuada consectetur, nunc dolor bibendum eros, eu suscipit nisl elit in arcu vulputate.
                                            </div><!-- / accordion-body -->
                                        </div><!-- / collapse -->
                                    </div><!-- / accordion-item -->

                                    <div class="accordion-item">
                                        <h2 class="accordion-header" id="headingThree">
                                            <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseThree" aria-expanded="false" aria-controls="collapseThree">Q3. ? <i class="fas fa-chevron-down"></i></button>
                                        </h2><!-- / accordion-header -->
                                        <div id="collapseThree" class="accordion-collapse collapse" aria-labelledby="headingThree" data-bs-parent="#accordionExample">
                                            <div class="accordion-body">
                                                 Vivamus ut vestibulum quam. Duis at urna convallis, porta odio ac, varius ex. Cras ultrices quam eros, vitae auctor enim luctus at. Sed facilisis, ante eu malesuada consectetur, nunc dolor bibendum eros, eu suscipit nisl elit in arcu vulputate.
                                            </div><!-- / accordion-body -->
                                        </div><!-- / collapse -->
                                    </div><!-- / accordion-item -->
                                </div><!-- / accordion -->
				</div><!-- / promo-box -->	
			 </div><!-- / container -->			
		</section>
	</div>
   
   		<div class="sc-imtoHe eOoFNS">
		<a href="#"><img src="<c:url value="/images/inquiry.jpg"/>" alt="1:1문의" class="sc-gOMZtR NzttP"></a>
		</div>
   
      	   
   
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

    <!-- prism -->
    <script src="<c:url value="/js/prism.js"/>"></script>
    <!-- / prism -->

    <!-- copy-to-clipboard -->
    <script src="<c:url value="/js/clipboard.min.js"/>"></script>
    <script>
        var clipboard = new ClipboardJS('.btn');

        clipboard.on('success', function(e) {
            console.log(e);
            e.clearSelection();
        });

        clipboard.on('error', function(e) {
            console.log(e);
            e.clearSelection();
        });
    </script>
    <!-- / copy-to-clipboard -->
</body>
</html>