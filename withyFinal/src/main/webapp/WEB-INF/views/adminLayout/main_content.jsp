<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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

#reason2 {
	max-width: 150px; /* 원하는 최대 너비 지정 */
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
									<c:forEach var="userJoindate" items="${userJoindateList }">
										<tr>
											<td>${userJoindate.userId}</td>
											<td>${userJoindate.userName}</td>
											<td>${userJoindate.userNickname}</td>
											<c:if test="${userJoindate.userStatus == 1 }">
												<td>일반회원</td>
											</c:if>
											<c:if test="${userJoindate.userStatus == 9 }">
												<td>관리자</td>
											</c:if>
											<td>${fn:substring(userJoindate.userJoindate,0,10) }</td>
										</tr>
									</c:forEach>
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
										<th width="10%" style="text-align: center;">지급일</th>
									</tr>
								</thead>
								<tbody>
									<c:forEach var="addPointList" items="${addPointList }">
										<tr>
											<td>${addPointList.userId}</td>
											<td id="reason">${addPointList.pointComment}</td>
											<td>${addPointList.pointAdd} 포인트</td>
											<td>${fn:substring(addPointList.pointDate,0,10) }</td>
										</tr>
									</c:forEach>
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
	<div class="boxed" style="width: 50%; float:right; padding-right:5%; padding-bottom: 70px;">
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
										<th width="5%" style="text-align: center;">문의제목</th>
										<th width="10%" style="text-align: center;">문의종류</th>
										<th width="10%" style="text-align: center;">작성자</th>
										<th width="12%" style="text-align: center;">작성일</th>
										<th width="12%" style="text-align: center;">답변상태</th>
									</tr>
								</thead>
								<tbody>
									<c:forEach var="inquiryList" items="${inquiryList }">
										<tr>
											<td id="reason2">${inquiryList.inquiryTitle}</td>
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