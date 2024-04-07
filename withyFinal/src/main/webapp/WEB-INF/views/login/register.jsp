<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"  %>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<!DOCTYPE html>

<head>
   <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>General Elements | Nifty - Responsive admin template.</title>

    <!--STYLESHEET-->
    <!--=================================================-->

    <!--Open Sans Font [ OPTIONAL ] -->
    <link href="http://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700&amp;subset=latin" rel="stylesheet">

    <!--Bootstrap Stylesheet [ REQUIRED ]-->
    <link href="<c:url value="/css/bootstrap.min.css"/>" rel="stylesheet">

    <!--Nifty Stylesheet [ REQUIRED ]-->
    <link href="<c:url value="/css/nifty.min.css"/>" rel="stylesheet">

    <!--Font Awesome [ OPTIONAL ]-->
    <link href="<c:url value="/plugins/font-awesome/css/font-awesome.min.css"/>" rel="stylesheet">

    <!--Switchery [ OPTIONAL ]-->
    <link href="<c:url value="/plugins/switchery/switchery.min.css"/>" rel="stylesheet">

    <!--Bootstrap Select [ OPTIONAL ]-->
    <link href="<c:url value="/plugins/bootstrap-select/bootstrap-select.min.css"/>" rel="stylesheet">

    <!--Demo [ DEMONSTRATION ]-->
    <link href="<c:url value="/css/demo/nifty-demo.min.css"/>" rel="stylesheet">

    <!--Page Load Progress Bar [ OPTIONAL ]-->
    <link href="<c:url value="/plugins/pace/pace.min.css"/>" rel="stylesheet">
    <script src="<c:url value="/plugins/pace/pace.min.js"/>"></script>

   </head>
   
   <body>

    	<div class="container">
    	<div class="card o-hidden border-0 shadow-lg my-5">
   	 	<div class="card-body p-0">
   
    	<!-- Nested Row within Card Body -->
    	<div class="row justify-content-center"> <!-- 중앙 정렬 추가 -->
    	<div class="col-lg-7">
    	<div class="p-5">
    	<div class="text-center">
    	<h1 class="h4 text-gray-900 mb-4">회원가입</h1>
    	</div>
    	<form class="user">
    	<div class="form-group">
    
    	<input type="text" class="form-control form-control-user" id="exampleName"
    	placeholder="이름">
   	 	</div>
    
    	<div class="form-group">
    	<div class="input-group">
    	<input type="text" class="form-control form-control-user" id="exampleInputId" placeholder="아이디">
    	<div class="input-group-append">
    	<button class="btn btn-primary" type="button">중복 확인</button>
        </div>
        </div>
   	    </div>
    
        <div class="form-group">
        <input type="password" class="form-control form-control-user"
        id="exampleInputPassword" placeholder="비밀번호">
        </div>
    
        <div class="form-group"/>
        <input type="password" class="form-control form-control-user"
        id="exampleRepeatPassword" placeholder="비밀번호 확인">
        </div>
        
        <div class="form-group"/>
        <input type="email" class="form-control form-control-user" id="exampleInputEmail"
        placeholder="이메일">
        </div>
        
        <div class="form-group"/>
        <div class="input-group"/>
        <input type="text" class="form-control form-control-user" id="exampleInputNickname"
        placeholder="닉네임">
        
        <div class="input-group-append"/>
        <button class="btn btn-primary" type="button">중복 확인</button>
        </div>
        </div>
        </div>
        
        <div class="form-group"/>
        <input type="text" class="form-control form-control-user"
        id="exampleInputBirthdate" placeholder="생년월일">
        </div>
        
        <div class="form-group"/>
        <input type="tel" class="form-control form-control-user"
        id="exampleInputPhoneNumber" placeholder="전화번호">
        </div>
        <a href="login.html" class="btn btn-primary btn-user btn-block">회원가입</a>
        
        <hr>
        </form>
        <hr>
        <div class="text-center">
        <a class="btn-link" href="<c:url value="/login/forgotpasswd"/>">비밀번호가 기억나지 않으세요?</a>
        </div>
        
        <div class="text-center">
        <a class="btn-link" href="<c:url value="/login"/>">이미 회원이신가요? 로그인하기</a>
        </div>
        </div>
        </div>
        </div>
        </div>
        </div>
     	</div>
    
    <!-- Bootstrap core JavaScript-->
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

    <!-- Core plugin JavaScript-->
    <script src="vendor/jquery-easing/jquery.easing.min.js"></script>

    <!-- Custom scripts for all pages-->
    <script src="js/sb-admin-2.min.js"></script>
    <script src="<c:url value="/js/bootstrap.bundle.min.js"/>"></script>
    <script src="<c:url value="/js/theme.js"/>"></script>

</body>

</html>

[register]