<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"  %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<!DOCTYPE html>
<html lang="ko">

<head>
    <!-- Meta -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="Documentation">
    <meta name="author" content="kingstudio.ro">
    <!-- Favicon -->
    <link rel="icon" href="assets/images/favicon.png">
    <!-- Site Title -->
    <title>MyPage</title>
    <!-- Bootstrap 5 Core CSS -->
    <link href="assets/css/bootstrap.min.css" rel="stylesheet">
    <!-- Custom Styles -->
    <link rel="stylesheet" href="assets/css/animate.min.css">
    <link rel="stylesheet" href="assets/css/aos.css">
    <link rel="stylesheet" href="assets/css/style.css">
    <link rel="stylesheet" href="assets/css/prism.css">
    <link rel="stylesheet" href="assets/css/doc.css">
    <!-- Fonts -->
    <link rel="stylesheet" href="assets/css/fontawesome-all.min.css" type="text/css">
</head>

<body class="doc-body doc-style2" data-bs-spy="scroll" data-bs-target="#nav-scroll">

    <div id="loader-wrapper">
        <div id="loader"></div>
        <div class="loader-section section-left"></div>
        <div class="loader-section section-right"></div>
    </div>

    <div id="#top"></div>

    <nav class="side-nav left-nav navbar-expand-lg nav nav-style2 bg-body">

        <div class="collapse navbar-collapse" id="navbar-toggle">
            <ul class="pl-0" id="main-collapse">
                <li class="sidenav-logo">
                    <a href="index.html"><img src="assets/images/logo.png" alt=""></a>
                </li>

                <li class="nav-item">
                    <a class="nav-link has-collapse collapsed" href="#"><span>회원정보수정</span></a>
                </li><!-- / nav-item -->
                <li class="nav-item">
                    <a class="nav-link has-collapse collapsed" href="#" ><span>나의 파티 내역</span></a>
                </li><!-- / nav-item -->
                <li class="nav-item">
                   <a class="nav-link has-collapse collapsed" href="#" ><span>나의 1:1 문의</span></a> 
                </li><!-- / nav-item --> 
                <li class="nav-item">
                   <a class="nav-link has-collapse collapsed" href="#" ><span>내가 쓴 댓글</span></a> 
                </li><!-- / nav-item --> 
                <li class="nav-item">
                   <a class="nav-link has-collapse collapsed" href="#" ><span>회원 탈퇴</span></a> 
                </li><!-- / nav-item -->    
            </ul><!-- / main-collapse -->
        </div><!-- / collapse -->
    </nav><!-- / nav-scroll -->
    <!-- / side-nav -->

    
   <div class="page-container">
        <div class="doc-container container-fluid">
            <div class="row">
                <div class="col-lg-9">
                    <h4 id="content" class="doc-main-title">MY 프로필<a href="#content"><i class="fas fa-link"></i></a></h4>
                                     
                
            </div><!-- / row -->
        </div><!-- / doc-container -->
    </div><!-- / page-container -->
   </div>
    
    <!-- Core JavaScript -->
    <script src="assets/js/bootstrap.bundle.min.js"></script>
    <script src="assets/js/theme.js"></script>

    <!-- aos -->
    <script src="assets/js/aos.js"></script>
    <script>
        AOS.init({
          duration: 1200,
        })
    </script>
    <!-- / aos -->

    <!-- prism -->
    <script src="assets/js/prism.js"></script>
    <!-- / prism -->

    <!-- copy-to-clipboard -->
    <script src="assets/js/clipboard.min.js"></script>
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
<script src="<c:url value="/js/bootstrap.bundle.min.js"/>"></script>
<script src="<c:url value="/js/theme.js"/>"></script>	
</body>
</html>