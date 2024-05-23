<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>아이디 중복 확인</title>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script>
    $(document).ready(function() {
        $("#userId").keyup(function() {
            var userId = $(this).val();
            
            $.ajax({
                url: "<c:url value='/login/checkUserId'/>",
                type: "POST",
                data: { userId: userId },
                success: function(response) {
                    if (response === "duplicate") {
                        $("#userIdMessage").text("이미 사용 중인 아이디입니다.");
                    } else {
                        $("#userIdMessage").text("사용 가능한 아이디입니다.");
                    }
                }
            });
        });
    });
</script>
</head>
<body>
    <h2>아이디 중복 확인</h2>
    <input type="text" id="userId" placeholder="아이디 입력">
    <button id="checkDuplicateBtn">중복 확인</button>
</body>
</html>