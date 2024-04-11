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


#contentArea{
	border: 1px solid red;
	height: 400px;
}

@charset "UTF-8";


#Area{
	margin: 0 auto;
	width: 50%;
	height: 100vh;
	background: rgb(119,184,254);
	background: linear-gradient(0deg, rgba(119,184,254,1) 5%, rgba(140,193,250,1) 14%,
	rgba(163,206,251,1) 23%, rgba(205,230,253,1) 49%, rgba(249,254,255,1) 85%);
}

#goshop{
	
}

 
</style>
</head>
<body>
<div id="Area" style="width: 50%; margin: 0 auto; padding: 20px;">

	<h2 style="text-align: center; margin-top: ">생성할 방의 조건을 선택해주세요</h2>
	<!-- 내용삽입될 곳 -->
	<form action=""></form>
		<div id= "contentArea" style=" padding: 50px; height: 700px; border: 5px solid white; 
		margin-top: 10%;">
			
			<div style="margin-bottom: 30px;">
				<label for="inputPassword5" class="form-label" style="font-weight: bold;">이용 서비스</label><br>
				<input class="form-control" type="text" placeholder="${kind }" style="width: 250px;"aria-label="Disabled input example" disabled >
			</div>
			
			<div style="margin-bottom: 30px;">
			<label for="inputPassword5" class="form-label" style="font-weight: bold; ">파티 진행기간</label><br>
			<select class="form-select" aria-label="Default select example" style="width: 250px;">
			  <option selected>파티원 모집일부터</option>
			  <option value="1">1개월</option>
			  <option value="2">3개월</option>
			  <option value="3">6개월</option>
			  <option value="4">12개월</option>
			</select>
			</div>
			
			<div>정산받을 계좌</div>
			<div style="margin-bottom: 20px;">
				<select id="bank" >
					<option selected>은행선택</option>
					<option value="sin">신한은행</option>
					<option value="uri">우리은행</option>
					<option value="kmin">국민은행</option>
					<option value="kakao">카카오뱅크</option>
				</select>
				<br>
			<input type="text" id="payaccount" name="payaccount" width="250px;">
			</div>
			
			<!-- 
			<div style="margin-bottom: 30px;">
				<label for="inputPassword5" class="form-label" style="font-weight: bold;">나이제한</label><br>
				<div >
				  <input type="checkbox" value="" id="flexCheckChecked" >
				  <label class="form-check-label" for="flexCheckChecked">19세 이상</label>
				</div>
			</div>
			 -->
			
			<div style="margin-bottom: 30px;">
			<div class="mb-3">
			  <label for="exampleFormControlTextarea1" class="form-label" style="font-weight: bold;">공지사항</label>
			  <br>
			  <textarea cols="100" rows="7"></textarea>
			</div>
			</div>
	
			<div style="text-align: center;">		
				<button style=" background-color: #3191f9; color: white; width: 300px;
					padding: 10px; border-radius: 8px; margin-top: 25px;"  id="goshop" onclick="location.href='<c:url value="partyLeader3"/>';">
						파티방 생성!
				</button>
			</div>
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