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
    <title>마이페이지</title>
    <style>
    	
    </style>
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
                    <a href="index.html">이미지로고</a>
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

    <div class="page-container">
        <div class="doc-container container-fluid">
                <div class="col-lg-9">
                    <h4 id="getting-started" class="doc-main-title">MY PARTY</h4>
                    <div id="introduction" class="doc-wrapper">
                                                                     
                </div><!-- / column -->
				 	<div id="cards" class="doc-wrapper">

                        <div class="doc-holder">
                            <div class="doc-info bg-light">
                                <div class="row">
                                	<h6>나의 생성 파티</h6>                                  
                                    <table class="table">
                                    <thead>
                                        <tr>
                                            <th scope="col">파티 번호</th>
                                            <th scope="col">파티 제목</th>
                                            <th scope="col">생성 날짜</th>
                                            <th scope="col">Handle</th>
                                            <th scope="col">Handle</th>
                                            
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <th scope="row">1</th>
                                            <td>Mark</td>
                                            <td>Otto</td>
                                            <td>@mdo</td>
                                            <td>@mdo</td>
                                          
                                        </tr>
                                        <tr>
                                            <th scope="row">2</th>
                                            <td>Jacob</td>
                                            <td>Thornton</td>
                                            <td>@fat</td>
                                            <td>@fat</td>
                                          
                                        </tr>
                                        <tr>
                                            <th scope="row">3</th>
                                            <td>Larry</td>
                                            <td>The Bird</td>
                                            <td>@twitter</td>
                                            <td>@twitter</td>
                                        </tr>
                                    </tbody>
                                </table><!-- / table -->                                 								                                                                                  
                            </div><!-- / doc-info -->
                        </div><!-- / doc-holder -->
                        
                        <div class="doc-info bg-light">
                                <div class="row">   
                                	<h6>나의 참여 파티</h6>                                
                                    <table class="table">
                                    <thead>
                                        <tr>
                                            <th scope="col">결제 번호</th>
                                            <th scope="col">가입 파티</th>
                                            <th scope="col">가입 날짜</th>
                                            <th scope="col">결제 정보</th>
                                            <th scope="col">Handle</th>
                                             <th scope="col">Handle</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <th scope="row">1</th>
                                            <td>Mark</td>
                                            <td>Otto</td>
                                            <td>@mdo</td>
                                            <td>@mdo</td>
                                            <td>@mdo</td>
                                        </tr>
                                        <tr>
                                            <th scope="row">2</th>
                                            <td>Jacob</td>
                                            <td>Thornton</td>
                                            <td>@fat</td>
                                            <td>@fat</td>
                                            <td>@fat</td>
                                        </tr>
                                        <tr>
                                            <th scope="row">3</th>
                                            <td>Larry</td>
                                            <td>The Bird</td>
                                            <td>@twitter</td>
                                            <td>@twitter</td>
                                            <td>@twitter</td>
                                        </tr>
                                    </tbody>
                                </table><!-- / table -->                                 								                                                                                  
                            </div><!-- / doc-info -->
                        </div><!-- / doc-holder -->
                        
                        
                    </div><!-- / doc-wrapper -->
                </div> <!-- 페이지 content 구역 -->
              </div><!-- col 구역 -->
        </div><!-- / doc-container -->
</div><!-- / page-container -->


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
  
    <!-- / copy-to-clipboard -->

</body>
</html>