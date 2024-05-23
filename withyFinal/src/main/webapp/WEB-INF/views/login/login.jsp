<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"  %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>General Elements | Nifty - Responsive admin template.</title>

    <!-- STYLESHEET -->
    <!--=================================================-->

    <!-- Open Sans Font [ OPTIONAL ] -->
    <link href="http://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700&amp;subset=latin" rel="stylesheet">

    <!-- Bootstrap Stylesheet [ REQUIRED ] -->
    <link href="<c:url value="/css/bootstrap.min.css"/>" rel="stylesheet">

    <!-- Nifty Stylesheet [ REQUIRED ] -->
    <link href="<c:url value="/css/nifty.min.css"/>" rel="stylesheet">

    <!-- Font Awesome [ OPTIONAL ] -->
    <link href="<c:url value="/plugins/font-awesome/css/font-awesome.min.css"/>" rel="stylesheet">

    <!-- Switchery [ OPTIONAL ] -->
    <link href="<c:url value="/plugins/switchery/switchery.min.css"/>" rel="stylesheet">

    <!-- Bootstrap Select [ OPTIONAL ] -->
    <link href="<c:url value="/plugins/bootstrap-select/bootstrap-select.min.css"/>" rel="stylesheet">

    <!-- Demo [ DEMONSTRATION ] -->
    <link href="<c:url value="/css/demo/nifty-demo.min.css"/>" rel="stylesheet">

    <!-- Page Load Progress Bar [ OPTIONAL ] -->
    <link href="<c:url value="/plugins/pace/pace.min.css"/>" rel="stylesheet">
    <script src="<c:url value="/plugins/pace/pace.min.js"/>"></script>

</head>

<body class="bg-gradient-primary">
    <div class="container">

        <!-- Outer Row -->
        <div class="row justify-content-center">

            <div class="col-lg-8 mt-4 mb-4">

                <div class="card border-primary">
                    <div class="card-body">

                        <!-- 카드 본문 -->
                        <div class="row">
                            <div class="col-lg-10 mx-auto">
                                <div class="p-5">

                                    </div>
                                  <c:choose>
    <c:when test="${not empty sessionScope.loginUser}">
        <div class="alert alert-success">
            ${sessionScope.loginUser.userName}님, 환영합니다!
        </div>
        <li class="nav-item">
    <a class="nav-link" href="<c:url value="login/logout"/>">로그아웃</a>
</li>
        </div>
    </c:when>
    <c:otherwise>
        <form class="user" name="f" method="post" action="<c:url value="/login"/>" onsubmit="return userLogin()">
            <div class="form-group">
                <input type="id" class="form-control form-control-user" id="userId" placeholder="아이디를 입력해 주세요" name="userId">
                <input type="password" class="form-control form-control-user" id="userPassword" placeholder="비밀번호를 입력해 주세요" name="userPassword">
            </div>
            <c:if test="${not empty errorMessage}">
                <div class="alert alert-danger">${errorMessage}</div>
            </c:if>
            <div class="form-group">
                <div class="custom-control custom-checkbox small">
                    <input type="checkbox" class="custom-control-input" id="customCheck">
                    <label class="custom-control-label" for="customCheck">내 정보 기억하기</label>
                </div>
            </div>
            <button type="submit" class="btn btn-primary btn-user btn-block" style="background-color: #3191f9;">로그인</button>
        </form>

        <hr>
        <div class="text-center">
            <a class="btn-link" href="<c:url value="/login/forgotpasswd" />">비밀번호 찾기</a>
            <span class="mx-2 text-gray-600">|</span>
            <a class="btn-link" href="<c:url value="/login/forgotid" />">아이디 찾기</a>
        </div>
        <div class="text-center">
            <a class="btn-link" href="<c:url value="/login/join" />">회원가입하기</a>
        </div>
    </c:otherwise>
</c:choose>
                                        
                                    </form>
                                </div>
                            </div>
                        </div>
                        <!-- 카드 END... -->

                    </div>
                </div>

            </div>

        </div>

    </div>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <!-- Bootstrap core JavaScript -->
   
    
    <!-- Core plugin JavaScript -->
 

    <!-- Custom scripts for all pages -->
    <script src="<c:url value="/js/bootstrap.bundle.min.js" />"></script>
    <script src="<c:url value="/js/theme.js" />"></script>
	<script language="JavaScript">
function userLogin() {
	if ( f.userId.value == "" ) {
		alert("아이디를 입력하십시요.");
		f.userId.focus();
		return;
	} 
	if ( f.userPassword.value == "" ) {
		alert("비밀번호를 입력하십시요.");
		f.userPassword.focus();
		return;
	}	
	
	f.action = "<c:url value="/login/login"/>";
	f.submit();
}
</script>

</body>

</html> 