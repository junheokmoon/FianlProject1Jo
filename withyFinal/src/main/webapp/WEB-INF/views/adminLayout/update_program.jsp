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
				<h1 class="page-header text-overflow"><strong>프로그램 수정</strong></h1>
			</div>
		
			<div id="page-content">
				<div class="row">
					<div style="width: 95%;">
						<div class="panel" style="padding: 50px;">
				
							<form action="<c:url value="/admin/updateProgram"/>" method="post" enctype="multipart/form-data" class="form-horizontal" style="font-size: 15px">
								<div class="panel-body">
									<div class="form-group">
										<label class="col-sm-3" for="ccccc" style="text-indent: 5em;">프로그램 번호</label>
										<div class="col-sm-6">
											<input type="text" class="form-control input-lg" id="ccccc" name="programNo" value="${programByNo.programNo }" readonly="readonly"/>
										</div>
									</div>
									<div class="form-group">
										<label class="col-sm-3" for="ccccc" style="text-indent: 5em;">제목</label>
										<div class="col-sm-6">
											<input type="text" class="form-control input-lg" id="ccccc" name="programName" value="${programByNo.programName }">
										</div>
									</div>
									<div class="form-group">
										<label class="col-sm-3" for="aaaaa" style="text-indent: 5em;">OTT종류</label>
										<div class="col-sm-6">
											<select class="selectpicker" name="programOttNo" >
									            <c:forEach var="ott" items="${getOttNoAndNameList}">
									                <c:choose>
									                    <c:when test="${ott.ottNo eq programByNo.programOttNo}">
									                        <option value="${ott.ottNo}" selected>${ott.ottName}</option>
									                    </c:when>
									                    <c:otherwise>
									                        <option value="${ott.ottNo}">${ott.ottName}</option>
									                    </c:otherwise>
									                </c:choose>
									            </c:forEach>
									        </select>
										</div>
									</div>
									<div class="form-group">
									    <label class="col-sm-3" for="aaaaa" style="text-indent: 5em;">프로그램 장르</label>
									    <div class="col-sm-6">
									        <select class="selectpicker" name="programCategoryNo" >
									            <c:forEach var="programCategoryNo" items="${getProgramCategoryNoList}">
									                <%-- <c:choose>
									                    <c:when test="${programCategoryNo eq programByNo.programCategoryNo}">
									                        <option value="${programCategoryNo}" selected>${programCategoryNo}</option>
									                    </c:when>
									                    <c:otherwise>
									                        <option value="${programCategoryNo}">${programCategoryNo}</option>
									                    </c:otherwise>
									                </c:choose> --%>
									                
									                <c:choose>
													    <c:when test="${programCategoryNo eq programByNo.programCategoryNo}">
													        <c:choose>
													            <c:when test="${programCategoryNo eq 1}">
													                <option value="${programCategoryNo}" selected>영화</option>
													            </c:when>
													            <c:when test="${programCategoryNo eq 2}">
													                <option value="${programCategoryNo}" selected>드라마</option>
													            </c:when>
													            <c:when test="${programCategoryNo eq 3}">
													                <option value="${programCategoryNo}" selected>예능</option>
													            </c:when>
													            <c:when test="${programCategoryNo eq 4}">
													                <option value="${programCategoryNo}" selected>다큐</option>
													            </c:when>
													        </c:choose>
													    </c:when>
													    <c:otherwise>
													        <c:choose>
													            <c:when test="${programCategoryNo eq 1}">
													                <option value="${programCategoryNo}">영화</option>
													            </c:when>
													            <c:when test="${programCategoryNo eq 2}">
													                <option value="${programCategoryNo}">드라마</option>
													            </c:when>
													            <c:when test="${programCategoryNo eq 3}">
													                <option value="${programCategoryNo}">예능</option>
													            </c:when>
													            <c:when test="${programCategoryNo eq 4}">
													                <option value="${programCategoryNo}">다큐</option>
													            </c:when>
													        </c:choose>
													    </c:otherwise> 
													</c:choose>
									            </c:forEach>
									        </select>
									    </div>
									</div>
									<div class="form-group">
										<label class="col-sm-3" for="ccccc" style="text-indent: 5em;">내용설명</label>
										<div class="col-sm-6">
											<textarea rows="5" class="form-control" name="programDetail">${programByNo.programDetail}</textarea>
										</div>
									</div>
									<div class="form-group">
										<label class="col-md-3" style="text-indent: 5em;">이미지</label>
										<div class="col-md-9">
											<input type="file" name="multipartFile" id="programImage">
										</div>
										<div style="padding-left: 26%;">
											<img src="<c:url value='${fn:split(programByNo.programImage, \"_\")[1]}'/>" width="100px" style=" padding-top: 10px;">
										</div>
									</div>
									<div class="form-group">
								        <label class="col-md-3" style="text-indent: 5em;">동영상</label>
								        <div class="col-md-9">
								           <input type="text" class="form-control input-lg" id="ccccc" name="programVideo" value="${programByNo.programVideo}">
								        </div>
								    </div>
								</div>
								<div class="text-right">
									<button class="btn btn-info btn-rounded" type="submit" style="font-size: 15px">완료</button>
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