<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"  %>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<!DOCTYPE html>

<head>
   <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Withy</title>
    <style>
    	.mb-1 {
    	  color: red;
    	}
    </style>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    
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

       <div class="container2">
       <div class="card o-hidden border-0 shadow-lg my-5">
          <div class="card-body p-0">
   
       <!-- Nested Row within Card Body -->
       <div class="row justify-content-center"> <!-- 중앙 정렬 추가 -->
       <div class="col-lg-4">
       <div class="p-5">
       <div class="text-center">
       <h1 class="h4 text-gray-900 mb-4">회원정보수정</h1>
       </div>
       <form id="updateForm" class="form" method="post" action="<c:url value="mypage/mypageInfo"/>">
        
       <div class="form-group row">
        <div class="col-sm-12">
	        <input type="text" class="form-control form-control-user" id="exampleInputId" placeholder="아이디" name="userId">
	        </div>
	         <div class="mb-1">
				<span id="useridNullMsg" class="alertmsg idMsg">아이디를 입력해 주세요.</span>
			 	<span id="useridValidMsg" class="alertmsg idMsg">아이디는 영문자로 시작되는 영문자,숫자,_의 6~20범위의 문자로만 작성 가능합니다.</span>
			 	<span id="useridDuplMsg" class="alertmsg idMsg">아이디가 중복 되었습니다.</span>
			 </div>
       </div>

        <div class="form-group">
	        <input type="password" class="form-control form-control-user"
	        id="exampleInputPassword" placeholder="비밀번호" name="userPassword">
	        <div class="mb-1">
				<span id="userpasswdNullMsg" class="alertmsg">8~20자이상 비밀번호를 입력해 주세요.</span>
				<span id="userpasswdValidMsg" class="alertmsg">비밀번호는 영문자,숫자,특수문자가 반드시 하나이상 포함된 6~20 범위의 문자로만 작성 가능합니다.</span>
			</div>
        </div>

        <div class="form-group">
	        <input type="text" class="form-control form-control-user" id="exampleName"
	        placeholder="이름" name="userName">
	         <div class="mb-1">
			<span id="usernameNullMsg" class="alertmsg">이름을 입력해 주세요.</span>
			<span id="usernameValidMsg" class="alertmsg">이름을 형식에 맞게 입력해 주세요.</span>
		  </div>
        </div>

        <div class="form-group">
	        <input type="email" class="form-control form-control-user" id="exampleInputEmail"
	       		placeholder="이메일" name="userEmail">
	         <div class="mb-1">
			<span id="useremailNullMsg" class="alertmsg">이메일을 입력해 주세요.</span>
			<span id="useremailValidMsg" class="alertmsg">이메일을 형식에 맞게 입력해 주세요.</span>
		</div>	
        </div>

        <div class="form-group">
	        <input type="tel" class="form-control form-control-user" id="exampleInputPhoneNumber" placeholder="휴대폰번호" name="userPhone">
	           <div class="mb-1">
				<span id="userphoneNullMsg" class="alertmsg">휴대폰 번호를 입력해 주세요.</span>
				<span id="userphoneValidMsg" class="alertmsg">휴대폰 번호는 앞자리 010으로 시작하며, 3~4 자리의 숫자로만 입력 가능합니다.</span>	
			</div>
        </div>

        <div class="form-group">
        <input type="text" class="form-control form-control-user" id="exampleInputBirthdate" placeholder="생년월일" name="userBirthday">
        <div class="mb-1">
				<span id="userbirthdayNullMsg" class="alertmsg">생년월일을 입력해 주세요.</span>
				<span id="userbirthdayValidMsg" class="alertmsg">생년월일은 YYYYMMDD 형식으로 입력해 주세요.</span>	
			</div>
        </div>

        <div class="form-group">
	        <input type="text" class="form-control form-control-user" id="exampleInputNickname" placeholder="닉네임" name="userNickname">    
	        <div class="mb-1">
				<span id="usernicknameNullMsg" class="alertmsg">닉네임을 입력해 주세요.</span>
				<span id="usernicknameValidMsg" class="alertmsg">닉네임을 형식에 맞게 입력해 주세요.</span>
			 	<span id="usernicknameDuplMsg" class="alertmsg">닉네임이 중복 되었습니다.</span>
		  	</div>
        </div>
              
         <button type="submit" style="background-color: #3191f9; width: 80px; border-color: #c6cad0; color: white; width: 100%; " >회원정보변경</button>
        </form>
        
        <hr>
        
        </div>
        </div>
        </div>
        </div>
        </div>
        </div>
    
    <script type="text/javascript">
	$(".alertmsg").hide();
	var usernickNameResult=false;
	
	$(document).ready(function() {
	      
	    $("#exampleInputNickname").blur(function() {
	        usernickNameResult = false; // 결과 변수 초기화
	        var userNickname = $(this).val(); // 닉네임 입력 필드의 값 가져오기
	        $.ajax({
	            method: "post", // POST 방식 사용
	            url: "<c:url value="/mypage/usernicknameCheck"/>", // 닉네임 중복 확인 url
	            data: { "userNickname": userNickname }, // 닉네임 데이터 전송
	            dataType: "text",
	            success: function(response) {
	                if (response === "fail") {
	                	usernickNameResult = true; // 중복이면 결과를 true로 설정
	                }
	            },
	            error: function() {
	                console.error("서버 오류: 중복 확인 요청 실패");
	            }
	        });
	    });
	});
    // 폼 제출 이벤트 핸들러
	$("#updateForm").submit(function(event) {
		var submitResult = true;
	    $(".alertmsg").hide(); // 모든 메시지 숨기기
	
	    
	    // 아이디 
	    if ($("#exampleInputId").val() == "") {
	        $("#useridNullMsg").show();
	        submitResult = false;
	    } else if (!/^[a-zA-Z]\w{5,19}$/.test($("#exampleInputId").val())) {
	        $("#useridValidMsg").show();
	        submitResult = false;
	    } else if(idResult) {
	       	$("#useridDuplMsg").show();
	        submitResult = false;
	    }
	    
		 // 이름 
		 if ($("#exampleName").val() == "") {
		     $("#usernameNullMsg").show();
		     submitResult = false;
		 } else if (!/^[\u3131-\u3163\uac00-\ud7a3]{2,10}$/.test($("#exampleName").val())) {
		     $("#usernameValidMsg").show();
		     submitResult = false;
		 }
		
		// 닉네임 
		if ($("#exampleInputNickname").val() == "") {
		    $("#usernicknameNullMsg").show();
		    submitResult = false;
		} else if (!/^[\u3131-\u3163\uac00-\ud7a3a-zA-Z0-9]{2,10}$/.test($("#exampleInputNickname").val())) {
		    $("#usernicknameValidMsg").show();
		    submitResult = false;
		} else if (nickNameResult) {
		    $("#usernicknameDuplMsg").show();
		    submitResult = false;
		}
		
		// 휴대폰 
		if ($("#exampleInputPhoneNumber").val() == "") {
		    $("#userphoneNullMsg").show();
		    submitResult = false;
		} else if (!/^01[016789]-[^0][0-9]{2,3}-[0-9]{3,4}$/.test($("#exampleInputPhoneNumber").val())) {
		    $("#userphoneValidMsg").show();
		    submitResult = false;
		}
		
		// 생년월일
		if ($("#exampleInputBirthdate").val() == "") {
		    $("#userbirthdayNullMsg").show();
		    submitResult = false;
		} else if (!/^(19|20)\d{2}(0[1-9]|1[0-2])(0[1-9]|[12]\d|3[01])$/.test($("#exampleInputBirthdate").val())) {
		    $("#userbirthdayValidMsg").show();
		    submitResult = false;
		}
		
		
		// 이메일 
		if ($("#exampleInputEmail").val() == "") {
		    $("#useremailNullMsg").show();
		    submitResult = false;
		} else if (!/^([a-zA-Z0-9._-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,4})*$/.test($("#exampleInputEmail").val())) {
		    $("#useremailValidMsg").show();
		    submitResult = false;
		}
		
		// 비밀번호
		if ($("#exampleInputPassword").val() == "") {
		    $("#userpasswdNullMsg").show();
		    submitResult = false;
		} else if (!/^(?=.*[a-zA-Z])(?=.*[0-9])(?=.*[~!@#$%^&*_-]).{8,20}$/.test($("#exampleInputPassword").val())) {
		    $("#userpasswdValidMsg").show();
		    submitResult = false;
		}
		
		// 제출 결과 반환
        if (submitResult) {
            // 회원정보변경 버튼 누를시 이동 마이페이지 회원정보
            window.location.href = "<c:url value='/mypage/mypageInfo'/>";
        }
		
		
		// 제출 결과 반환
		return submitResult;
	});

</script>
    
    
    
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
