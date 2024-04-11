<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>

<!DOCTYPE html>
<html lang="ko">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>문의하기</title>

	<style type="text/css">
		.container1 {
		    max-width: 600px;
		    margin: 0 auto;
		    padding: 20px;
		}
		
		.form-group {
		    margin-bottom: 20px;
		}
		
		label {
		    display: block;
		}
		
		input, select, textarea {
		    width: 100%;
		    padding: 8px;
		    border: 1px solid #ccc;
		    border-radius: 4px;
		    box-sizing: border-box;
		}
		
		button {
		    background-color: #4CAF50;
		    color: white;
		    padding: 10px 20px;
		    border: none;
		    border-radius: 4px;
		    cursor: pointer;
		    float: right;
		}
		
		button:hover {
		    background-color: #45a049;
		}
		
		button[type="submit"] {
		    background-color: #008CBA;
		}
		
		button[type="submit"]:hover {
		    background-color: #0077A3;
		}
	</style>
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

    <!--SCRIPT-->
    <!--=================================================-->

</head>

<body>
    <div class="container1">
        <h6>1:1 문의하기</h6>
        <br>
        <form id="inquiry-form" action="/submit-inquiry" method="post">
    		<div class="form-group">
		        <label for="inquiry-type">문의 유형:</label>
		        <select id="inquiry-type" name="inquiry-type" onchange="updateInquiryType()">
		            <option value="${inquiry.status == 1 }">신고문의</option>
		            <option value="${inquiry.status == 2 }">환불문의</option>
		            <option value="${inquiry.status == 3 }">결제문의</option>
		            <option value="${inquiry.status == 4 }">이용문의</option>
		        </select>
		    </div>
		    <!-- hidden input to hold the numerical value -->
		    <input type="hidden" id="inquiry-type-number" name="inquiry-type-number">
		    <div class="form-group">
		        <label for="title">제목:</label>
		        <input type="text" id="title" name="title" value="${inquiry.title }">
		    </div>
		    <div class="form-group">
		        <label for="message">내용:</label>
		        <textarea id="message" name="message" rows="5" >${inquiry.content}</textarea>
		    </div>
		    <button type="submit" class="btn btn-info btn-rounded">등록</button>
	  </form>
</div>
<!--JAVASCRIPT-->
	<!--=================================================-->
	 
	 <script type="text/javascript">
	 	function updateInquiryType() {
		    // 선택된 옵션의 값을 가져옵니다.
		    const inquiryTypeSelect = document.getElementById("inquiry-type");
		    const selectedType = inquiryTypeSelect.value;

		    // 선택된 옵션에 따라 숫자 값을 결정합니다.
		    let inquiryTypeNumber;
		    switch (selectedType) {
		        case "신고문의":
		            inquiryTypeNumber = 1;
		            break;
		        case "환불문의":
		            inquiryTypeNumber = 2;
		            break;
		        case "결제문의":
		            inquiryTypeNumber = 3;
		            break;
		        case "이용문의":
		            inquiryTypeNumber = 4;
		            break;
		        default:
		            inquiryTypeNumber = 0; // 또는 적절한 기본값
		    }

		    // hidden input 필드에 숫자 값을 설정합니다.
		    const inquiryTypeNumberInput = document.getElementById("inquiry-type-number");
		    inquiryTypeNumberInput.value = inquiryTypeNumber;
		}
	 </script>
	 
	<!--jQuery [ REQUIRED ]-->
	<script src="<c:url value="/js/jquery-2.1.1.min.js"/>"></script>


	<!--BootstrapJS [ RECOMMENDED ]-->
	<script src="<c:url value="/js/bootstrap.min.js"/>"></script>


	<!--Fast Click [ OPTIONAL ]-->
	<script src="<c:url value="/plugins/fast-click/fastclick.min.js"/>"></script>

	
	<!--Nifty Admin [ RECOMMENDED ]-->
	<script src="<c:url value="/js/nifty.min.js"/>"></script>


	<!--Switchery [ OPTIONAL ]-->
	<script src="<c:url value="/plugins/switchery/switchery.min.js"/>"></script>


	<!--Bootstrap Select [ OPTIONAL ]-->
	<script src="<c:url value="/plugins/bootstrap-select/bootstrap-select.min.js"/>"></script>


	<!--Demo script [ DEMONSTRATION ]-->
		<script src="<c:url value="/js/demo/nifty-demo.min.js"/>"></script>

</body>
</html>