<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%-- 페이지의 기초를 제공하기 위한 JSP 문서 - 템플릿 페이지 --%>
<%-- TilesView 객체가 제공하는 태그를 사용할 수 있도록 태그 라이브러리 추가 --%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"  %>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>SPRING</title>
    <!-- <link href="<c:url value="/css/fucking.css"/>" type="text/css" rel="stylesheet"> -->
      <!-- Meta -->
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="MiOne - Minimal Landing Page Theme">
    <meta name="author" content="kingstudio.ro">
    <!-- Favicon -->
    <link rel="icon" href="<c:url value="images/favicon.png"/>">
    <!-- Site Title -->
    <title>MiOne - Minimal Landing Page Theme</title>
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
    
</head>

<body style="border: 1px solid pink;">
	 <div id="loader-wrapper">
        <div id="loader"></div>
        <div class="loader-section section-left"></div>
        <div class="loader-section section-right"></div>
    </div>

    <div id="home"></div>

    <nav id="nav-scroll" class="navbar navbar-expand-lg fixed-top" style="background-color: white;">
        <div class="container">
            <a href="<c:url value="/"/>">
            	<img src="<c:url value="/images/wtylogo.png"/>" style="width: 100px; height: 120px;"  alt="">
            </a>

            <button class="navbar-toggler collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#navbar-toggle-nav-center" aria-controls="navbar-toggle-nav-center" aria-expanded="false" aria-label="Toggle navigation">
                <span class="icon-bar top-bar"></span>
                <span class="icon-bar middle-bar"></span>
                <span class="icon-bar bottom-bar"></span>
                <span class="sr-only">Toggle navigation</span>
            </button><!-- / navbar-toggler -->

            <div class="collapse navbar-collapse" id="navbar-toggle-nav-center">
               <ul class="navbar-nav ml-auto">
                    <li class="nav-item">
                        <a class="nav-link" href="<c:url value="/party"/>">파티</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#about-us">이벤트</a>
                    </li>
                    <li class="nav-item">
						<a class="nav-link" href="<c:url value="/program"/>">리뷰/평점</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="<c:url value="/"/>">가이드</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="<c:url value="/mypageInfo"/>">마이페이지</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="<c:url value="login"/>">로그인</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="<c:url value="/admin"/>">관리자</a>
                    </li>
                </ul><!-- / navbar-nav -->
            </div><!-- / navbar-collapse -->
        </div><!-- / container -->
    </nav>

</body>
</html>
    