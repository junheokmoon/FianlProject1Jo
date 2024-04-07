<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>SPRING</title>
</head>
<body>
	<div style="float: left; width: 17%; height: auto;">
		<tiles:insertAttribute name="menu"/>
	</div>
	<div style="float: left; width: 83%;">
		<tiles:insertAttribute name="content"/>
	</div>
</body>
</html>