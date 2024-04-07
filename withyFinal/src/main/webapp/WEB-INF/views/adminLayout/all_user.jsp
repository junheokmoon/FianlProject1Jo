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
	
	<!-- 세미플젝 부트스랩 참고 start -->
<%-- 	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet">
	<link href="<%=request.getContextPath()%>/style/style.css" type="text/css" rel="stylesheet">
	<link href="<%=request.getContextPath()%>/style/cart.css" type="text/css" rel="stylesheet"> --%>
	<!-- 세미플젝 부트스랩 참고 end -->

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
											<th width="10%" style="text-align: center;">NO</th>
											<th width="15%" style="text-align: center;">아이디</th>
											<th width="15%" style="text-align: center;">이름</th>
											<th width="15%" style="text-align: center;">권한</th>
											<th width="15%" style="text-align: center;">포인트</th>
											<th width="20%" style="text-align: center;">대표 보유 이용권</th>
											<th width="10%" style="text-align: center;">가입일</th>
										</tr>
									</thead>
									<tbody>
										<tr>
											<td>1</td>
											<td><a href="detail_user.jsp" class="btn-link">abc123</a></td>
											<td>홍길동</td>
											<td>일반회원</td>
											<td>1,000</td>
											<td>3개월 넷플릭스 이용권</td>
											<td>2024-03-25</td>
										</tr>
										<tr>
											<td>1</td>
											<td><a href="detail_user.jsp" class="btn-link">abc123</a></td>
											<td>홍길동</td>
											<td>일반회원</td>
											<td>1,000</td>
											<td>3개월 넷플릭스 이용권</td>
											<td>2024-03-25</td>
										</tr>
										<tr>
											<td>1</td>
											<td><a href="detail_user.jsp" class="btn-link">abc123</a></td>
											<td>홍길동</td>
											<td>일반회원</td>
											<td>1,000</td>
											<td>3개월 넷플릭스 이용권</td>
											<td>2024-03-25</td>
										</tr>
										<tr>
											<td>1</td>
											<td><a href="detail_user.jsp" class="btn-link">abc123</a></td>
											<td>홍길동</td>
											<td>일반회원</td>
											<td>1,000</td>
											<td>3개월 넷플릭스 이용권</td>
											<td>2024-03-25</td>
										</tr>
										<tr>
											<td>1</td>
											<td><a href="detail_user.jsp" class="btn-link">abc123</a></td>
											<td>홍길동</td>
											<td>일반회원</td>
											<td>1,000</td>
											<td>3개월 넷플릭스 이용권</td>
											<td>2024-03-25</td>
										</tr>
										<tr>
											<td>1</td>
											<td><a href="detail_user.jsp" class="btn-link">abc123</a></td>
											<td>홍길동</td>
											<td>일반회원</td>
											<td>1,000</td>
											<td>3개월 넷플릭스 이용권</td>
											<td>2024-03-25</td>
										</tr>
										<tr>
											<td>1</td>
											<td><a href="detail_user.jsp" class="btn-link">abc123</a></td>
											<td>홍길동</td>
											<td>일반회원</td>
											<td>1,000</td>
											<td>3개월 넷플릭스 이용권</td>
											<td>2024-03-25</td>
										</tr>
										<tr>
											<td>1</td>
											<td><a href="detail_user.jsp" class="btn-link">abc123</a></td>
											<td>홍길동</td>
											<td>일반회원</td>
											<td>1,000</td>
											<td>3개월 넷플릭스 이용권</td>
											<td>2024-03-25</td>
										</tr>
										<tr>
											<td>1</td>
											<td><a href="detail_user.jsp" class="btn-link">abc123</a></td>
											<td>홍길동</td>
											<td>일반회원</td>
											<td>1,000</td>
											<td>3개월 넷플릭스 이용권</td>
											<td>2024-03-25</td>
										</tr>
										<tr>
											<td>1</td>
											<td><a href="detail_user.jsp" class="btn-link">abc123</a></td>
											<td>홍길동</td>
											<td>일반회원</td>
											<td>1,000</td>
											<td>3개월 넷플릭스 이용권</td>
											<td>2024-03-25</td>
										</tr>
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
<script src="js/jquery-2.1.1.min.js"></script>


<!--BootstrapJS [ RECOMMENDED ]-->
<script src="js/bootstrap.min.js"></script>


<!--Fast Click [ OPTIONAL ]-->
<script src="plugins/fast-click/fastclick.min.js"></script>


<!--Nifty Admin [ RECOMMENDED ]-->
<script src="js/nifty.min.js"></script>


<!--Switchery [ OPTIONAL ]-->
<script src="plugins/switchery/switchery.min.js"></script>


<!--Bootstrap Select [ OPTIONAL ]-->
<script src="plugins/bootstrap-select/bootstrap-select.min.js"></script>


<!--DataTables [ OPTIONAL ]-->
<script src="plugins/datatables/media/js/jquery.dataTables.js"></script>
<script src="plugins/datatables/media/js/dataTables.bootstrap.js"></script>
<script src="plugins/datatables/extensions/Responsive/js/dataTables.responsive.min.js"></script>


<!--Demo script [ DEMONSTRATION ]-->
<script src="js/demo/nifty-demo.min.js"></script>


<!--DataTables Sample [ SAMPLE ]-->
<script src="js/demo/tables-datatables.js"></script>
	
</body>
</html>