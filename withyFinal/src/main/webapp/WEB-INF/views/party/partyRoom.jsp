<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"  %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>      
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">

.img-container {
    white-space: nowrap; 
}

.imgcontent{
	height: 80px;
	width: 80px; 
	display: inline-block;
    margin-right: 100px; 
}

.user{
	text-align: center;
}
</style>
</head>
<body>

<div>3개월/넷플릭스</div>
<hr>
<div>파티 번호 : 32613512</div>
<hr>
<div>종료일 : 2024.05.01(남은기간 : 00일)</div>
<hr>	
		
	<div class="img-container">
		    <div class="imgcontent">
		        <img src="<c:url value="/images/net2.png"/>" alt="넷플릭스">
		        <div class="user">문**</div>
		    </div>
		    <div class="imgcontent">
		        <img src="<c:url value="/images/net2.png"/>" alt="넷플릭스">
		        <div class="user">문**</div>
		    </div>
		    <div class="imgcontent">
		        <img src="<c:url value="/images/net2.png"/>" alt="넷플릭스">
		        <div class="user">문**</div>
		    </div>
		    <div class="imgcontent">
		        <img src="<c:url value="/images/net2.png"/>" alt="넷플릭스">
		        <div class="user">문**</div>
		    </div>
	</div>
        
        
        
<div class="mainbody">
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
<script src="<c:url value="/js/bootstrap.bundle.min.js"/>"></script>
<script src="<c:url value="/js/theme.js"/>"></script>	
</body>
</html>