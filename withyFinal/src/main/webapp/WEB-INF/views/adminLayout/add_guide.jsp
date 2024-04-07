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
				<h1 class="page-header text-overflow"><strong>신규 가이드 등록</strong></h1>
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
												<option>이용혜택</option>
												<option>이용전 Tip</option>
												<option>간단설명서</option>
												<option>요금가이드</option>
											</select>
										</div>
									</div>
									<div class="form-group">
										<label class="col-sm-3" for="ccccc" style="text-indent: 5em;">제목</label>
										<div class="col-sm-6">
											<input type="text" class="form-control input-lg" id="ccccc">
										</div>
									</div>
									<div class="form-group">
										<label class="col-sm-3" for="ccccc" style="text-indent: 5em;">내용</label>
										<div class="col-sm-6">
											<!-- <input type="text" class="form-control input-lg" id="ccccc"> -->
											<textarea rows="13" class="form-control"></textarea>
										</div>
									</div>
								</div>
								<div class="text-right">
									<button class="btn btn-info btn-rounded" type="submit" style="font-size: 15px">등록</button>
									<button class="btn btn-info btn-rounded" type="button" onclick="location.href='all_guide.jsp'"style="font-size: 15px">목록</button>
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