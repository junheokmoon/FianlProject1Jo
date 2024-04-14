<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>

<!DOCTYPE html>
<html lang="ko">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>문의 상세 보기</title>

    <!-- Link to external CSS and JavaScript resources -->
    <link href="<c:url value="/css/bootstrap2.min.css"/>" rel="stylesheet">
    <link href="<c:url value="/css/nifty.min.css"/>" rel="stylesheet">
    <link href="<c:url value="/plugins/font-awesome/css/font-awesome.min.css"/>" rel="stylesheet">
    <link href="<c:url value="/plugins/switchery/switchery.min.css"/>" rel="stylesheet">
    <link href="<c:url value="/plugins/bootstrap-select/bootstrap-select.min.css"/>" rel="stylesheet">
    <link href="<c:url value="/css/demo/nifty-demo.min.css"/>" rel="stylesheet">
    
    <style>
        /* Custom styles */
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
            padding: 10px 20px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            float: right;
        }

        button[type="submit"] {
            background-color: #008CBA;
            color: white;
        }

        button[type="submit"]:hover {
            background-color: #0077A3;
        }

        button[type="button"] {
            background-color: #4CAF50;
            color: white;
        }

        button[type="button"]:hover {
            background-color: #45a049;
        }
    </style>
</head>

<body>
    <div class="container1">
        <!-- Inquiry Details Section -->
        <div class="form-group">
            <p><label for="inquiry-number">문의 번호:</label> <span id="inquiry-number">${inquiry.inquiryNo}</span></p>
            <p><label for="inquiry-type">문의 유형:</label> <span id="inquiry-type">${inquiry.inquiryType}</span></p>
            <p><label for="answer-status">답변 상태:</label> <span id="answer-status">${inquiry.inquiryAnswer}</span></p>
            <p><label for="author">작성자:</label> <span id="author">${usertable.username}</span></p>
            <p><label for="writing-date">작성 일자:</label> <span id="writing-date">${inquiry.inquirydate}</span></p>
        </div>

        <div class="form-group">
            <label for="title">제목:</label>
            <input type="text" id="title" name="inquiryTitle" value="${inquiry.inquiryTitle}" readonly="readonly">
        </div>
        <div class="form-group">
            <label for="message">내용:</label>
            <textarea id="message" name="inquiryContent" rows="5" readonly="readonly">${inquiry.inquiryContent}</textarea>
        </div>
        
        <!-- Manager's Answer Section -->
        <label for="answer">답변:</label>
        <div class="form-group">
            <textarea id="inquiryAnswer" rows="5" disabled="disabled">${inquiry.inquiryAnswer}</textarea>
        </div>

        <!-- Navigation Button -->
        <button type="button" class="btn btn-info btn-rounded" onclick="window.history.back();">목록</button>
    </div>

    <!-- Include external JavaScript resources -->
    <script src="<c:url value="/js/jquery-2.1.1.min.js"/>"></script>
    <script src="<c:url value="/js/bootstrap.min.js"/>"></script>
    <script src="<c:url value="/plugins/fast-click/fastclick.min.js"/>"></script>
    <script src="<c:url value="/js/nifty.min.js"/>"></script>
    <script src="<c:url value="/plugins/switchery/switchery.min.js"/>"></script>
    <script src="<c:url value="/plugins/bootstrap-select/bootstrap-select.min.js"/>"></script>
    <script src="<c:url value="/js/demo/nifty-demo.min.js"/>"></script>
</body>
</html>