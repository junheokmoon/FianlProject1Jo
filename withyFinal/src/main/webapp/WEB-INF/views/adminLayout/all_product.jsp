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
				<h1 class="page-header text-overflow"><strong>전체 상품(이용권) 관리</strong></h1>
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
												<th width="10%" style="text-align: center;">코드</th>
												<th width="20%" style="text-align: center;">종류</th>
												<th width="10%" style="text-align: center;">기간</th>
												<th width="20%" style="text-align: center;">요금</th>
												<th width="10%" style="text-align: center;">이미지1</th>
												<th width="10%" style="text-align: center;">이미지2</th>
												<th width="10%" style="text-align: center;">수정</th>
											</tr>
										</thead>
										<tbody>
											<tr>
												<td>1</td>
												<td>N3</td>
												<td>넷플릭스</td>
												<td>3개월</td>
												<td>12,000원</td>
												<td style="padding: 1px;"><img src="img/N3.png" width="30%"></td>
												<td>넷플이미지</td>
												<td>
													<a class="btn btn-xs btn-default add-tooltip" data-toggle="tooltip" href="<c:url value="/admin/updateProduct"/>" data-original-title="Edit" data-container="body"><i class="fa fa-pencil"></i></a>
												</td>
											</tr>
											<tr>
												<td>1</td>
												<td>N3</td>
												<td>넷플릭스</td>
												<td>3개월</td>
												<td>12,000원</td>
												<td style="padding: 1px;"><img src="img/N3.png" width="30%"></td>
												<td>넷플이미지</td>
												<td>
													<a class="btn btn-xs btn-default add-tooltip" data-toggle="tooltip" href="update_product.jsp" data-original-title="Edit" data-container="body"><i class="fa fa-pencil"></i></a>
												</td>
											</tr>
											<tr>
												<td>1</td>
												<td>N3</td>
												<td>넷플릭스</td>
												<td>3개월</td>
												<td>12,000원</td>
												<td style="padding: 1px;"><img src="img/N3.png" width="30%"></td>
												<td>넷플이미지</td>
												<td>
													<a class="btn btn-xs btn-default add-tooltip" data-toggle="tooltip" href="update_product.jsp" data-original-title="Edit" data-container="body"><i class="fa fa-pencil"></i></a>
												</td>
											</tr>
											<tr>
												<td>1</td>
												<td>N3</td>
												<td>넷플릭스</td>
												<td>3개월</td>
												<td>12,000원</td>
												<td style="padding: 1px;"><img src="img/N3.png" width="30%"></td>
												<td>넷플이미지</td>
												<td>
													<a class="btn btn-xs btn-default add-tooltip" data-toggle="tooltip" href="update_product.jsp" data-original-title="Edit" data-container="body"><i class="fa fa-pencil"></i></a>
												</td>
											</tr>
											<tr>
												<td>1</td>
												<td>N3</td>
												<td>넷플릭스</td>
												<td>3개월</td>
												<td>12,000원</td>
												<td style="padding: 1px;"><img src="img/N3.png" width="30%"></td>
												<td>넷플이미지</td>
												<td>
													<a class="btn btn-xs btn-default add-tooltip" data-toggle="tooltip" href="update_product.jsp" data-original-title="Edit" data-container="body"><i class="fa fa-pencil"></i></a>
												</td>
											</tr>
											<tr>
												<td>6</td>
												<td>D12</td>
												<td>디즈니</td>
												<td>12개월</td>
												<td>48,000원</td>
												<td style="padding: 1px;"><img src="img/D12.png" width="30%"></td>
												<td>디즈니이미지</td>
												<td>
													<a class="btn btn-xs btn-default add-tooltip" data-toggle="tooltip" href="#" data-original-title="Edit" data-container="body"><i class="fa fa-pencil"></i></a>
												</td>
											</tr>
											<tr>
												<td>6</td>
												<td>D12</td>
												<td>디즈니</td>
												<td>12개월</td>
												<td>48,000원</td>
												<td style="padding: 1px;"><img src="img/D12.png" width="30%"></td>
												<td>디즈니이미지</td>
												<td>
													<a class="btn btn-xs btn-default add-tooltip" data-toggle="tooltip" href="#" data-original-title="Edit" data-container="body"><i class="fa fa-pencil"></i></a>
												</td>
											</tr>
											<tr>
												<td>6</td>
												<td>D12</td>
												<td>디즈니</td>
												<td>12개월</td>
												<td>48,000원</td>
												<td style="padding: 1px;"><img src="img/D12.png" width="30%"></td>
												<td>디즈니이미지</td>
												<td>
													<a class="btn btn-xs btn-default add-tooltip" data-toggle="tooltip" href="#" data-original-title="Edit" data-container="body"><i class="fa fa-pencil"></i></a>
												</td>
											</tr>
											<tr>
												<td>6</td>
												<td>D12</td>
												<td>디즈니</td>
												<td>12개월</td>
												<td>48,000원</td>
												<td style="padding: 1px;"><img src="img/D12.png" width="30%"></td>
												<td>디즈니이미지</td>
												<td>
													<a class="btn btn-xs btn-default add-tooltip" data-toggle="tooltip" href="#" data-original-title="Edit" data-container="body"><i class="fa fa-pencil"></i></a>
												</td>
											</tr>
											<tr>
												<td>6</td>
												<td>D12</td>
												<td>디즈니</td>
												<td>12개월</td>
												<td>48,000원</td>
												<td style="padding: 1px;"><img src="img/D12.png" width="30%"></td>
												<td>디즈니이미지</td>
												<td>
													<a class="btn btn-xs btn-default add-tooltip" data-toggle="tooltip" href="#" data-original-title="Edit" data-container="body"><i class="fa fa-pencil"></i></a>
												</td>
											</tr>
										</tbody>
									</table>
									<div class="panel-body text-center">
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