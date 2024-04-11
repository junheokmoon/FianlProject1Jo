<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<!DOCTYPE html>
<html lang="ko">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>WITTY</title>
    <style>
     body {
        font-family: Arial, sans-serif;
        line-height: 1.6;
        margin: 0;
        padding: 20px;
    }
    .container10 {
        max-width: 800px;
        margin: 0 auto;
        margin-top: 100px;
        padding: 20px;
        border: 1px solid black;
        border-radius: 5px;
        background-color: #f9f9f9;
        position: relative;
    }
    h2 {
        text-align: center;
        margin-bottom: 20px;
        color: #333;
    }
    table {
        width: 100%;
        border-collapse: collapse;
        margin-bottom: 20px;
        border: 1px solid #333; /* 테이블 테두리 색상 및 두께 지정 */
    }
    th, td {
        padding: 10px;
        border: 1px solid #333; /* 테이블 셀 테두리 색상 및 두께 지정 */
        text-align: left;
    }
    th {
        background-color: #f7f7f7;
        font-weight: bold;
    }
    textarea {
        width: 100%;
        height: 200px;
        padding: 10px;
        border: 1px solid #333; /* 텍스트 영역 테두리 색상 및 두께 지정 */
        resize: none;
        font-size: 16px;
        line-height: 1.5;
        pointer-events: none; /* 읽기 전용 */
    }
    .back-button {
        position: absolute;
        bottom: 10px; /* 목록 버튼이 더 아래로 내려오도록 변경 */
        right: 20px;
    }
    .back-button a {
        padding: 10px 20px;
        background-color: #579ddb;
        color: #fff;
        border-radius: 5px;
        text-decoration: none;
        transition: background-color 0.2s;
    }
    .back-button a:hover {
        background-color: #417ac1;
    }
    </style>


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




    <!--SCRIPT-->
    <!--=================================================-->

    <!--Page Load Progress Bar [ OPTIONAL ]-->
    <link href="<c:url value="/plugins/pace/pace.min.css"/>" rel="stylesheet">
    <script src="<c:url value="/plugins/pace/pace.min.js"/>"></script>
    
</head>


<body>
	<div class="container10">
        <h2>공지사항</h2>
        
        <!-- 공지사항 세부 정보 테이블 -->
        <table>
            <tr>
                <th>제목</th>
                <td>${noticedetail.noticeTitle }</td>
            </tr>
            <tr>
                <th>작성일</th>
                <td>${noticedetail.noticeDate}</td>
            </tr>
            <tr>
                <th>조회수</th>
                <td>${noticedetail.noticeCount}</td>
            </tr>
            <tr>
                <th>내용</th>
                <td>
                    <textarea readonly>${noticedetail.noticeContent}</textarea>
                </td>
            </tr>
        </table>

        <!-- 목록 버튼 -->
        <div class="back-button">
            <a href="<c:url value="/notice/list"/>">목록</a>
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
	<script src="<c:url value="/js/nifty.min.js"/>"></script>


	<!--Switchery [ OPTIONAL ]-->
	<script src="<c:url value="/plugins/switchery/switchery.min.js"/>"></script>


	<!--Bootstrap Select [ OPTIONAL ]-->
	<script src="<c:url value="/plugins/bootstrap-select/bootstrap-select.min.js"/>"></script>


	<!--Demo script [ DEMONSTRATION ]-->
	<script src="<c:url value="/js/demo/nifty-demo.min.js"/>"></script>

</body>
</html>
