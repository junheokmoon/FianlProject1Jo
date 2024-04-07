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
				<h1 class="page-header text-overflow"><strong>상품(이용권) 신규 등록</strong></h1>
			</div>
		
			<div id="page-content">
				<div class="row">
					<div style="width: 95%;">
						<div class="panel" style="padding: 50px;">
							<div class="panel-heading">
								<h3 class="panel-title">NEW</h3>
							</div>
				
							<form class="form-horizontal" style="font-size: 15px">
								<div class="panel-body">
									<div class="form-group">
										<label class="col-sm-3" for="aaaaa" style="text-indent: 5em;">종류</label>
										<div class="col-sm-6">
											<select class="selectpicker">
												<option>넷플릭스</option>
												<option>디즈니</option>
												<option>티빙</option>
												<option>웨이브</option>
												<option>왓챠</option>
											</select>
										</div>
									</div>
									<div class="form-group">
										<label class="col-sm-3" for="bbbbb" style="text-indent: 5em;">기간</label>
										<div class="col-sm-6">
											<select class="selectpicker">
												<option>1개월</option>
												<option>3개월</option>
												<option>6개월</option>
												<option>9개월</option>
												<option>12개월</option>
											</select>
										</div>
									</div>
									<div class="form-group">
										<label class="col-sm-3" for="ccccc" style="text-indent: 5em;">요금</label>
										<div class="col-sm-6">
											<input type="text" class="form-control input-lg" id="ccccc">
										</div>
									</div>
									<div class="form-group">
										<label class="col-md-3" style="text-indent: 5em;">이미지1</label>
										<div class="col-md-9">
											<span class="pull-left btn btn-default btn-file">
											파일 선택<input type="file">
											</span>
										</div>
									</div>
									<div class="form-group">
										<label class="col-md-3" style="text-indent: 5em;">이미지2</label>
										<div class="col-md-9">
											<span class="pull-left btn btn-default btn-file">
											파일 선택<input type="file">
											</span>
										</div>
									</div>
								</div>
								<div class="text-right">
									<button class="btn btn-info btn-rounded" type="submit" style="font-size: 15px">등록</button>
									<button class="btn btn-info btn-rounded" type="button" onclick="location.href='${pageContext.request.contextPath}/admin/allProduct'" style="font-size: 15px">목록</button>
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