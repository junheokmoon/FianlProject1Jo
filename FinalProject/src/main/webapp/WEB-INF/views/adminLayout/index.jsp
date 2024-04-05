<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%-- 페이지의 기초를 제공하기 위한 JSP 문서 - 템플릿 페이지 --%>
<%-- TilesView 객체가 제공하는 태그를 사용할 수 있도록 태그 라이브러리 추가 --%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"  %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!-- 공통변수 처리 -->
<%-- <c:set var="CONTEXT_PATH" value="${pageContext.request.contextPath}" scope="application"/>
<c:set var="RESOURCES_PATH" value="${CONTEXT_PATH}/resources" scope="application"/> --%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>SPRING</title>
</head>
<body>
	<div id="menu" style="float: left; width: 17%; height: auto;">
		<%-- insertAttribute 태그 : TilesView 객체의 환경설정파일에서 put-attribute 엘리먼트로
		제공된 JSP 문서의 실행결과를 제공받아 삽입하기 위한 태그 --%>
		<tiles:insertAttribute name="menu"/>
	</div>
	
	<div id="content" style="float: left; width: 83%;">
		<tiles:insertAttribute name="content"/>
	</div>
</body>
</html>