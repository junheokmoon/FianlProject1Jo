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
	<div class="boxed">
		<div id="content-container">
					
			<div id="page-title">
				<h1 class="page-header text-overflow"><strong>공지사항 상세 정보</strong></h1>
			</div>
		
			<div id="page-content">
				<div class="row">
					<div style="width: 95%;">
						<div class="panel" style="padding: 50px;">
							<form class="form-horizontal" style="font-size: 15px">
								<div class="panel-body">
									<div class="form-group">
										<label class="col-sm-3" for="ccccc" style="text-indent: 5em;">공지사항 제목</label>
										<%-- <div class="col-sm-6" style="text-align:left;"><%=product.getProductCom()%></div> --%>
										<div class="col-sm-6" style="text-align:left;">공지사항 입니다.</div>
									</div>
									<div class="form-group">
										<label class="col-sm-3" for="ccccc" style="text-indent: 5em;">공지 내용</label>
										<div class="col-sm-6">
											<textarea rows="5" class="form-control"
												readonly placeholder="공지사항에 대한 내요오오오ㅗ오오오ㅗ오오오오ㅗㅇ옹"></textarea>
										</div>
									</div>
									<div class="form-group">
										<label class="col-sm-3" for="ccccc" style="text-indent: 5em;">공지일</label>
										<div class="col-sm-6" style="text-align:left;">24-03-28</div>
									</div>
									<div class="form-group">
										<label class="col-sm-3" for="ccccc" style="text-indent: 5em;">수정일</label>
										<div class="col-sm-6" style="text-align:left;">24-04-03<!-- 수정 내역이 없으면 [-] 삽입 --></div>
									</div>
								</div>
								<div class="text-right">					
									<button class="btn btn-info btn-rounded" type="button" onclick="location.href='${pageContext.request.contextPath}/admin/updateNotice'" style="font-size: 15px">수정</button>
									<button class="btn btn-info btn-rounded" type="submit" style="font-size: 15px">삭제</button>
									<button class="btn btn-info btn-rounded" type="button" onclick="location.href='${pageContext.request.contextPath}/admin/allNotice'" style="font-size: 15px">목록</button>
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