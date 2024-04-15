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
				<h1 class="page-header text-overflow"><strong>프로그램 상세 정보</strong></h1>
			</div>
		
			<div id="page-content">
				<div class="row">
					<div style="width: 95%;">
						<div class="panel" style="padding: 50px;">
				
							<form class="form-horizontal" style="font-size: 15px">
								<div class="panel-body">
									<div class="form-group">
										<label class="col-sm-3" for="ccccc" style="text-indent: 5em;">프로그램 번호</label>
										<div class="col-sm-6" style="text-align:left;">${programByNo.programNo }</div>
									</div>
									<div class="form-group">
										<label class="col-sm-3" for="ccccc" style="text-indent: 5em;">제목</label>
										<div class="col-sm-6" style="text-align:left;">${programByNo.programName }</div>
									</div>
									<div class="form-group">
										<label class="col-sm-3" for="aaaaa" style="text-indent: 5em;">OTT종류</label>
										<c:if test="${programByNo.programOttNo == 21}">
											<div class="col-sm-6" style="text-align:left;">웨이브</div>
										</c:if>
										<c:if test="${programByNo.programOttNo == 22}">
											<div class="col-sm-6" style="text-align:left;">티빙</div>
										</c:if>
										<c:if test="${programByNo.programOttNo == 23}">
											<div class="col-sm-6" style="text-align:left;">디즈니플러스</div>
										</c:if>
										<c:if test="${programByNo.programOttNo == 24}">
											<div class="col-sm-6" style="text-align:left;">왓챠</div>
										</c:if>
										<c:if test="${programByNo.programOttNo == 25}">
											<div class="col-sm-6" style="text-align:left;">넷플릭스</div>
										</c:if>
									</div>
									<div class="form-group">
										<label class="col-sm-3" for="bbbbb" style="text-indent: 5em;">프로그램 타입</label>
										<c:if test="${programByNo.programCategoryNo == 1}">
											<div class="col-sm-6" style="text-align:left;">영화</div>
										</c:if>
										<c:if test="${programByNo.programCategoryNo == 2}">
											<div class="col-sm-6" style="text-align:left;">드라마</div>
										</c:if>
										<c:if test="${programByNo.programCategoryNo == 3}">
											<div class="col-sm-6" style="text-align:left;">예능</div>
										</c:if>
										<c:if test="${programByNo.programCategoryNo == 4}">
											<div class="col-sm-6" style="text-align:left;">다큐</div>
										</c:if>
									</div>
									<div class="form-group">
										<label class="col-sm-3" for="ccccc" style="text-indent: 5em;">내용설명</label>
										<div class="col-sm-6">
											<textarea rows="5" class="form-control"
												readonly placeholder="${programByNo.programDetail }"></textarea>
										</div>
									</div>
									<div class="form-group">
										<label class="col-md-3" style="text-indent: 5em;">이미지</label>
										<div style="padding-left: 26%;">
											<img src="<c:url value='${fn:split(programByNo.programImage, \"_\")[1]}'/>" width="100px" style=" padding-top: 10px;">
											<%-- <img src="<c:url value='${programByNo.programImage}'/>" width="100px" style=" padding-top: 10px;"> --%>
										</div>
									</div>
									<div class="form-group">
										<label class="col-md-3" style="text-indent: 5em;">동영상</label>
										<div style="padding-left: 26%;">
											<iframe
												style="height: 10%;"
												src="${programByNo.programVideo}" frameborder="0"
												allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture">
											</iframe>
										</div>
									</div>
								</div>
								<div class="text-right" style="padding: 10px;">									
									<%-- <button class="btn btn-info btn-rounded" type="button" onclick="location.href='${pageContext.request.contextPath}/admin/updateProgram'" style="font-size: 15px">수정</button> --%>
									<button class="btn btn-info btn-rounded" type="button" onclick="location.href='<c:url value="updateProgram">
										<c:param name="programNo" value="${programByNo.programNo}" /></c:url>'" style="font-size: 15px">수정</button>
									
									<button class="btn btn-info btn-rounded" type="submit" style="font-size: 15px">삭제</button>
									<button class="btn btn-info btn-rounded" type="button" onclick="location.href='${pageContext.request.contextPath}/admin/allProgram'" style="font-size: 15px">목록</button>
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