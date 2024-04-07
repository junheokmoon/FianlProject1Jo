<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
    <link href="css/bootstrap.min.css" rel="stylesheet">


    <!--Nifty Stylesheet [ REQUIRED ]-->
    <link href="css/nifty.min.css" rel="stylesheet">

    
    <!--Font Awesome [ OPTIONAL ]-->
    <link href="plugins/font-awesome/css/font-awesome.min.css" rel="stylesheet">


    <!--Switchery [ OPTIONAL ]-->
    <link href="plugins/switchery/switchery.min.css" rel="stylesheet">


    <!--Bootstrap Select [ OPTIONAL ]-->
    <link href="plugins/bootstrap-select/bootstrap-select.min.css" rel="stylesheet">


    <!--Demo [ DEMONSTRATION ]-->
    <link href="css/demo/nifty-demo.min.css" rel="stylesheet">


    <!--Page Load Progress Bar [ OPTIONAL ]-->
    <link href="plugins/pace/pace.min.css" rel="stylesheet">
    <script src="plugins/pace/pace.min.js"></script>


</head>
<body>
<%-- <%@ include file="left_menu.jsp" %> --%>
<!-- <div id="container" class="effect mainnav-lg">	 --><!-- 페이지 왼쪽 여백두게 설정 -->
	<div class="boxed">
		<div id="content-container">
					
			<div id="page-title">
				<h1 class="page-header text-overflow"><strong>프로그램 수정</strong></h1>
			</div>
		
			<div id="page-content">
				<div class="row">
					<div style="width: 95%;">
						<div class="panel" style="padding: 50px;">
				
							<form class="form-horizontal" style="font-size: 15px">
								<div class="panel-body">
									<div class="form-group">
										<label class="col-sm-3" for="ccccc" style="text-indent: 5em;">제목</label>
										<div class="col-sm-6">
											<input type="text" class="form-control input-lg" id="ccccc" value="무빙">
										</div>
									</div>
									<div class="form-group">
										<label class="col-sm-3" for="aaaaa" style="text-indent: 5em;">OTT종류</label>
										<div class="col-sm-6">
											<select class="selectpicker">
												<option>넷플릭스</option>
												<option selected>디즈니</option>
												<option>티빙</option>
												<option>웨이브</option>
												<option>왓챠</option>
											</select>
										</div>
									</div>
									<div class="form-group">
										<label class="col-sm-3" for="bbbbb" style="text-indent: 5em;">프로그램 타입</label>
										<div class="col-sm-6">
											<select class="selectpicker">
												<option>영화</option>
												<option selected>드라마</option>
												<option>예능</option>
												<option>다큐</option>
											</select>
										</div>
									</div>
									<div class="form-group">
										<label class="col-sm-3" for="ccccc" style="text-indent: 5em;">연령</label>
										<div class="col-sm-6">
											<input type="text" class="form-control input-lg" id="ccccc" value="19세이상">
										</div>
									</div>
									<div class="form-group">
										<label class="col-sm-3" for="ccccc" style="text-indent: 5em;">내용설명</label>
										<div class="col-sm-6">
											<textarea rows="5" class="form-control">초능력을 숨긴 채 현재를 살아가는 아이들과, 과거의 아픈 비밀을 숨긴 채 살아온 부모들이 시대와 세대를 넘어 닥치는 거대한 위험에 함께 맞서는 초능력 액션 히어로물</textarea>
										</div>
									</div>
									<div class="form-group">
										<label class="col-md-3" style="text-indent: 5em;">이미지1</label>
										<div class="col-md-9">
											<span class="pull-left btn btn-default btn-file">
												파일 선택<input type="file">
											</span>
										</div>
										<div style="padding-left: 26%;">
											<img src="img/Moving.png" width="300px" style=" padding-top: 10px;">
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
									<div class="form-group">
										<label class="col-md-3" style="text-indent: 5em;">동영상</label>
										<div class="col-md-9">
											<span class="pull-left btn btn-default btn-file">
												파일 선택<input type="file">
											</span>
										</div>
									</div>
								</div>
								<div class="text-right">
									<button class="btn btn-info btn-rounded" type="submit" style="font-size: 15px">완료</button>
									<button class="btn btn-info btn-rounded" type="button" onclick="location.href='all_program.jsp'"style="font-size: 15px">목록</button>
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
</body>
</html>