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
    <link rel="icon" href="<c:url value="/images/wtylogo.png"/>">
    <!-- Site Title -->
    <title>SPRING</title>
    <style>  
    	.dYsQAv {
		    margin-top: 29.3px;
		    width: 100%;
		    display: flex;
		    -webkit-box-pack: justify;
		    justify-content: space-between;
		    -webkit-box-align: center;
		    align-items: center;
		    border-bottom: 1px solid rgb(227, 227, 227);
		    padding: 8px 0px;
		}
		
		.fsashJ {
		    width: 24px;
		    height: 24px;
		}
		
		.aOeXW {
		    font-size: 21px;
		    font-weight: bold;
		    line-height: 25px;
		    text-align: right;
		}
		
		.btn-primary {
			float: right;
		}
		
		.updateProfile {
			text-align: center;
		}
    </style>
    <!-- Bootstrap 5 Core CSS -->
    <link href="<c:url value="/css/bootstrap.min.css"/> rel="stylesheet">
    <!-- Custom Styles -->
    <link rel="stylesheet" href="<c:url value="/css/animate.min.css"/>">
    <link rel="stylesheet" href="<c:url value="/css/aos.css"/>">
    <link rel="stylesheet" href="<c:url value="/css/style.css"/>">
    <link rel="stylesheet" href="<c:url value="/css/prism.css"/>">
    <link rel="stylesheet" href="<c:url value="/css/doc.css"/>">
    <!-- Fonts -->
    <link rel="stylesheet" href="<c:url value="/css/fontawesome-all.min.css"/> type="text/css">
</head>

<body class="doc-body doc-style2" data-bs-spy="scroll" data-bs-target="#nav-scroll">

    <div id="loader-wrapper">
        <div id="loader"></div>
        <div class="loader-section section-left"></div>
        <div class="loader-section section-right"></div>
    </div>

    <nav class="side-nav left-nav navbar-expand-lg nav nav-style2 bg-body">


        <div class="collapse navbar-collapse" id="navbar-toggle">
            <ul class="pl-0" id="main-collapse">
                <li class="sidenav-logo">
                    <a href="index.jsp"><img src="<c:url value="/images/wtylogo.png"/>"></a>
                </li>
                   <li class="nav-item">
                       <a class="nav-link" href="mypageInfo.jsp">회원정보수정</a>
                   </li><!-- / nav-item -->
                   <li class="nav-item">
                       <a class="nav-link" href="mypageParty.jsp">나의파티내역</a>
                   </li><!-- / nav-item -->
                   <li class="nav-item">
                       <a class="nav-link" href="mypageInquery.jsp">나의 1:1 문의</a>
                   </li><!-- / nav-item -->
                   <li class="nav-item">
                       <a class="nav-link" href="mypageReply.jsp">나의 리뷰</a>
                   </li><!-- / nav-item -->
                   <li class="nav-item">
                       <a class="nav-link" href="withdrawal.jsp">회원탈퇴</a>
                   </li><!-- / nav-item -->           
            </ul><!-- / main-collapse -->
        </div><!-- / collapse -->
    </nav><!-- / nav-scroll -->
    <!-- / side-nav -->

   
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
  	<script src="<c:url value="/js/prism.js"/>"></script>
    <!-- / prism -->

    <!-- copy-to-clipboard -->
    <script src="<c:url value="/js/clipboard.min.js"/>"></script>
</body>
</html>