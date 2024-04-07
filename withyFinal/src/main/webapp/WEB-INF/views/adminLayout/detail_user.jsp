<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"  %>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
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
										<%-- <div class="col-sm-6" style="text-align:left;"><%=product.getProductCom()%></div> --%>
										<div class="col-sm-6" style="text-align:left;">1</div>
									</div>
									
									<div class="form-group">
										<label class="col-sm-3" for="ccccc" style="text-indent: 5em;">아이디</label>
										<div class="col-sm-6" style="text-align:left;">abc123</div>
									</div>
									
									<div class="form-group">
										<label class="col-sm-3" for="ccccc" style="text-indent: 5em;">이름</label>
										<div class="col-sm-6" style="text-align:left;">홍길동</div>
									</div>
									
									<div class="form-group">
										<label class="col-sm-3" for="ccccc" style="text-indent: 5em;">닉네임</label>
										<div class="col-sm-6" style="text-align:left;">HongHong</div>
									</div>
									
									<div class="form-group">
										<label class="col-sm-3" for="ccccc" style="text-indent: 5em;">권한</label>
										<div class="col-sm-6" style="text-align:left;">일반회원</div>
									</div>	
									
									<div class="form-group">
										<label class="col-sm-3" for="ccccc" style="text-indent: 5em;">이메일</label>
										<div class="col-sm-6" style="text-align:left;">abc123@itwill.xyz</div>
									</div>
									
									<div class="form-group">
										<label class="col-sm-3" for="ccccc" style="text-indent: 5em;">전화번호</label>
										<div class="col-sm-6" style="text-align:left;">010-1234-5678</div>
									</div>
									
									<div class="form-group">
										<label class="col-sm-3" for="ccccc" style="text-indent: 5em;">생년월일</label>
										<div class="col-sm-6" style="text-align:left;">1998-01-01</div>
									</div>
									
									<div class="form-group">
										<label class="col-sm-3" for="ccccc" style="text-indent: 5em;">가입일</label>
										<div class="col-sm-6" style="text-align:left;">2024-03-24</div>
									</div>
									
									<div class="form-group">
										<label class="col-sm-3" for="ccccc" style="text-indent: 5em;">참여 방번호</label>
										<div class="col-sm-6" style="text-align:left;">300</div>
									</div>
									
									<div class="form-group">
										<label class="col-sm-3" for="ccccc" style="text-indent: 5em;">보유 포인트</label>
										<div class="col-sm-6" style="text-align:left;">5,250원</div>
									</div>
									
									<div class="form-group">
										<label class="col-sm-3" for="ccccc" style="text-indent: 5em;">총 보유 이용권</label>
										<div class="col-sm-6" style="text-align:left;">3개월 넷플릭스 이용권, 6개월 디즈니 이용권</div>
									</div>
									
									<div class="form-group">
										<label class="col-sm-3" for="ccccc" style="text-indent: 5em;">사용중인 이용권</label>
										<div class="col-sm-6" style="text-align:left;">3개월 넷플릭스 이용권</div>
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