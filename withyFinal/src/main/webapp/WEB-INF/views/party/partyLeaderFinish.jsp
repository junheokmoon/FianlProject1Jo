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

<style type="text/css">

.list{
	margin: 10px;
}


#Area{
	margin: 0 auto;
	width: 50%;
	height: 100vh;
	background: rgb(119,184,254);
	background: linear-gradient(0deg, rgba(119,184,254,1) 5%, rgba(140,193,250,1) 14%,
	rgba(163,206,251,1) 23%, rgba(205,230,253,1) 49%, rgba(249,254,255,1) 85%);
}




</style>
</head>
<body>
<div id="Area" style="width: 50%; margin: 0 auto; padding: 20px; margin-top: 140px;">
	<div style="text-align: center; ">
		<svg xmlns="http://www.w3.org/2000/svg" width="180" height="180" fill="currentColor" class="bi bi-house-heart" viewBox="0 0 16 16">
	  		<path d="M8 6.982C9.664 5.309 13.825 8.236 8 12 2.175 8.236 6.336 5.309 8 6.982"/>
	  		<path d="M8.707 1.5a1 1 0 0 0-1.414 0L.646 8.146a.5.5 0 0 0 .708.707L2 8.207V13.5A1.5 1.5 0 0 0 3.5 15h9a1.5 1.5 0 0 0 1.5-1.5V8.207l.646.646a.5.5 0 0 0 .708-.707L13 5.793V2.5a.5.5 0 0 0-.5-.5h-1a.5.5 0 0 0-.5.5v1.293zM13 7.207V13.5a.5.5 0 0 1-.5.5h-9a.5.5 0 0 1-.5-.5V7.207l5-5z"/>
		</svg>
	</div>		
	<h2 style="text-align: center; margin-top: 50px;">파티방 생성 완료!</h2>
		
	<div style="text-align: ; margin-top: 50px;">
	<div class="list">
	<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" style="margin-right: 10px;" fill="currentColor" class="bi bi-send" viewBox="0 0 16 16">
		<path d="M15.854.146a.5.5 0 0 1 .11.54l-5.819 14.547a.75.75 0 0 1-1.329.124l-3.178-4.995L.643 7.184a.75.75 0 0 1 .124-1.33L15.314.037a.5.5 0 0 1 .54.11ZM6.636 10.07l2.761 4.338L14.13 2.576zm6.787-8.201L1.591 6.602l4.339 2.76z" />
	</svg>
	자동으로 조건에 맞는 파티원들이 입장합니다.
	</div>
	
	<div class="list">
		<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" style="margin-right: 10px;" fill="currentColor" class="bi bi-send" viewBox="0 0 16 16">
		<path d="M15.854.146a.5.5 0 0 1 .11.54l-5.819 14.547a.75.75 0 0 1-1.329.124l-3.178-4.995L.643 7.184a.75.75 0 0 1 .124-1.33L15.314.037a.5.5 0 0 1 .54.11ZM6.636 10.07l2.761 4.338L14.13 2.576zm6.787-8.201L1.591 6.602l4.339 2.76z" />
		</svg>
	설정한 인원이 모두 입장하면 파티는 자동으로 시작됩니다.
	</div>
	
	<div class="list">
		<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" style="margin-right: 10px;" fill="currentColor" class="bi bi-send" viewBox="0 0 16 16">
			<path d="M15.854.146a.5.5 0 0 1 .11.54l-5.819 14.547a.75.75 0 0 1-1.329.124l-3.178-4.995L.643 7.184a.75.75 0 0 1 .124-1.33L15.314.037a.5.5 0 0 1 .54.11ZM6.636 10.07l2.761 4.338L14.13 2.576zm6.787-8.201L1.591 6.602l4.339 2.76z" />
		</svg>
	설정한 인원이 모두 입장하면 등록된 OTT 아이디와 비밀번호가 파티원들에게 공유됩니다.
	</div>
	 
	<div class="list">
		<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" style="margin-right: 10px;" fill="currentColor" class="bi bi-send" viewBox="0 0 16 16">
			<path d="M15.854.146a.5.5 0 0 1 .11.54l-5.819 14.547a.75.75 0 0 1-1.329.124l-3.178-4.995L.643 7.184a.75.75 0 0 1 .124-1.33L15.314.037a.5.5 0 0 1 .54.11ZM6.636 10.07l2.761 4.338L14.13 2.576zm6.787-8.201L1.591 6.602l4.339 2.76z" />
		</svg>
	파티방 생성 후 
	</div>
	</div>
	
	
	<div style="text-align: center;">		
			<button style=" background-color: #3191f9; color: white; width: 300px;
				padding: 10px; border-radius: 8px; margin-top: 75px;"  id="goshop">
					홈으로
			</button>
	</div>
	
</div>


	
<script type="text/javascript">
	
	function Llist() {
	    const element = document.getElementById('mainbodyL').innerHTML; // mainbodyL 태그의 내용을 가져옴
		document.getElementById("mainbodyM").style.visibility ='hidden';
	    document.getElementById("display").innerHTML = element; // display 태그에 mainbodyL 태그의 내용을 넣음

	}
	
	
 	function Mlist(){
 	    const element = document.getElementById('mainbodyM').innerHTML; // mainbodyL 태그의 내용을 가져옴
		document.getElementById("mainbodyL").style.visibility ='hidden';
	    document.getElementById("display").innerHTML = element; // display 태그에 mainbodyL 태그의 내용을 넣음
	}


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
	document.getElementById("mainbodyM").style.visibility ='hidden';
	document.getElementById("mainbodyL").style.visibility ='visible';

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