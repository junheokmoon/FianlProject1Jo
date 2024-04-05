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
                       <a class="nav-link" href="mypageInquery">나의 1:1 문의</a>
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
                <div class="col-lg-9">
                    <h4 id="getting-started" class="doc-main-title">나의 1:1 문의</h4>
                    <div id="introduction" class="doc-wrapper">
                                                                     
                </div><!-- / column -->
				 	<div id="cards" class="doc-wrapper">

                        <div class="doc-holder">
                            <div class="doc-info bg-light">
                                <div class="row">
                                	    <p><b>회원탈퇴를 위해 비밀번호를 입력해주세요.</b></p>
						                    	<form action="#" method="post">
						                    	<input type="text" id="passwd">
						                    	<a href="#x" class="btn btn-primary-light pill"><span>회원탈퇴</span></a>
						                    	</form>                                                                                               								                                                                                  
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