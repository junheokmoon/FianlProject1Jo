<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"  %>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<!DOCTYPE html>
<html>
<style>
.effect mainnav-lg {
	vertical-align: top;
	display: table-cell;
}
	
.navbar-brand22 {
	float: left;
	height: 100px;
	padding: 15px 55px;
	font-size: 18px;
	line-height: 20px;
}
/* 
#mainnav-menu-wrap {
	margin-top: -50px;
	padding-top: 130px;
} */

.nano2 {
  position: relative;
  top: 80px;
  width: 100%;
  height: 100%;
  overflow: hidden;
}
</style>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Dashboard | Nifty - Responsive admin template.</title>

    <!--STYLESHEET-->
    <!--=================================================-->

    <!--Open Sans Font [ OPTIONAL ] -->
    <link href="http://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700&amp;subset=latin" rel="stylesheet">

    <!--Bootstrap Stylesheet [ REQUIRED ]-->
    <link href="css/bootstrap.min.css" rel="stylesheet">

    <!--Nifty Stylesheet [ REQUIRED ]-->
    <link href="css/nifty.min.css" rel="stylesheet">

    <!--Font Awesome [ OPTIONAL ]-->
    <link href="plugins/font-awesome/css/font-awesome.min.css" rel="stylesheet">

    <!--Animate.css [ OPTIONAL ]-->
    <link href="plugins/animate-css/animate.min.css" rel="stylesheet">

    <!--Morris.js [ OPTIONAL ]-->
    <link href="plugins/morris-js/morris.min.css" rel="stylesheet">

    <!--Switchery [ OPTIONAL ]-->
    <link href="plugins/switchery/switchery.min.css" rel="stylesheet">

    <!--Bootstrap Select [ OPTIONAL ]-->
    <link href="plugins/bootstrap-select/bootstrap-select.min.css" rel="stylesheet">

    <!--Demo script [ DEMONSTRATION ]-->
    <link href="css/demo/nifty-demo.min.css" rel="stylesheet">

    <!--SCRIPT-->
    <!--=================================================-->

    <!--Page Load Progress Bar [ OPTIONAL ]-->
    <link href="plugins/pace/pace.min.css" rel="stylesheet">
    <script src="plugins/pace/pace.min.js"></script>

</head>

