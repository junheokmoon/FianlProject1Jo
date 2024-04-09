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
				<h1 class="page-header text-overflow"><strong>포인트 지급 내역</strong></h1>
			</div>
			
			<div id="page-content">
				<div class="row">
					<div style="width: 95%;">
						<div class="panel" style="padding-top: 40px;">
							<div class="text-right" style="padding-right:40px;">
								<button class="btn btn-info btn-rounded" onclick="location.href='${pageContext.request.contextPath}/admin/addPoint'" style="font-size: 15px">포인트 지급</button>
							</div>
							<div class="panel-body">
								<div class="table-responsive">
									<table class="table table-striped table-hover" style="font-size: 15px; text-align: center;">
										<thead>
											<tr>
												<th width="10%" style="text-align: center;">NO</th>
												<th width="15%" style="text-align: center;">아이디</th>
												<th width="15%" style="text-align: center;">이름</th>
												<th width="20%" style="text-align: center;">포인트 지급 사유</th>
												<th width="15%" style="text-align: center;">지급된 포인트</th>
												<th width="15%" style="text-align: center;">총 포인트</th>
												<th width="10%" style="text-align: center;">지급일</th>
											</tr>
										</thead>
										<tbody>
											<c:forEach var="pointList" items="${pointList }">
												<tr>
													<td>1</td>
													<td>${pointList.userId}</td>
													<td>${pointList.userName}</td>
													<td id="reason">${pointList.pointComment}</td>
													<td>${pointList.pointAdd} 포인트</td>
													<td>${pointList.pointTotal} 포인트</td>
													<td>${fn:substring(pointList.pointDate,0,10) }</td>
												</tr>
											</c:forEach>
										</tbody>
									</table>
									
									<!-- 검색하기 start -->
									<div style="font-size: 14px;">
										<form style="text-align: center; margin-top: 60px;">
											<select style="width:130px; height:30px; border-color:lightgray; border-width: 1px; border-radius: 5px;">
												<option value="">&nbsp;아이디&nbsp;</option>
												<option value="">&nbsp;이름&nbsp;</option>
												<option value="">&nbsp;지급일&nbsp;</option>
											</select>
											<input type="text" name="keyword" style="width:30%; height:30px; outline: none; box-shadow: none; border:1px solid lightgray; border-radius: 5px;">
											<button type="submit" style="width:50px; height:30px; outline: none; border:none; background-color:#54abd9; color: #fff; border-radius: 5px;">검색</button>
										</form>
									</div>
									<!-- 검색하기 end -->
									
									<div class="text-center" style="padding-top:20px;">
										<ul class="pagination" >
											<li class="disabled"><a href="#" class="fa fa-angle-double-left"></a></li>
											<li class="active"><a href="#">1</a></li>
											<li><a href="#">2</a></li>
											<li><a href="#">3</a></li>
											<li><a href="#">4</a></li>
											<li><span>...</span></li>
											<li><a href="#">20</a></li>
											<li><a href="#" class="fa fa-angle-double-right"></a></li>
										</ul>
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