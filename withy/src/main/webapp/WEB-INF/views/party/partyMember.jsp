<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"  %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>      
<!DOCTYPE html>
<html>
<head>
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

.mainbody {
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
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div class="mainbody">
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
<script src="<c:url value="/js/bootstrap.bundle.min.js"/>"></script>
<script src="<c:url value="/js/theme.js"/>"></script>		
</body>

</html>