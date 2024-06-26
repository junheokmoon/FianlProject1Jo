<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<!DOCTYPE html>
<html lang="ko">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
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
		
		.Roomlist{
			border: 1px solid black;
			width: 500px;
			height: 150px;
			padding: 20px;
			border-radius: 8px;
			background-color: #ffffff;
			margin: 0 auto;
			margin-bottom: 30px;
		}
		
		#waitBtn{
			width: 250px;
			height: 50px;
			padding: 10px;
			background-color: #3191f9;
			border: none;
			color: white;
			
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
                       <a class="nav-link" href="#">참여중인파티</a>
                   </li><!-- / nav-item -->
                   <li class="nav-item">
                       <a class="nav-link" href="mypagePartyList">나의파티목록</a>
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
                <div class="col-lg-9">
                     <div style="width: 60%; margin: 0 auto; text-align: center;" >
<div style="margin-bottom: 50px;">
	<h3>넷플릭스</h3>
	<h3>매칭된 파티 목록입니다!</h3>
</div>	
	<div style="text-align: center; ">	
		<div class="Roomlist">
		<div style="font-size: 23px;">넷플릭스 00개월 파티! 24년00월00일 생성</div>
		<div>~00월 00일 까지(잔여일수 : 00일)</div>
		</div>
		
		<div class="Roomlist">
		<div style="font-size: 23px;">넷플릭스 00개월 파티! 24년00월00일 생성</div>
		<div>~00월 00일 까지(잔여일수 : 00일)</div>
		</div>
		
		<div class="Roomlist">
		<div style="font-size: 23px;">넷플릭스 00개월 파티! 24년00월00일 생성</div>
		<div>~00월 00일 까지(잔여일수 : 00일)</div>
		</div>
		
		<div class="Roomlist">
		<div style="font-size: 23px;">넷플릭스 00개월 파티! 24년00월00일 생성</div>
		<div>~00월 00일 까지(잔여일수 : 00일)</div>
		</div>
	</div>	
		
		<button id="waitBtn">기다리기</button>
		<button type="button"  style="border: none; background: none;" data-bs-toggle="popover" data-bs-title="기다리기란?" data-bs-content="현재 대기중인 파티방의 
		조건이 마음에 들지 않는 경우 기다리기버튼을 클릭하면 조건에 맞는 새로운 방이 생성되면 이메일로 알려드립니다!">
		<svg xmlns="http://www.w3.org/2000/svg" width="25" height="25" fill="currentColor" class="bi bi-question-circle" viewBox="0 0 16 16">
	 		<path d="M8 15A7 7 0 1 1 8 1a7 7 0 0 1 0 14m0 1A8 8 0 1 0 8 0a8 8 0 0 0 0 16"/>
			<path d="M5.255 5.786a.237.237 0 0 0 .241.247h.825c.138 0 .248-.113.266-.25.09-.656.54-1.134 1.342-1.134.686 0 1.314.343 1.314 1.168 0 .635-.374.927-.965 1.371-.673.489-1.206 1.06-1.168 1.987l.003.217a.25.25 0 0 0 .25.246h.811a.25.25 0 0 0 .25-.25v-.105c0-.718.273-.927 1.01-1.486.609-.463 1.244-.977 1.244-2.056 0-1.511-1.276-2.241-2.673-2.241-1.267 0-2.655.59-2.75 2.286m1.557 5.763c0 .533.425.927 1.01.927.609 0 1.028-.394 1.028-.927 0-.552-.42-.94-1.029-.94-.584 0-1.009.388-1.009.94"/>
		</svg>
		</button>


	
	</div>
</body>

              </div><!-- col 구역 -->
        </div><!-- / doc-container -->
</div><!-- / page-container -->


	
	<script type="text/javascript">
		const popoverTriggerList = document.querySelectorAll('[data-bs-toggle="popover"]')
		const popoverList = [...popoverTriggerList].map(popoverTriggerEl => new bootstrap.Popover(popoverTriggerEl))
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