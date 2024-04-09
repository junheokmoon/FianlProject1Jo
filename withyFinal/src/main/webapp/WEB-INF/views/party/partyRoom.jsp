<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"  %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>      
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
<style type="text/css">

.img-container {
    white-space: nowrap; 
    margin: 40px 40px;
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
<body >
<div style="width: 60%; margin: 0 auto;">
<h2>넷플릭스/24.04.09 시작!</h2>
<hr>
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
        
        
        
	<div>공지사항</div>
<div class="mainbody" style="border: 1px solid grey; height: 400px;">
			
</div>
	
	<div style="text-align: center; margin: 30px 30px;">
		<button style="width: 220px; height: 60px; padding: 8px; background-color: #c6cad0; border: none; color: white; border-radius: 8px;" >목록</button>
		<button style="width: 220px; height: 60px; padding: 8px; background-color: #3191f9; border: none; color: white; border-radius: 8px;">입장하기</button>
	</div>
	
	<div style="margin-top: 50px; ">
		<div class="input-group mb-3" style="height: 50px;">
		 <select>
		 	<option>파티장에게</option>
		 	<option>파티원에게</option>
		 </select>
		  <input type="text" class="form-control" aria-label="Text input with dropdown button" style="height: 52px;">
		  <button style="background-color: #3191f9; width: 80px; border-color: #c6cad0; color: white; ">등록</button>
		  
		</div>
		
	</div>	

</div>	
<script src="<c:url value="/js/bootstrap.bundle.min.js"/>"></script>
<script src="<c:url value="/js/theme.js"/>"></script>	
</body>
</html>









