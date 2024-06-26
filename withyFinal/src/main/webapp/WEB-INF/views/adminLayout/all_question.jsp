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
				<h1 class="page-header text-overflow"><strong>전체 문의 관리</strong></h1>
			</div>
			
			<div id="page-content">
				<div class="row">
					<div style="width: 95%;">
						<div class="panel" style="padding-top: 50px;">
				
							<div class="panel-body">
								<div class="table-responsive">
									<table class="table table-striped table-hover" style="font-size: 15px; text-align: center;">
										<thead>
											<tr>
												<th width="10%" style="text-align: center;">NO</th>
												<th width="30%" style="text-align: center;">문의 제목</th>
												<th width="15%" style="text-align: center;">문의 종류</th>
												<th width="15%" style="text-align: center;">작성자</th>
												<th width="15%" style="text-align: center;">작성일</th>
												<th width="15%" style="text-align: center;">답변 상태</th>
											</tr>
										</thead>
										<tbody>
											<c:forEach var="inquiryList" items="${inquiryList }">
												<tr>
													<td style="text-align: center;">${inquiryList.rn}</td>
													<td>
														<a href="<c:url value="detailQuestion"><c:param name="inquiryNo" value="${inquiryList.inquiryNo}"/></c:url>" class="btn-link" >
															${inquiryList.inquiryTitle}
														</a>
													</td>
													<c:if test="${inquiryList.inquiryType == 1}">
														<td style="text-align: center;">1:1 문의</td>
													</c:if>
													<c:if test="${inquiryList.inquiryType == 2}">
														<td style="text-align: center;">신고 문의</td>
													</c:if>
													<td style="text-align: center;">${inquiryList.userId}</td>
													<td style="text-align: center;">${fn:substring(inquiryList.inquiryDate,0,10) }</td>
													<c:if test="${inquiryList.inquiryStatus == 1 }">
														<td style="text-align: center;">답변대기중</td>
													</c:if>
													<c:if test="${inquiryList.inquiryStatus == 2 }">
														<td style="text-align: center;">답변완료</td>
													</c:if>
												</tr>
											</c:forEach>
										</tbody>
									</table>
									
									<!-- 검색하기 start -->
									<!-- <div style="font-size: 14px;">
										<form style="text-align: center; margin-top: 60px;">
											<select style="width:130px; height:30px; border-color:lightgray; border-width: 1px; border-radius: 5px;">
												<option value="">&nbsp;문의 번호&nbsp;</option>
												<option value="">&nbsp;문의 제목&nbsp;</option>
												<option value="">&nbsp;작성자&nbsp;</option>
											</select>
											<input type="text" name="keyword" style="width:30%; height:30px; outline: none; box-shadow: none; border:1px solid lightgray; border-radius: 5px;">
											<button type="submit" style="width:50px; height:30px; outline: none; border:none; background-color:#54abd9; color: #fff; border-radius: 5px;">검색</button>
										</form>
									</div> -->
									<!-- 검색하기 end -->
									
									<%-- 페이지 번호 출력 --%>
									<div id="hello" style="text-align: center; padding-top: 40px; padding-bottom: 20px; font-size: 18px;">
										<c:choose>
											<c:when test="${pager.startPage > pager.blockSize }">
												<a href="<c:url value="/admin/allQuestion"/>?pageNum=${pager.prevPage}">[이전]</a>
											</c:when>
											<c:otherwise>
												[이전]
											</c:otherwise>
										</c:choose>
										
										<c:forEach var="i" begin="${pager.startPage }" end="${pager.endPage }" step="1">
											<c:choose>
												<c:when test="${pager.pageNum != i }">
													<a href="<c:url value="/admin/allQuestion"/>?pageNum=${i}">[${i}]</a>
												</c:when>
												<c:otherwise>
													[${i}]
												</c:otherwise>
											</c:choose>
										</c:forEach>
										
										<c:choose>
											<c:when test="${pager.endPage != pager.totalPage }">
												<a href="<c:url value="/admin/allQuestion"/>?pageNum=${pager.nextPage}">[다음]</a>
											</c:when>
											<c:otherwise>
												[다음]
											</c:otherwise>
										</c:choose>		
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
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
	<script src="<c:url value="/plugins/fast-click/fastclick.min.js"/>"></script>

	<!--Switchery [ OPTIONAL ]-->
	<script src="<c:url value="/plugins/switchery/switchery.min.js"/>"></script>

	<!--Bootstrap Select [ OPTIONAL ]-->
	<script src="<c:url value="/plugins/bootstrap-select/bootstrap-select.min.js"/>"></script>

	<!--DataTables [ OPTIONAL ]-->
	<script src="<c:url value="/plugins/datatables/media/js/jquery.dataTables.js"/>"></script>
	<script src="<c:url value="/plugins/datatables/media/js/dataTables.bootstrap.js"/>"></script>
	<script src="<c:url value="/plugins/datatables/extensions/Responsive/js/dataTables.responsive.min.js"/>"></script>

	<!--Demo script [ DEMONSTRATION ]-->
	<script src="<c:url value="/js/demo/nifty-demo.min.js"/>"></script>

	<!--DataTables Sample [ SAMPLE ]-->
	<script src="<c:url value="/js/demo/tables-datatables.js"/>"></script>
	
</body>
</html>