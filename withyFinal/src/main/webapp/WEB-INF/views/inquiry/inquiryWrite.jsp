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
        <form id="inquiry-form" action="<c:url value="/inquiry/inquiryWrite"/>" method="post">
        	  <input type="hidden" id="inquiryUserNo" name="inquiryUserNo" value="4">
    		<div class="form-group">
		        <label for="inquiry-type">문의 유형:</label>
		        <select id="inquiry-type" name="inquiryType" onchange="updateInquiryType()">
			            <option value="1">신고문의</option>
					    <option value="2">환불문의</option>
					    <option value="3">결제문의</option>
					    <option value="4">이용문의</option>
		        </select>
		    </div>
		    <!-- hidden input to hold the numerical value -->
		    <input type="hidden" id="inquiry-type-number" name="inquiry-type-number">
		    <div class="form-group">
		        <label for="title">제목:</label>
		        <input type="text" id="title" name="inquiryTitle" value="${inquiry.inquiryTitle}">
		    </div>
		    <div class="form-group">
		        <label for="message">내용:</label>
		        <textarea id="message" name="inquiryContent" rows="5" >${inquiry.inquiryContent}</textarea>
		    </div>	  
		    <button type="submit" class="btn btn-info btn-rounded" onclick="location.href='<c:url value="/mypage/mypageInquiry"/>';">등록</button>
	  </form>
	 <button class="btn btn-info btn-rounded" onclick="window.history.back();">취소</button>
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
	<script src="<c:url value="/js/nifty.min.js"/>"></script>


	<!--Switchery [ OPTIONAL ]-->
	<script src="<c:url value="/plugins/switchery/switchery.min.js"/>"></script>


	<!--Bootstrap Select [ OPTIONAL ]-->
	<script src="<c:url value="/plugins/bootstrap-select/bootstrap-select.min.js"/>"></script>


	<!--Demo script [ DEMONSTRATION ]-->
	<script src="<c:url value="/js/demo/nifty-demo.min.js"/>"></script>

</body>
</html>