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
		<svg xmlns="http://www.w3.org/2000/svg" width="180" height="180" fill="currentColor" class="bi bi-rocket-takeoff" viewBox="0 0 16 16">
		  <path d="M9.752 6.193c.599.6 1.73.437 2.528-.362s.96-1.932.362-2.531c-.599-.6-1.73-.438-2.528.361-.798.8-.96 1.933-.362 2.532"/>
		  <path d="M15.811 3.312c-.363 1.534-1.334 3.626-3.64 6.218l-.24 2.408a2.56 2.56 0 0 1-.732 1.526L8.817 15.85a.51.51 0 0 1-.867-.434l.27-1.899c.04-.28-.013-.593-.131-.956a9 9 0 0 0-.249-.657l-.082-.202c-.815-.197-1.578-.662-2.191-1.277-.614-.615-1.079-1.379-1.275-2.195l-.203-.083a10 10 0 0 0-.655-.248c-.363-.119-.675-.172-.955-.132l-1.896.27A.51.51 0 0 1 .15 7.17l2.382-2.386c.41-.41.947-.67 1.524-.734h.006l2.4-.238C9.005 1.55 11.087.582 12.623.208c.89-.217 1.59-.232 2.08-.188.244.023.435.06.57.093q.1.026.16.045c.184.06.279.13.351.295l.029.073a3.5 3.5 0 0 1 .157.721c.055.485.051 1.178-.159 2.065m-4.828 7.475.04-.04-.107 1.081a1.54 1.54 0 0 1-.44.913l-1.298 1.3.054-.38c.072-.506-.034-.993-.172-1.418a9 9 0 0 0-.164-.45c.738-.065 1.462-.38 2.087-1.006M5.205 5c-.625.626-.94 1.351-1.004 2.09a9 9 0 0 0-.45-.164c-.424-.138-.91-.244-1.416-.172l-.38.054 1.3-1.3c.245-.246.566-.401.91-.44l1.08-.107zm9.406-3.961c-.38-.034-.967-.027-1.746.163-1.558.38-3.917 1.496-6.937 4.521-.62.62-.799 1.34-.687 2.051.107.676.483 1.362 1.048 1.928.564.565 1.25.941 1.924 1.049.71.112 1.429-.067 2.048-.688 3.079-3.083 4.192-5.444 4.556-6.987.183-.771.18-1.345.138-1.713a3 3 0 0 0-.045-.283 3 3 0 0 0-.3-.041Z"/>
		  <path d="M7.009 12.139a7.6 7.6 0 0 1-1.804-1.352A7.6 7.6 0 0 1 3.794 8.86c-1.102.992-1.965 5.054-1.839 5.18.125.126 3.936-.896 5.054-1.902Z"/>
		</svg>
	</div>		
	<h2 style="text-align: center; margin-top: 50px;">매칭 시작!</h2>
	
	<div style="text-align: ; margin-top: 50px;">
	<div class="list">
	<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" style="margin-right: 10px;" fill="currentColor" class="bi bi-send" viewBox="0 0 16 16">
		<path d="M15.854.146a.5.5 0 0 1 .11.54l-5.819 14.547a.75.75 0 0 1-1.329.124l-3.178-4.995L.643 7.184a.75.75 0 0 1 .124-1.33L15.314.037a.5.5 0 0 1 .54.11ZM6.636 10.07l2.761 4.338L14.13 2.576zm6.787-8.201L1.591 6.602l4.339 2.76z" />
	</svg>
	자동으로 매칭이 진행됩니다!
	</div>
	
	<div class="list">
		<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" style="margin-right: 10px;" fill="currentColor" class="bi bi-send" viewBox="0 0 16 16">
		<path d="M15.854.146a.5.5 0 0 1 .11.54l-5.819 14.547a.75.75 0 0 1-1.329.124l-3.178-4.995L.643 7.184a.75.75 0 0 1 .124-1.33L15.314.037a.5.5 0 0 1 .54.11ZM6.636 10.07l2.761 4.338L14.13 2.576zm6.787-8.201L1.591 6.602l4.339 2.76z" />
		</svg>
	매칭이 성사되면 이메일로 알려드립니다!
	</div>
	
	<div class="list">
		<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" style="margin-right: 10px;" fill="currentColor" class="bi bi-send" viewBox="0 0 16 16">
			<path d="M15.854.146a.5.5 0 0 1 .11.54l-5.819 14.547a.75.75 0 0 1-1.329.124l-3.178-4.995L.643 7.184a.75.75 0 0 1 .124-1.33L15.314.037a.5.5 0 0 1 .54.11ZM6.636 10.07l2.761 4.338L14.13 2.576zm6.787-8.201L1.591 6.602l4.339 2.76z" />
		</svg>
	바로 진행 가능한 파티를 제안해드립니다!
	</div>
	 
	<div class="list">
		<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" style="margin-right: 10px;" fill="currentColor" class="bi bi-send" viewBox="0 0 16 16">
			<path d="M15.854.146a.5.5 0 0 1 .11.54l-5.819 14.547a.75.75 0 0 1-1.329.124l-3.178-4.995L.643 7.184a.75.75 0 0 1 .124-1.33L15.314.037a.5.5 0 0 1 .54.11ZM6.636 10.07l2.761 4.338L14.13 2.576zm6.787-8.201L1.591 6.602l4.339 2.76z" />
		</svg>
	티켓사용기간보다 남은기간이 부족할 수 있습니다. 남은기간은 포인트로 환산되어 반환됩니다.
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