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
				<h1 class="page-header text-overflow"><strong>포인트 지급</strong></h1>
			</div>
		
			<div id="page-content">
				<div class="row">
					<div style="width: 95%;">
					<div class="panel" style="padding: 50px;">
						<div class="panel-heading">
							<h3 class="panel-title">NEW</h3>
						</div>
			
						<form class="form-horizontal" action="${pageContext.request.contextPath}/admin/grantPoint" method="post" style="font-size: 15px">
						    <div class="panel-body">
						        <div class="form-group">
						            <label class="col-sm-3" for="pointUserNo" style="text-indent: 5em;">회원번호</label>
						            <div class="col-sm-6">
						                <input type="text" class="form-control input-lg" id="pointUserNo" name="pointUserNo">
						            </div>
						        </div>
						        <div class="form-group">
						            <label class="col-sm-3" for="pointAdd" style="text-indent: 5em;">지급 포인트</label>
						            <div class="col-sm-6">
						                <input type="text" class="form-control input-lg" id="pointAdd" name="pointAdd">
						            </div>
						        </div>
						        <div class="form-group">
						            <label class="col-sm-3" for="pointComment" style="text-indent: 5em;">지급 사유</label>
						            <div class="col-sm-6">
						                <textarea rows="5" class="form-control" id="pointComment" name="pointComment"></textarea>
						            </div>
						        </div>
						    </div>
						    <div class="text-right">
						        <button class="btn btn-info btn-rounded" type="submit" style="font-size: 15px">지급하기</button>
						        <button class="btn btn-info btn-rounded" type="button" onclick="location.href='${pageContext.request.contextPath}/admin/allPoint'" style="font-size: 15px">목록</button>
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









