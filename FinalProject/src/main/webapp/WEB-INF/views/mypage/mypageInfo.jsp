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
    <title>마이페이지</title>
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
		
		.side-nav {
			margin-top: 150px;
		}
    </style>
    <!-- Bootstrap 5 Core CSS -->
    <link rel="stylesheet" href="<c:url value="/css/bootstrap.min.css"/>">
    <!-- Custom Styles -->
    <link rel="stylesheet" href="<c:url value="/css/animate.min.css"/>">
    <link rel="stylesheet" href="<c:url value="/css/aos.css"/>">
    <link rel="stylesheet" href="<c:url value="/css/style.css"/>">
    <link rel="stylesheet" href="<c:url value="/css/prism.css"/>">
    <link rel="stylesheet" href="<c:url value="/css/doc.css"/>">
    <!-- Fonts -->
    <link rel="stylesheet" href="<c:url value="/css/fontawesome-all.min.css"/>" type="text/css">
</head>

    <nav class="side-nav left-nav">
            <ul class="pl-0" id="main-collapse">
                   <li class="nav-item">
                       <a class="nav-link" href="mypageInfo">회원정보수정</a>
                   </li><!-- / nav-item -->
                   <li class="nav-item">
                       <a class="nav-link" href="mypageParty">나의파티내역</a>
                   </li><!-- / nav-item -->
                   <li class="nav-item">
                       <a class="nav-link" href="mypageInquiry">나의 1:1 문의</a>
                   </li><!-- / nav-item -->
                   <li class="nav-item">
                       <a class="nav-link" href="mypageReply">나의 리뷰</a>
                   </li><!-- / nav-item -->
                   <li class="nav-item">
                       <a class="nav-link" href="withdrawal">회원탈퇴</a>
                   </li><!-- / nav-item -->           
            </ul><!-- / main-collapse -->
    </nav><!-- / nav-scroll -->
    <!-- / side-nav -->


    <div class="page-container">
        <div class="doc-container container-fluid">
            <div class="row">
                <div class="col-lg-9">
                    <h4 id="getting-started" class="doc-main-title">MY PROFILE</h4>
                    <div id="introduction" class="doc-wrapper">
                                                                     
                	</div><!-- / column -->
				 	<div id="cards" class="doc-wrapper">

                        <div class="doc-holder">
                            <div class="doc-info bg-light">
                                <div class="row">
                                                                  
                                    <div class="col-xl-3">
                                        <div class="card">                                        	
                                            <div class="card-body">
                                				<img src="<c:url value="/images/user.jpg"/>">
                                				<div class="updateProfile">
                                				<button type="button" style="text-align: center">프로필 변경</button>
                                            	</div>
                                            </div><!-- / card-body -->
                                        </div><!-- / card -->
                                    </div><!-- / column -->   
                                    
                                    <div class="col-xl-9">
                                        <div class="card">
                                            <div class="card-body">
                                                <h6>나의 윗티 포인트</h6>
                                                <div class="sc-ebawnn dYsQAv">
												<img src="<c:url value="/images/point.png"/>" class="sc-cgizqU fsashJ">												
												<span class="sc-bgXbfl aOeXW">0P</span>         
												</div>
                                            </div><!-- / card-body -->
                                        </div><!-- / card -->
                                    </div><!-- / column -->                                                                                                                                                          
                                   
                                    <div class="col-xl-12">
                                        <div class="card">
                                            <div class="card-body">
                                                <h5 class="card-title">회원정보</h5><br>
                                               ㆍ 아이디 : xyz789<br>
                                               ㆍ 연락처 : 010-5465-6659<br>
                                               ㆍ 이메일 : xyz789@itwill.net<br>
                                               ㆍ 가입일 : 2023.10.19<br>
                                                <a href="#x" class="btn btn-xs btn-primary">정보수정</a>
                                            </div><!-- / card-body -->
                                        </div><!-- / card -->
                                    </div><!-- / column -->
                                    								                                                                                  
                            </div><!-- / doc-info -->
                        </div><!-- / doc-holder -->
                    </div><!-- / doc-wrapper -->
                </div> <!-- 페이지 content 구역 -->
              </div><!-- col 구역 -->
            </div><!-- / row -->
        </div><!-- / doc-container -->
</div><!-- / page-container -->

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
</html>