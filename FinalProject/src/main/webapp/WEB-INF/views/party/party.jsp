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
.contents{
	border-radius: 10px;
	width: 50%;
	text-align:center;
	margin: 0 auto;
	margin-bottom: 20px;
	padding: 15px;
	background-color: white;
	  opacity: 0; /* 초기에는 투명도를 0으로 설정하여 숨김 */
    animation: fadeInUp 0.7s ease forwards; /* fadeInUp 애니메이션 적용 */
}

  .content + .content {
    margin-top: 20px; /* 예시로 20px 간격을 설정함 */
  }

h5{
	font-weight: bold;
}
@keyframes fadeInUp {
    0% {
      opacity: 0;
      transform: translateY(-0px); /* 시작 위치 설정 */
    }
    100% {
      opacity: 1;
      transform: translateY(0); /* 끝 위치 설정 */
    }
}

#mainbodyL {
    position: relative;
    animation: fadeInUp 1s;
}

#mainbodyM {
    position: relative;
    animation: fadeInUp 1s;
}

#BtnArea{
	padding: 20px;
	margin-top: 248px;
	text-align: center;
	background: rgb(255,255,255);
	background: linear-gradient(0deg, rgba(255,255,255,1) 81%, rgba(210,231,253,1) 92%, rgba(149,198,250,1) 100%);
}

#startBtn{
	margin: 0 auto;
	padding: 10px;
	width: 300px;
	font-size: 23px;
	font-weight: bold;
	background-color: #3191f9;
	color: white;
	border-radius: 10px;
	border: none;
}

</style>
</head>
<body>
<div id="Area">
<h2 style="text-align: center; margin-top: ">이용하실 역할을 선택해주세요!</h2>
<div class="button-container">
	<!-- 파티장 버튼 -->
   <button class="button button-a" onclick="Llist()">
      <svg xmlns="http://www.w3.org/2000/svg" width="60" height="60" fill="currentColor" class="bi bi-person-check-fill" viewBox="0 0 16 16" style="margin-left: 18px; margin-top: 20px;">
      <path fill-rule="evenodd" d="M15.854 5.146a.5.5 0 0 1 0 .708l-3 3a.5.5 0 0 1-.708 0l-1.5-1.5a.5.5 0 0 1 .708-.708L12.5 7.793l2.646-2.647a.5.5 0 0 1 .708 0"/>
      <path d="M1 14s-1 0-1-1 1-4 6-4 6 3 6 4-1 1-1 1zm5-6a3 3 0 1 0 0-6 3 3 0 0 0 0 6"/>
      </svg>
      <div class="choiceTitle" id="Reader">파티장</div>
      <div class="choiceContents" style="margin-top: 10px;">내 계정으로 파티원 모으기</div>
   </button>
   
	<!-- 파티원 버튼 -->
  <button class="button button-b" id="BtnB" onclick="Mlist()">
      <svg xmlns="http://www.w3.org/2000/svg" width="60" height="60" fill="currentColor" class="bi bi-people-fill" viewBox="0 0 16 16" style="margin-top: 20px;">
      <path d="M7 14s-1 0-1-1 1-4 5-4 5 3 5 4-1 1-1 1zm4-6a3 3 0 1 0 0-6 3 3 0 0 0 0 6m-5.784 6A2.24 2.24 0 0 1 5 13c0-1.355.68-2.75 1.936-3.72A6.3 6.3 0 0 0 5 9c-4 0-5 3-5 4s1 1 1 1zM4.5 8a2.5 2.5 0 1 0 0-5 2.5 2.5 0 0 0 0 5"/>
      </svg>
      <div class="choiceTitle" >파티원</div>
      <div class="choiceContents" style="margin-top: 10px;">공유계정을 받아 사용하고 싶어요</div>
  </button>
</div>

<!-- 내용삽입될 곳 -->
<div id="display"></div>



	<div id="mainbodyL">
		<div class="contents">
			<h5 color="var(--gray-800)" class="sc-iwjdpV dHofiW">50% 더 저렴하게 이용할 수 있어요</h5>
			<div>
				<div height="4" class="sc-hBUSln ciZnfs"></div>
			</div>
			<small color="var(--gray-700)" class="sc-ezbkAF dKNqlI">파티장 수수료 X</small>
		</div>
		
		<div class="contents">
			<h5 color="var(--gray-800)" class="sc-iwjdpV dHofiW">정산 보장제 적용 받아요</h5>
			<div>
				<div height="4" class="sc-hBUSln ciZnfs"></div>
			</div>
			<small color="var(--gray-700)" class="sc-ezbkAF dKNqlI">파티원이 구해지지 않아도 정산받는 금액 100% 보장</small>
		</div>
		
		<div class="contents" >
			<h5 color="var(--gray-800)" class="sc-iwjdpV dHofiW">지금 바로 볼 수 있어요</h5>
			<div>
				<div height="4" class="sc-hBUSln ciZnfs"></div>
			</div>
			<small color="var(--gray-700)" class="sc-ezbkAF dKNqlI">파티장은 기다리지 않고 바로 시청할 수 있어요.</small>
		</div>
			<div id="BtnArea"><button id="startBtn">파티장으로 시작</button></div>
		
	</div>
	
	
	<div id="mainbodyM">
	<div class="contents" >
			<h5 color="var(--gray-800)" class="sc-iwjdpV dHofiW">자동으로
				재매칭해드려요</h5>
			<div>
				<div height="4" class="sc-hBUSln ciZnfs"></div>
			</div>
			<small color="var(--gray-700)" class="sc-ezbkAF dKNqlI">파티가
				해체되도 최우선순위로 재매칭해드려요.</small>
		</div>
		
		<div class="contents" >
			<h5 color="var(--gray-800)" class="sc-iwjdpV dHofiW">공유 계정으로 부담없이 이용해요</h5>
			<div>
				<div height="4" class="sc-hBUSln ciZnfs"></div>
			</div>
			<small color="var(--gray-700)" class="sc-ezbkAF dKNqlI">함께 쓰는 계정은 소중히 이용해주세요.</small>
		</div>
		
		<div class="contents" >
			<h5 color="var(--gray-800)" class="sc-iwjdpV dHofiW">중도해지는 불가능해요</h5>
			<div>
				<div height="4" class="sc-hBUSln ciZnfs"></div>
			</div>
			<small color="var(--gray-700)" class="sc-ezbkAF dKNqlI">파티가 시작되면 중도 해지는 불가능해요</small>
		</div>
			<div id="BtnArea"><button id="startBtn">파티원으로 시작</button></div>
		
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