<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"  %>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>General Elements | Nifty - Responsive admin template.</title>

    <!--STYLESHEET-->
    <!--=================================================-->

    <!--Open Sans Font [ OPTIONAL ] -->
    <link href="http://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700&amp;subset=latin" rel="stylesheet">

    <!--Bootstrap Stylesheet [ REQUIRED ]-->
    <link href="<c:url value="/css/bootstrap2.min.css"/>" rel="stylesheet">

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
	<div class="boxed">
		<div id="content-container">
					
			<div id="page-title">
				<h1 class="page-header text-overflow"><strong>회원 상세 정보</strong></h1>
			</div>
		
			<div id="page-content">
				<div class="row">
					<div style="width: 95%;">
						<div class="panel" style="padding: 50px;">
				
							<form class="form-horizontal" style="font-size: 15px">
								<div class="panel-body">
									<div class="form-group">
										<label class="col-sm-3" for="ccccc" style="text-indent: 5em;">회원번호</label>
										<div class="col-sm-6" style="text-align:left;">${userinfo.userNo }</div>
									</div>
									
									<div class="form-group">
										<label class="col-sm-3" for="ccccc" style="text-indent: 5em;">아이디</label>
										<div class="col-sm-6" style="text-align:left;">${userinfo.userId }</div>
									</div>
									
									<div class="form-group">
										<label class="col-sm-3" for="ccccc" style="text-indent: 5em;">이름</label>
										<div class="col-sm-6" style="text-align:left;">${userinfo.userName }</div>
									</div>
									
									<div class="form-group">
										<label class="col-sm-3" for="ccccc" style="text-indent: 5em;">닉네임</label>
										<div class="col-sm-6" style="text-align:left;">${userinfo.userNickname }</div>
									</div>
									
									<div class="form-group">
										<label class="col-sm-3" for="ccccc" style="text-indent: 5em;">권한</label>
										<c:if test="${userinfo.userStatus == 1 }">
											<div class="col-sm-6" style="text-align:left;">일반회원</div>
										</c:if>
										<c:if test="${userinfo.userStatus == 9 }">
											<div class="col-sm-6" style="text-align:left;">관리자</div>
										</c:if>
									</div>	
									
									<div class="form-group">
										<label class="col-sm-3" for="ccccc" style="text-indent: 5em;">이메일</label>
										<div class="col-sm-6" style="text-align:left;">${userinfo.userEmail }</div>
									</div>
									
									<div class="form-group">
										<label class="col-sm-3" for="ccccc" style="text-indent: 5em;">전화번호</label>
										<div class="col-sm-6" style="text-align:left;">${userinfo.userPhone }</div>
									</div>
									
									<div class="form-group">
										<label class="col-sm-3" for="ccccc" style="text-indent: 5em;">생년월일</label>
										<div class="col-sm-6" style="text-align:left;">${fn:substring(userinfo.userBirthday,0,10) }</div>
									</div>
									
									<div class="form-group">
										<label class="col-sm-3" for="ccccc" style="text-indent: 5em;">가입일</label>
										<div class="col-sm-6" style="text-align:left;">${fn:substring(userinfo.userJoindate,0,10) }</div>
									</div>
									
									<div class="form-group">
										<label class="col-sm-3" for="ccccc" style="text-indent: 5em;">참여 방번호</label>
										<div class="col-sm-6" style="text-align:left;">${userinfo.userId }</div>
									</div>
									<div class="form-group">
										<label class="col-sm-3" for="ccccc" style="text-indent: 5em;">보유 포인트</label>
										<div class="col-sm-6" style="text-align:left;">${userDTO.pointTotal } 포인트</div>
									</div>
								</div>
								<div class="text-right">
									<button class="btn btn-info btn-rounded" type="button" onclick="location.href='${pageContext.request.contextPath}/admin/allUser'" style="font-size: 15px">목록</button>
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>