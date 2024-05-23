<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"  %>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<!DOCTYPE html>

<head>
   <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>General Elements | Nifty - Responsive admin template.</title>
   <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
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
       <form class="user" method="post" action="<c:url value="/login/join"/>">
         <div class="form-group">
           <div class="input-group">
             <input type="text" class="form-control form-control-user" id="userId" placeholder="아이디" name="userId">
             <div class="input-group-append">
               <button class="btn btn-primary" type="button" id="checkUserId">중복 확인</button>
             </div>
           </div>
           <span id="userIdMessage"></span>
         </div>

        <div class="form-group">
        <input type="password" class="form-control form-control-user"
        id="exampleInputPassword" placeholder="비밀번호" name="userPassword">
        </div>

        <div class="form-group">
        <input type="text" class="form-control form-control-user" id="exampleName"
        placeholder="이름" name="userName">
        </div>

        <div class="form-group">
        <input type="email" class="form-control form-control-user" id="exampleInputEmail"
        placeholder="이메일" name="userEmail">
        <span id="userEmailMessage"></span>
        </div>

        <div class="form-group">
        <input type="tel" class="form-control form-control-user" id="exampleInputPhoneNumber" placeholder="전화번호" name="userPhone">
        </div>

        <div class="form-group">
        <input type="text" class="form-control form-control-user"
        id="exampleInputBirthdate" placeholder="생년월일 (예: 19900101)" name="userBirthday">
        <span id="userBirthdayMessage"></span>
        </div>

        <div class="form-group">
        <input type="text" class="form-control form-control-user" id="exampleInputNickname"
        placeholder="닉네임" name="userNickname">
        </div>
        
       <button type="submit" class="btn btn-primary btn-user btn-block">회원가입</button>
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
   <%--  
    <!-- Bootstrap core JavaScript-->
    <script src="<c:url value="/vendor/jquery/jquery.min.js"/>"></script>
    <script src="<c:url value="/vendor/bootstrap/js/bootstrap.bundle.min.js"/>"></script>

    <!-- Core plugin JavaScript-->
    <script src="<c:url value="/vendor/jquery-easing/jquery.easing.min.js"/>"></script>

    <!-- Custom scripts for all pages-->
    <script src="<c:url value="/js/sb-admin-2.min.js"/>"></script>
    <script src="<c:url value="/js/bootstrap.bundle.min.js"/>"></script>
    <script src="<c:url value="/js/theme.js"/>"></script>
--%>    
 <script>
    $(document).ready(function() {
        $("#checkUserId").click(function() {
            var userId = $("#userId").val();
            
            if (userId.length === 0) {
                $("#userIdMessage").text("아이디를 입력해 주세요.").css("color", "red");
            } else {
                $.ajax({
                    url: "<c:url value='/login/checkUserId'/>",
                    type: "POST",
                    data: { userId: userId },
                    success: function(response) {
                        if (response === "duplicate") {
                            $("#userIdMessage").text("이미 사용 중인 아이디입니다.").css("color", "red");
                        } else {
                            $("#userIdMessage").text("사용 가능한 아이디입니다.").css("color", "green");
                        }
                    }
                });
            }
        });

        $("#exampleInputEmail").on("blur", function() {
            var email = $(this).val();
            var emailRegex = /^[a-zA-Z0-9._-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,4}$/;

            if (!emailRegex.test(email)) {
                $("#userEmailMessage").text("이메일 형식이 올바르지 않습니다.").css("color", "red");
            } else {
                $("#userEmailMessage").text("");
            }
        });
		
        
        $("#exampleInputBirthdate").on("blur", function() {
            var birthday = $(this).val();
            var birthdayRegex = /^(19[0-9]{2}|20\d{2})(0[0-9]|1[0-2])(0[1-9]|[1-2][0-9]|3[0-1])$/;

            if (!birthdayRegex.test(birthday)) {
                $("#userBirthdayMessage").text("생년월일 형식이 올바르지 않습니다. (예: 19900101)").css("color", "red");
            } else {
                $("#userBirthdayMessage").text("");
            }
        });
    });
</script>
</body>

</html>