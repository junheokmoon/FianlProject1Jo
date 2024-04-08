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
.swiper-slide{
    width: 80px; /* 이미지 너비 */
    height: 80px; /* 이미지 높이 */
    display: inline-block; /* 인라인 요소로 설정하여 수평으로 배치 */
    vertical-align: top; /* 이미지를 상단에 정렬 */
    margin-right: 10px; /* 이미지 사이 간격 조정 */
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
         <img src="<c:url value="/images/net2.png"/>" alt="넷플릭스" style="height: 80px; width: 80px;">
         <img src="<c:url value="/images/net2.png"/>" alt="넷플릭스" >
         <img src="<c:url value="/images/net2.png"/>" alt="넷플릭스" >
         <img src="<c:url value="/images/net2.png"/>" alt="넷플릭스" >
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