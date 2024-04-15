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
				<h1 class="page-header text-overflow"><strong>상품(이용권) 수정</strong></h1>
			</div>
		
			<div id="page-content">
				<div class="row">
					<div style="width: 95%;">
						<div class="panel" style="padding: 50px;">

							<form action="<c:url value="/admin/updateProduct"/>" method="post" enctype="multipart/form-data" class="form-horizontal" style="font-size: 15px">
								<div class="panel-body">
									<div class="form-group">
										<label class="col-sm-3" for="ccccc" style="text-indent: 5em;">티켓코드</label>
										<div class="col-sm-6">
										    <input type="text" class="form-control input-lg" id="ccccc" name="originalTicketCode" value="${ticketInfo.ticketCode}" readonly="readonly"/>
										</div>
									</div>
									<div class="form-group">
									    <label class="col-sm-3" for="aaaaa" style="text-indent: 5em;">종류</label>
									    <div class="col-sm-6">
									        <select class="selectpicker" name="ticketOttNo" >
									            <c:forEach var="ott" items="${getOttNoAndNameList}">
									                <c:choose>
									                    <c:when test="${ott.ottNo eq ticketInfo.ticketOttNo}">
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
									    <label class="col-sm-3" for="aaaaa" style="text-indent: 5em;">기간(개월)</label>
									    <div class="col-sm-6">
									        <select class="selectpicker" name="ticketMonth" >
									            <c:forEach var="ticketMonth" items="${getTicketMonthList}">
									                <c:choose>
									                    <c:when test="${ticketMonth eq ticketInfo.ticketMonth}">
									                        <option value="${ticketMonth}" selected>${ticketMonth}</option>
									                    </c:when>
									                    <c:otherwise>
									                        <option value="${ticketMonth}">${ticketMonth}</option>
									                    </c:otherwise>
									                </c:choose>
									            </c:forEach>
									        </select>
									    </div>
									</div>
									<div class="form-group">
										<label class="col-sm-3" for="ccccc" style="text-indent: 5em;">요금(원)</label>
										<div class="col-sm-6">
											<input type="text" class="form-control input-lg" name = "ticketPrice" id="ccccc" value="${ticketInfo.ticketPrice }">
										</div>
									</div>
									<!-- 
									<div class="form-group">
										<label class="col-md-3" style="text-indent: 5em;">이미지</label>
										<div class="col-md-9">
											<input type="file" name="multipartFile" id="ticketImage1">
										</div>
									</div>
									 -->
									<div class="form-group">
										<label class="col-md-3" style="text-indent: 5em;">이미지</label>
										<div class="col-md-9">
											<span class="pull-left btn btn-default btn-file">
												파일 선택
												<input type="file" name="multipartFile" id="ticketImage1">
											</span>
										</div>
										<div style="padding-left: 26%;">
											<img src="<c:url value='${fn:split(ticketInfo.ticketImage1, \"_\")[1]}'/>" width="100px" style=" padding-top: 10px;">
										</div>
									</div>
								</div>
							<div style="text-align: right;">
								<button class="btn btn-info btn-rounded" type="submit" style="font-size: 15px">완료</button>
								<button class="btn btn-info btn-rounded" type="button" onclick="location.href='${pageContext.request.contextPath}/admin/allProduct'" style="font-size: 15px">목록</button>
							</div>
							</form>
							<c:if test="${ticketInfo.ticketStatus == 1}">
								<div style="text-align: right; padding-top: 5px; padding-right: 30px;">
									<form action="<c:url value="/admin/deleteTicket"/>" method="post">
							            <input type="hidden" name="ticketCode" value="${ticketInfo.ticketCode}">
										<button class="btn btn-info btn-rounded" type="submit" style="font-size: 15px">삭제</button>
							        </form>
						        </div>
					        </c:if>
							<c:if test="${ticketInfo.ticketStatus == 2}">
							    <div style="text-align: right; padding-top: 5px; padding-right: 5px;">
							        <form action="<c:url value="/admin/recoverTicket"/>" method="post">
							            <input type="hidden" name="ticketCode" value="${ticketInfo.ticketCode}">
							            <button class="btn btn-info btn-rounded" type="submit" style="font-size: 15px">티켓 활성화</button>
							        </form>
							    </div>
							</c:if>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>