<body>
	<div id="container" class="effect mainnav-lg">
		<header id="navbar">
			<div id="navbar-container" class="boxed">
			
				<!--Brand logo & name-->
				<!--================================-->
				<!-- <div class="navbar-header"> --><!-- 전체 네이비 배경색  -->
				<div style="background-color: #46443e; "><!-- 전체 네이비 배경색  -->
					<!-- <a href="index.jsp" class="navbar-brand22"> -->
					<a href="<c:url value="/admin"/>" class="navbar-brand22">
						<!-- <span class="brand-title brand-text">사이트 로고</span> -->
						<!-- <span>사이트 로고</span> -->
						<!-- <img src="img/logo.png" class="brand-icon"> -->
						<img src="<c:url value="/images/wtylogo.png"/>" style="width: 100px; height: 100px;">
					</a>
				</div>
				<!--================================-->
				<!--End brand logo & name-->
			</div>
		</header>

		<div class="boxed">
			<!--MAIN NAVIGATION-->
			<!--===================================================-->
			<nav id="mainnav-container">
				<div id="mainnav">
					<div id="mainnav-menu-wrap">
						<div class="nano2">
							<div class="nano-content">
								<ul id="mainnav-menu" class="list-group">
								
									<!--Menu list item-->
									<li>
										<a href="#">
											<i class="fa fa-th"></i>
											<span class="menu-title">
												<strong>회원관리</strong>
											</span>
											<i class="arrow"></i>
										</a>
									
										<!--Submenu-->
										<ul class="collapse">
											<li><a href="<c:url value="/admin/allUser"/>">회원 정보 관리</a></li>
											<li><a href="<c:url value="/admin/allPoint"/>">포인트 지급 내역</a></li>
										</ul>
									</li>
									
									<li>
										<a href="#">
											<i class="fa fa-th"></i>
											<span class="menu-title">
												<strong>OTT(이용권) 관리</strong>
											</span>
											<i class="arrow"></i>
										</a>
						
										<!--Submenu-->
										<ul class="collapse">
											<li><a href="<c:url value="/admin/allProduct"/>">전체 상품(이용권) 관리</a></li>
											<li><a href="<c:url value="/admin/addProduct"/>">상품(이용권) 신규 등록</a></li>
											<li><a href="<c:url value="/admin/addOtt"/>">OTT 신규 등록</a></li>
										</ul>
									</li>
									
									<li>
										<a href="#">
											<i class="fa fa-th"></i>
											<span class="menu-title">
												<strong>리뷰/평점 관리</strong>
											</span>
											<i class="arrow"></i>
										</a>
						
										<!--Submenu-->
										<ul class="collapse">
											<li><a href="<c:url value="/admin/allProgram"/>">프로그램 관리</a></li>
											<li><a href="<c:url value="/admin/addProgram"/>">프로그램 신규 등록</a></li>
										</ul>
									</li>
									
									<li>
										<a href="#">
											<i class="fa fa-th"></i>
											<span class="menu-title">
												<strong>공지사항 관리</strong>
											</span>
											<i class="arrow"></i>
										</a>
						
										<!--Submenu-->
										<ul class="collapse">
											<li><a href="<c:url value="/admin/allNotice"/>">공지사항 관리</a></li>
											<li><a href="<c:url value="/admin/addNotice"/>">공지사항 신규 등록</a></li>
										</ul>
									</li>
									
									<li>
										<a href="#">
											<i class="fa fa-th"></i>
											<span class="menu-title">
												<strong>고객지원</strong>
											</span>
											<i class="arrow"></i>
										</a>
						
										<!--Submenu-->
										<ul class="collapse">
											<li><a href="<c:url value="/admin/allQuestion"/>">문의 답변하기</a></li>
										</ul>
									</li>

								</ul>
							</div>
							<div style="text-align: center; padding-top: 420px;">
								<button class="btn btn-rounded" type="button" onclick="location.href='#'"style="font-size: 15px; color: #fff; background-color: gray;">Withy 사이트 이동</button>
							</div>
						</div>
					</div>
				</div>
			</nav>
			<!--===================================================-->
			<!--END MAIN NAVIGATION-->
		</div>
	</div>
	<!--===================================================-->
	<!-- END OF CONTAINER -->

	
	<!--JAVASCRIPT-->
	<!--=================================================-->

	<!--jQuery [ REQUIRED ]-->
	<script src="js/jquery-2.1.1.min.js"></script>

	<!--BootstrapJS [ RECOMMENDED ]-->
	<script src="js/bootstrap.min.js"></script>

	<!--Fast Click [ OPTIONAL ]-->
	<script src="plugins/fast-click/fastclick.min.js"></script>

	<!--Nifty Admin [ RECOMMENDED ]-->
	<script src="js/nifty.min.js"></script>

	<!--Morris.js [ OPTIONAL ]-->
	<script src="plugins/morris-js/morris.min.js"></script>
	<script src="plugins/morris-js/raphael-js/raphael.min.js"></script>

	<!--Sparkline [ OPTIONAL ]-->
	<script src="plugins/sparkline/jquery.sparkline.min.js"></script>

	<!--Skycons [ OPTIONAL ]-->
	<script src="plugins/skycons/skycons.min.js"></script>

	<!--Switchery [ OPTIONAL ]-->
	<script src="plugins/switchery/switchery.min.js"></script>

	<!--Bootstrap Select [ OPTIONAL ]-->
	<script src="plugins/bootstrap-select/bootstrap-select.min.js"></script>

	<!--Demo script [ DEMONSTRATION ]-->
	<script src="js/demo/nifty-demo.min.js"></script>

	<!--Specify page [ SAMPLE ]-->
	<script src="js/demo/dashboard.js"></script>

	<script type="text/javascript">
		// 현재 url(경로) 파악하기
/* 		var currentPath = window.location.pathname;
	
		// url에 특정 문자가 포함되어 있으면
		if(currentPath.includes('all_product.jsp')){
		     document.querySelector('.nav_btn_badge:nth-child(2)').classList.add('active');
		}else if (currentPath.includes('add_product.jsp')){
		     document.querySelector('.nav_btn_badge:first-child').classList.add('active');
		} */
	</script>
</body>
</html>