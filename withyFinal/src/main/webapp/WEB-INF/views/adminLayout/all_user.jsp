<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"  %>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
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
    <link href="<c:url value="/plugins/switchery/switchery.min.css"/>">

    <!--Bootstrap Select [ OPTIONAL ]-->
    <link href="<c:url value="/plugins/bootstrap-select/bootstrap-select.min.css"/>" rel="stylesheet">

    <!--Demo [ DEMONSTRATION ]-->
    <link href="<c:url value="/css/demo/nifty-demo.min.css"/>" rel="stylesheet">

    <!--Page Load Progress Bar [ OPTIONAL ]-->
    <link href="<c:url value="/plugins/pace/pace.min.css"/>" rel="stylesheet">
    <script src="<c:url value="/plugins/pace/pace.min.js"/>"></script>

</head>
<style>
.form-control2 {
  display: block;
  width: 50%;
  height: 34px;
  padding: 6px 12px;
  font-size: 14px;
  line-height: 1.42857143;
  color: #555;
  background-color: #fff;
  background-image: none;
  border: 1px solid #ccc;
  border-radius: 4px;
  -webkit-box-shadow: inset 0 1px 1px rgba(0, 0, 0, .075);
          box-shadow: inset 0 1px 1px rgba(0, 0, 0, .075);
  -webkit-transition: border-color ease-in-out .15s, -webkit-box-shadow ease-in-out .15s;
       -o-transition: border-color ease-in-out .15s, box-shadow ease-in-out .15s;
          transition: border-color ease-in-out .15s, box-shadow ease-in-out .15s;
}
</style>
<body>
	<div class="boxed">
		<div id="content-container">
			<div id="page-title">
				<h1 class="page-header text-overflow"><strong>회원 정보 관리</strong></h1>
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
												<th width="6%" style="text-align: center;">NO</th>
												<th width="15%" style="text-align: center;">아이디</th>
												<th width="15%" style="text-align: center;">이름</th>
												<th width="15%" style="text-align: center;">권한</th>
												<th width="15%" style="text-align: center;">보유 포인트</th>
												<th width="20%" style="text-align: center;">대표 보유 이용권</th>
												<th width="14%" style="text-align: center;">가입일</th>
											</tr>
										</thead>
										<tbody>
											<c:forEach var="userList" items="${userList }">
												<tr>
													<td>1</td>
													<td>
														<a href="<c:url value="detailUser"><c:param name="userId" value="${userList.userId}" /></c:url>" class="btn-link">
															${userList.userId}
														</a>
													</td>
													<td>${userList.userName}</td>
													<c:if test="${userList.userStatus == 1 }">
														<td>일반회원</td>
													</c:if>
													<c:if test="${userList.userStatus == 9 }">
														<td>관리자</td>
													</c:if>
													<td>${userList.userPoint} 포인트</td>
													<td>3개월 넷플릭스 이용권</td>
													<td>${fn:substring(userList.userJoindate,0,10) }</td>
												</tr>
											</c:forEach>
										</tbody>
									</table>
									
									<!-- 검색하기 start -->
									<div style="font-size: 14px;">
										<form style="text-align: center; margin-top: 60px;">
											<select style="width:130px; height:30px; border-color:lightgray; border-width: 1px; border-radius: 5px;">
												<option value="">&nbsp;회원번호&nbsp;</option>
												<option value="">&nbsp;아이디&nbsp;</option>
												<option value="">&nbsp;이름&nbsp;</option>
												<option value="">&nbsp;닉네임&nbsp;</option>
											</select>
											<input type="text" name="keyword" style="width:30%; height:30px; outline: none; box-shadow: none; border:1px solid lightgray; border-radius: 5px;">
											<button type="submit" style="width:50px; height:30px; outline: none; border:none; background-color:#54abd9; color: #fff; border-radius: 5px;">검색</button>
										</form>
									</div>
									<!-- 검색하기 end -->
									
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
	
	<script src="<c:url value="/js/nifty.min.js"/>"></script>
	
	
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