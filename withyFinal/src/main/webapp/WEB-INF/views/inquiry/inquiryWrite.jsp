<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>

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
    <link href="<c:url value="/css/bootstrap2.min.css"/>" rel="stylesheet">


    <!--Nifty Stylesheet [ REQUIRED ]-->
    <link href="<c:url value="/css/nifty.min.css"/>" rel="stylesheet">

    
    <!--Font Awesome [ OPTIONAL ]-->
    <link href="<c:url value="/plugins/font-awesome/css/font-awesome.min.css"/>" rel="stylesheet">


    <!--Switchery [ OPTIONAL ]-->
    <link href="<c:url value="/plugins/switchery/switchery.min.css"/>" rel="stylesheet">


    <!--Bootstrap Select [ OPTIONAL ]-->
    <link href="<c:url value="/plugins/bootstrap-select/bootstrap-select.min.css"/>" rel="stylesheet">


    <!--Summernote [ OPTIONAL ]-->
    <link href="<c:url value="/plugins/summernote/summernote.min.css"/>" rel="stylesheet">


    <!--Demo [ DEMONSTRATION ]-->
    <link href="<c:url value="/css/demo/nifty-demo.min.css"/>" rel="stylesheet">

    <!--SCRIPT-->
    <!--=================================================-->

    <!--Page Load Progress Bar [ OPTIONAL ]-->
    <link href="<c:url value="/plugins/pace/pace.min.css"/>" rel="stylesheet">
    <script src="<c:url value="/plugins/pace/pace.min.js"/>"></script>
  
		
</head>
	<body>
		<div class="panel panel-default panel-left">
			<h3>1:1 문의하기</h3>
			<div class="panel-body">				
				<!--Input form-->
				<form role="form" class="form-horizontal">
					<div class="form-group">
						<label class="col-lg-1 control-label text-left" for="inputSubject">문의유형</label>
						<div class="col-lg-11">
							<div class="btn-group">
								<select class="selectpicker">
									<option>신고문의</option>
									<option>결제문의</option>
									<option>환불문의</option>
									<option>탈퇴문의</option>
								</select>
							</div>
						</div>
					</div>			
					<div class="form-group">
						<label class="col-lg-1 control-label text-left" for="inputSubject">제목</label>
						<div class="col-lg-11">
							<input type="text" id="inputSubject" class="form-control">
						</div>
					</div>
				</form>

				<!--Attact file button-->
				<div class="media pad-btm">
					<div class="media-left">
						<span class="btn btn-default btn-file">
							파일 첨부<input type="file">
						</span>
					</div>
					<div id="demo-attach-file" class="media-body"></div> <!-- test -->
				</div>


				<!--Wysiwyg editor : Summernote placeholder-->
				<div id="demo-mail-compose"></div>

				<div class="pad-ver">

					<!--Send button-->
					<button id="mail-send-btn" type="button" class="btn btn-success btn-labeled"  onclick="location.href='.jsp'">
						<span class="btn-label"><i class="fa fa-paper-plane"></i></span>작성하기
					</button>

					<!--Save draft button-->
					<button id="mail-save-btn" type="button" class="btn btn-primary btn-labeled">
						<span class="btn-label"><i class="fa fa-paper-plane"></i></span> 취소
					</button>

				</div>
			</div>
		</div>
								<!--===================================================-->
								<!-- END COMPOSE EMAIL -->
				<!--===================================================-->
				<!--End page content-->

	
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


	<!--Summernote [ OPTIONAL ]-->
	<script src="<c:url value="/plugins/summernote/summernote.min.js"/>"></script>


	<!--Demo script [ DEMONSTRATION ]-->
	<script src="<c:url value="/js/demo/nifty-demo.min.js"/>"></script>


	<!--Mail [ SAMPLE ]-->
	<script src="<c:url value="/js/demo/mail.js"/>"></script>
	
</body>
</html>
