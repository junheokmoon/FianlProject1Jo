<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<!DOCTYPE html>
<html lang="en">

<head>
<style>

.row v-center {
	background-color: gray;
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

.header-content {
	display: flex;
	justify-content: center; /* 가로 방향 중앙 정렬 */
	align-items: center; /* 세로 방향 중앙 정렬 */
	height: 100vh; /* 높이를 화면 높이와 동일하게 설정 */
}

.reviewWriteBox {
	width: 100%; /* 또는 원하는 최대 너비 */
	max-width: 1200px; /* 최대 너비를 설정하여 너무 넓어지는 것을 방지 */
	margin: 0 auto; /* 가운데 정렬 */
}

/* 부트스트랩 그리드 시스템을 사용하지 않을 경우 직접 너비를 설정 */
.reviewWriteBox .col-lg-6 {
	width: 100%; /* 부모 요소의 100% 너비를 차지하도록 설정 */
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
<body>
 
	<c:if test="${not empty program}">
	<header class="fh p-0 v-center bg-white" style="height: 75vh;">
    <div class="container">
        <div class="header-content">
            <div class="row v-center justify-content-center" style="background-color: aliceblue; height: 70vh;">
                <div class="col-lg-5 text-right">
                    <!-- 이미지 콘텐츠 -->
                    <img  src="<c:url value="${program.programImage}"/>" class="img-fluid z-index-2 relative rellax tablet-lg-hidden" data-rellax-speed="2" data-rellax-percentage="0.5">
                </div>
                <div class="col-lg-6 z-index-1">
                    <!-- 텍스트 콘텐츠 -->
                    <div class="page-title mb-0">${program.programName}</div>
                    <p class="lead w-80 m-y-30" data-aos="fade-in" data-aos-delay="100">${program.programDetail}</p>
                    <p>별점 평균 : ★★★★</p>
                    <p>tv프로그램</p>
                    <a href="#about-us" class="btn btn-outline-primary mr-5"><i class="fas fa-user mr-5"></i> <span>위티 참여하기</span></a>
                </div>
            </div>
        </div>
    </div>
</header>
    </c:if>



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


	<section class="reviewWriteBox"
		style="display: flex; justify-content: center;">
		<div class="col-lg-6 tablet-lg-top-45"
			style="justify-content: center;">
			<h2 class="mb-5" style="text-align: center;">작품에 대한 리뷰를 남겨주세요!</h2>
			<p class="lead mb-20" style="text-align: center;">리뷰는 위티들에게 도움이
				됩니다.</p>

			<div class="col-lg-6">
				<div id="reviewWriteBox" class="promo-box p-y-80 p-x-50"
					data-aos="fade-up" data-aos-delay="300">
					<form class="needs-validation" id="form-validation5"
						novalidate="novalidate">
						<div class="row">
							<div class="col-md-6">
								<div class="form-group">
									<p>평점 5개 만점!</p>
									<h5>★★★★★</h5>

								</div>
							</div>
							<div class="col-md-6">
								<div class="form-group"></div>
							</div>

						</div>
						<div class="form-group">
							<textarea id="contact-message6" class="form-control"
								name="inputMessage6" rows="5" placeholder="&#xf4ad; Message"
								required=""
								style="font-family: 'Font Awesome 5 Free', sans-serif !important; font-weight: 400; min-height: 115px; max-height: 150px;"></textarea>
						</div>
						<button type="submit" class="btn btn-primary btn-submit">리뷰등록</button>
					</form>
				</div>
			</div>
		</div>
	</section>

	<tbody>
							


	<%--
	for (int i = 0; i <= 10; i++) {
	--%>
	<c:forEach var="review" items="${reviewList}">
	<section class="reviewWriteBox"
		style="display: flex; justify-content: center;">
		<div class="col-lg-6 tablet-lg-top-45"
			style="justify-content: center;">
			<form class="needs-validation" id="form-validation5"
				novalidate="novalidate">
				<div class="row">
					<div class="col-md-6">

						<div style="display: flex; align-items: center;">
							<p>
								${review.reviewUserNo}<br>
							</p>
							<h5 style="color: orange; margin-right: 10px;">${review.reviewStar}</h5>
							<h7>${review.reviewDate}</h7>
						</div>
					</div>
					<div class="col-md-6">
						<div class="form-group"></div>
					</div>

				</div>
				<div class="text-group">
					<p id="contact-message6" class="form-control" name="inputMessage6"
						rows="5" placeholder="&#xf4ad; Message" required=""
						style="font-family: 'Font Awesome 5 Free', sans-serif !important; font-weight: 400; min-height: 115px; max-height: 150px;">${review.reviewComment}</p>
				</div>
				<button>리뷰 삭제</button>
				&nbsp;
				<button>리뷰 수정</button>
			</form>
		</div>
	</section>
	</c:forEach>
	
	
	
	<%--
	}
	--%>
	<button id="loadMore" style="display: block; margin: 20px auto;">더보기</button>

	
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


	<script>
	document.addEventListener("DOMContentLoaded", function() {
	    let reviews = document.querySelectorAll(".reviewWriteBox");
	    let loadMoreBtn = document.getElementById("loadMore");
	    let currentItem = 5; // 초기에 보여줄 리뷰의 수

	    // 초기 설정: 초과하는 항목 숨기기
	    for (let i = currentItem; i < reviews.length; i++) {
	        reviews[i].style.display = 'none';
	    }

	    // 더보기 버튼 클릭 이벤트
	    loadMoreBtn.addEventListener("click", function() {
	        let hiddenReviews = Array.from(reviews).filter(review => review.style.display === 'none');
	        for (let i = 0; i < currentItem && i < hiddenReviews.length; i++) {
	            hiddenReviews[i].style.display = 'flex'; // 'flex'로 변경하여 보이도록 설정
	        }

	        // 모든 리뷰가 보이게 되면 더보기 버튼 숨기기
	        if (Array.from(reviews).every(review => review.style.display === 'flex')) {
	            loadMoreBtn.style.display = 'none';
	        }
	    });
	});

	</script>
	<!-- / GLightbox -->

</body>
</html>