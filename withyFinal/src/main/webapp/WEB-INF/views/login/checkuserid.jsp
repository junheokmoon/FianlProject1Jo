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
            $('#checkDuplicateBtn').click(function() {
                let userId = $('#userId').val();

                $.ajax({
                    url: '<c:url value="/checkUserId"/>',
                    type: 'POST',
                    data: { userId: userId },
                    success: function(response) {
                        if (response === 'available') {
                            alert('사용할 수 있는 아이디입니다.');
                        } else {
                            alert('사용할 수 없는 아이디입니다.');
                        }
                    },
                    error: function() {
                        alert('아이디 중복 확인 중 오류가 발생했습니다.');
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