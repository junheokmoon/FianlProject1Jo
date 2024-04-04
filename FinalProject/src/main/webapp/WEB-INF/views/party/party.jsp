<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"  %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="MiOne - Minimal Landing Page Theme">
    <meta name="author" content="kingstudio.ro">
    <!-- Favicon -->
    <link rel="icon" href="<c:url value="/images/favicon.png"/>">
    <!-- Site Title -->
    <title>GUIDE</title>
    <link rel="stylesheet" href="<c:url value="/css/style.css"/>">
    <!-- Fonts -->
        
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
<link href="<c:url value="/css/partymain.css"/>" type="text/css" rel="stylesheet">

</head>
<body>
<div id="Area">
<h2 style="text-align: center; margin-top: ">이용하실 역할을 선택해주세요!</h2>
<div class="button-container">
   <button class="button button-a">
      <svg xmlns="http://www.w3.org/2000/svg" width="60" height="60" fill="currentColor" class="bi bi-person-check-fill" viewBox="0 0 16 16" style="margin-left: 18px; margin-top: 20px;">
      <path fill-rule="evenodd" d="M15.854 5.146a.5.5 0 0 1 0 .708l-3 3a.5.5 0 0 1-.708 0l-1.5-1.5a.5.5 0 0 1 .708-.708L12.5 7.793l2.646-2.647a.5.5 0 0 1 .708 0"/>
      <path d="M1 14s-1 0-1-1 1-4 6-4 6 3 6 4-1 1-1 1zm5-6a3 3 0 1 0 0-6 3 3 0 0 0 0 6"/>
      </svg>
      <div class="choiceTitle" id="Reader">파티장</div>
      <div class="choiceContents" style="margin-top: 10px;">내 계정으로 파티원 모으기</div>
   </button>
   
  <button class="button button-b" id="BtnB">
      <svg xmlns="http://www.w3.org/2000/svg" width="60" height="60" fill="currentColor" class="bi bi-people-fill" viewBox="0 0 16 16" style="margin-top: 20px;">
      <path d="M7 14s-1 0-1-1 1-4 5-4 5 3 5 4-1 1-1 1zm4-6a3 3 0 1 0 0-6 3 3 0 0 0 0 6m-5.784 6A2.24 2.24 0 0 1 5 13c0-1.355.68-2.75 1.936-3.72A6.3 6.3 0 0 0 5 9c-4 0-5 3-5 4s1 1 1 1zM4.5 8a2.5 2.5 0 1 0 0-5 2.5 2.5 0 0 0 0 5"/>
      </svg>
      <div class="choiceTitle" >파티원</div>
      <div class="choiceContents" style="margin-top: 10px;">공유계정을 받아 사용하고 싶어요</div>
  </button>
</div>
	<div id="display"></div>
	
</div>

<script type="text/javascript">


document.querySelector(".button-a").addEventListener('click', function() {
    var xhr = new XMLHttpRequest();
    xhr.onreadystatechange = function() {
      if (xhr.readyState == 4) {
        if (xhr.status == 200) {
          document.getElementById("display").innerHTML = xhr.responseText;
        } else {
          alert("에러코드 = " + xhr.status)
        }
      }
    }

    // GET 요청으로 partyReader.jsp의 내용을 가져옵니다.
	xhr.open("GET", "<c:url value='/partyLeader'/>", true);
    xhr.send();
          document.getElementById("display").innerHTML = xhr.responseText;
  });

document.querySelector(".button-b").addEventListener('click', function() {
    var xhr = new XMLHttpRequest();
    xhr.onreadystatechange = function() {
      if (xhr.readyState == 4) {
        if (xhr.status == 200) {
          document.getElementById("display").innerHTML = xhr.responseText;
        } else {
          alert("에러코드 = " + xhr.status)
        }
      }
    }

    // GET 요청으로 partyMember.jsp의 내용을 가져옵니다.
	xhr.open("GET", "<c:url value='/partyMember'/>", true);
    xhr.send();
  });
	

document.addEventListener('DOMContentLoaded', function() {

    const buttons = document.querySelectorAll('.button');
    const choiceTitles = document.querySelectorAll('.choiceTitle'); 
    
    buttons.forEach(function(button, index) {
      button.addEventListener('click', function() {
        // 모든 버튼에서 active 클래스 제거
        buttons.forEach(function(btn) {
          btn.classList.remove('active');
        });
        // 클릭된 버튼에만 active 클래스 추가
        button.classList.add('active');

        
        // 선택된 버튼에 따라 choiceTitle의 배경색 변경
        if (button.classList.contains('button-a')) {
          choiceTitles[1].style.opacity = '0.5'; // 버튼 B의 choiceTitle의 투명도 설정
          choiceTitles[0].style.opacity = '1'; // 버튼 A의 choiceTitle의 투명도 설정
        } else {
          choiceTitles[0].style.opacity = '0.5'; // 버튼 A의 choiceTitle의 투명도 설정
          choiceTitles[1].style.opacity = '1'; // 버튼 B의 choiceTitle의 투명도 설정
        }
      });
    });
  });


// 페이지가 로딩될 때 실행될 함수
window.onload = function() {
    // 버튼을 가져옴
    var button = document.getElementById('BtnB');
    // 버튼을 클릭
    button.click();
};



</script>
<script src="<c:url value="/js/bootstrap.bundle.min.js"/>"></script>
<script src="<c:url value="/js/theme.js"/>"></script>
</body>
</html>