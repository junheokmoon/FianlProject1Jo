<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<!DOCTYPE html>
<html lang="ko">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>WITTY</title>


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




    <!--SCRIPT-->
    <!--=================================================-->

    <!--Page Load Progress Bar [ OPTIONAL ]-->
    <link href="<c:url value="/plugins/pace/pace.min.css"/>" rel="stylesheet">
    <script src="<c:url value="/plugins/pace/pace.min.js"/>"></script>

</head>


<body>
	<div class="col-lg-6">
		<div class="panel">
			<div class="panel-heading">
				<h3 class="panel-title">공지사항</h3>
			</div>

			<!--No Label Form-->
			<!--===================================================-->
			<form class="form-horizontal">
				<div class="panel-body">
					<div class="row">
						<div class="regdate">
						ㆍ 작성날짜 : 2023.10.19
						</div><br>
						<div class="noticeCount">
						ㆍ 조회수 : 15550000000
						</div><br>
						<div class="subject">
						ㆍ 제목 : 공지사항 제목 ~~~~~~~~~~~~~~~~~~~~~
						</div><br>
					</div>
					<br>
					<textarea placeholder="Message" rows="13" class="form-control">내용</textarea>
				</div>
				<div class="panel-footer text-right">
					<button class="btn btn-primary">수정</button>
					<button class="btn btn-primary">삭제</button>
					<button class="btn btn-primary">목록</button>	
				</div>
			</form>
			<!--===================================================-->
			<!--End No Label Form-->

		</div>
	</div>
					
	<!--JAVASCRIPT-->
	<!--=================================================-->

	<!--jQuery [ REQUIRED ]-->
	<script src="<c:url value="/js/jquery-2.1.1.min.js"/>"></script>


	<!--BootstrapJS [ RECOMMENDED ]-->
	<script src="<c:url value="/js/bootstrap.min.js"/>"></script>


	<!--Fast Click [ OPTIONAL ]-->
	<script src="<c:url value="/plugins/fast-click/fastclick.min.js"/>"></script>

	
	<!--Nifty Admin [ RECOMMENDED ]-->
	<script src="<c:url value="/js/nifty.min.js"/>"></script>


	<!--Switchery [ OPTIONAL ]-->
	<script src="<c:url value="/plugins/switchery/switchery.min.js"/>"></script>


	<!--Bootstrap Select [ OPTIONAL ]-->
	<script src="<c:url value="/plugins/bootstrap-select/bootstrap-select.min.js"/>"></script>


	<!--Demo script [ DEMONSTRATION ]-->
	<script src="<c:url value="/js/demo/nifty-demo.min.js"/>"></script>

</body>
</html>
