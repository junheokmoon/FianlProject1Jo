<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
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
    <link href="css/bootstrap2.min.css" rel="stylesheet">

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

#reason {
	max-width: 200px; /* 원하는 최대 너비 지정 */
	white-space: nowrap; /* 줄 바꿈 방지 */
	overflow: hidden; /* 넘친 텍스트 숨김 */
	text-overflow: ellipsis; /* 넘친 텍스트 대신 ...으로 표시 */
}
</style>
<body>
	<!-- ###################### 최근 회원가입 start ###################### -->
	<div class="boxed">
		<div class="row" style="padding-top: 30px;">
			<div style="width: 95%;">
				<h1 style="padding-bottom: 20px;">관리자 페이지</h1>
				<div class="panel" style="padding-top: 20px;">
					<h3 style="padding-left: 50px; padding-right: 50px;">
						<strong>최근 회원가입</strong>
						<button class="btn btn-info btn-rounded" style="font-size: 13px; float: right;" type="button" onclick="location.href='${pageContext.request.contextPath}/admin/allUser'">회원관리 바로가기</button>

					</h3>
					<div class="panel-body">
						<div class="table-responsive">
							<table class="table table-striped table-hover" style="font-size: 15px; text-align: center;">
								<thead>
									<tr>
										<th width="12%" style="text-align: center;">아이디</th>
										<th width="12%" style="text-align: center;">이름</th>
										<th width="12%" style="text-align: center;">닉네임</th>
										<th width="12%" style="text-align: center;">권한</th>
										<th width="10%" style="text-align: center;">가입일</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td>${userDTO.user_id}</td>
										<td>홍길동</td>
										<td>HongHong</td>
										<td>일반회원</td>
										<td>2024-03-25</td>
									</tr>
									<tr>
										<td>abc123</td>
										<td>홍길동</td>
										<td>HongHong</td>
										<td>일반회원</td>
										<td>2024-03-25</td>
									</tr>
									<tr>
										<td>abc123</td>
										<td>홍길동</td>
										<td>HongHong</td>
										<td>일반회원</td>
										<td>2024-03-25</td>
									</tr>
									<tr>
										<td>abc123</td>
										<td>홍길동</td>
										<td>HongHong</td>
										<td>일반회원</td>
										<td>2024-03-25</td>
									</tr>
									<tr>
										<td>abc123</td>
										<td>홍길동</td>
										<td>HongHong</td>
										<td>일반회원</td>
										<td>2024-03-25</td>
									</tr>
								</tbody>
							</table>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- ###################### 최근 회원가입 end ###################### -->
	
	<!-- ###################### 최근 포인트 지급 start ###################### -->
	<div class="boxed" style="width: 45%; float:left;">
		<div class="row" style="padding-top: 20px;">
			<div>
				<div class="panel" style="padding-top: 20px;">
					<h3 style="padding-left: 50px; padding-right: 50px;">
						<strong>최근 포인트 지급</strong>
						<button class="btn btn-info btn-rounded" type="button" onclick="location.href='${pageContext.request.contextPath}/admin/allPoint'" style="font-size: 13px; float: right;">포인트 관리 바로가기</button>
					</h3>
					<div class="panel-body">
						<div class="table-responsive">
							<table class="table table-striped table-hover" style="font-size: 15px; text-align: center;">
								<thead>
									<tr>
										<th width="12%" style="text-align: center;">아이디</th>
										<th width="12%" style="text-align: center;">지급사유</th>
										<th width="12%" style="text-align: center;">지급 포인트</th>
										<th width="10%" style="text-align: center;">총 포인트</th>
										<th width="10%" style="text-align: center;">지급일</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td>abc123</td>
										<td id="reason">파티장 이탈로 인한 환불입니다람쥐이이이ㅣ이이이ㅣ이이이이이이ㅣㅇㅇ</td>
										<td>4,250</td>
										<td>5,250</td>
										<td>2024-03-26</td>
									</tr>
									<tr>
										<td>abc123</td>
										<td id="reason">파티장 이탈로 인한 환불입니다람쥐이이이ㅣ이이이ㅣ이이이이이이ㅣㅇㅇ</td>
										<td>4,250</td>
										<td>5,250</td>
										<td>2024-03-26</td>
									</tr>
									<tr>
										<td>abc123</td>
										<td id="reason">파티장 이탈로 인한 환불입니다람쥐이이이ㅣ이이이ㅣ이이이이이이ㅣㅇㅇ</td>
										<td>4,250</td>
										<td>5,250</td>
										<td>2024-03-26</td>
									</tr>
									<tr>
										<td id="reason">abc123</td>
										<td id="reason">파티장 이탈로 인한 환불입니다람쥐이이이ㅣ이이이ㅣ이이이이이이ㅣㅇㅇ</td>
										<td>4,250</td>
										<td>5,250</td>
										<td>2024-03-26</td>
									</tr>
									<tr>
										<td>abc123</td>
										<td id="reason">파티장 이탈로 인한 환불입니다람쥐이이이ㅣ이이이ㅣ이이이이이이ㅣㅇㅇ</td>
										<td>4,250</td>
										<td>5,250</td>
										<td>2024-03-26</td>
									</tr>
								</tbody>
							</table>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- ###################### 최근 포인트 지급 end ###################### -->
	
	<!-- ###################### 최근 문의 start ###################### -->
	<div class="boxed" style="width: 50%; float:right; padding-right:5%;">
		<div class="row" style="padding-top: 20px;">
			<div>
				<div class="panel" style="padding-top: 20px;">
					<h3 style="padding-left: 50px; padding-right: 50px;">
						<strong>최근 문의</strong>
						<button class="btn btn-info btn-rounded" type="button" onclick="location.href='${pageContext.request.contextPath}/admin/allQuestion'" style="font-size: 13px; float: right;">문의관리 바로가기</button>
					</h3>
					<div class="panel-body">
						<div class="table-responsive">
							<table class="table table-striped table-hover" style="font-size: 15px; text-align: center;">
								<thead>
									<tr>
										<th width="12%" style="text-align: center;">문의 제목</th>
										<th width="12%" style="text-align: center;">문의 종류</th>
										<th width="12%" style="text-align: center;">작성자</th>
										<th width="10%" style="text-align: center;">작성일</th>
										<th width="10%" style="text-align: center;">답변 상태</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td id="reason">파티장 정산문의 입니당아아ㅏ앙ㅏㅏㅏㅏㅏㅏㅏㅏ</td>
										<td>1:1 문의</td>
										<td>한지원</td>
										<td>2024-03-26</td>
										<td>미완료</td>
									</tr>
									<tr>
										<td id="reason">파티장 정산문의 입니당아아ㅏ앙ㅏㅏㅏㅏㅏㅏㅏㅏ</td>
										<td>1:1 문의</td>
										<td>한지원</td>
										<td>2024-03-26</td>
										<td>미완료</td>
									</tr>
									<tr>
										<td id="reason">파티장 정산문의 입니당아아ㅏ앙ㅏㅏㅏㅏㅏㅏㅏㅏ</td>
										<td>1:1 문의</td>
										<td>한지원</td>
										<td>2024-03-26</td>
										<td>미완료</td>
									</tr>
									<tr>
										<td id="reason">파티장 정산문의 입니당아아ㅏ앙ㅏㅏㅏㅏㅏㅏㅏㅏ</td>
										<td>1:1 문의</td>
										<td>한지원</td>
										<td>2024-03-26</td>
										<td>미완료</td>
									</tr>
									<tr>
										<td id="reason">파티장 정산문의 입니당아아ㅏ앙ㅏㅏㅏㅏㅏㅏㅏㅏ</td>
										<td>1:1 문의</td>
										<td>한지원</td>
										<td>2024-03-26</td>
										<td>미완료</td>
									</tr>
								</tbody>
							</table>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- ###################### 최근 문의 end ###################### -->
	
<!--JAVASCRIPT-->
<!--=================================================-->

<!--jQuery [ REQUIRED ]-->
<script src="js/jquery-2.1.1.min.js"></script>


<!--BootstrapJS [ RECOMMENDED ]-->
<script src="js/bootstrap.min.js"></script>


<!--Fast Click [ OPTIONAL ]-->
<script src="plugins/fast-click/fastclick.min.js"></script>


<!--Nifty Admin [ RECOMMENDED ]-->
<script src="<c:url value="/js/nifty.min.js"/>"></script>


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