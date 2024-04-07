<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"  %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<!DOCTYPE html>
<html lang="ko">

<head>
<meta charset="UTF-8">
<title>공지사항</title>
<style>
	.body {
    min-height: 300px;
    padding: 140px 0 50px 0;
}
	
	* {
	box-sizing: border-box;
	}
	
	.title {
    font-size: 13px;
    margin-top: 20px;
    margin-bottom: 12px;
    line-height: 24px;
	}
	
	.title-wrap {
    position: relative;
	}
	
	.title-wrap .title-right {
    position: absolute;
    top: 0;
    right: 0;
	}
	
	.search-bar {
    margin-top: -5px;
	}
	
	.search-bar {
	    position: relative;
	    font-size: 0;
	}	
		.search-bar .submit img {
	    width: 16px;
	    height: 16px;
	}
	
	table {
    border-spacing: 0;
    border-collapse: collapse;
    text-indent: initial;
    background-color: transparent;
    
    
}
	
	.table-list table {
    width: 100%;
}


	.title-wrap.border {
    border-bottom: 2px solid #7e69fe;
	}
	
	.table-list th {
    padding: 10px 0;
    font-size: 11px;
	}
	
	.table-list th {
    font-weight: 500;
    color: #333333;
    background-color: #f9f9f9;
	}
	
	
	
	tbody {
    display: table-row-group;
    vertical-align: middle;
    unicode-bidi: isolate;
    border-color: inherit;
}
	
	.table-list th, .table-list td {
	    position: relative;
	    text-align: center;
	    font-size: 22px;
	    line-height: 24px;
	    border-top: 1px solid #ececec;
	  }
	  
    .table-list tr.active td {
    background-color: #faf9ff;
	}
	

	.table-list th::after {
    content: '';
    position: absolute;
    top: 50%;
    right: 0;
    display: block;
    width: 1px;
    height: 10px;
    margin-top: -5px;
    background-color: #ddd;
}
}
</style>
</head>
<body>
<div class="width-container">
   <div class="title-wrap border">
	<div class="title">
		<h2>공지사항</h2>
	</div>
	<div class="title-right">
		<div class="search-bar">
			<form action="#" method="get" >
				<select name="slf" id="sfl">
					<option>제목</option>
					<option>내용</option>
				</select>
				<input type="text" name="stx" value="stx" maxlength="20" placeholder="검색어를 입력해 주세요.">
				<button type="submit" class="submit"><img src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABMAAAATCAIAAAD9MqGbAAAAGXRFWHRTb2Z0d2FyZQBBZG9iZSBJbWFnZVJlYWR5ccllPAAAAZtJREFUeNqUk78vQ1Ecxc/tj4mIpqqlJiEhDZI+lfjRsEmsEouhu4U/xYJZwmAxCmMr7aA/EpHGQLr49Sgh6Nb2Orev+l6pas/wXt6953O/997veUJKiW8960gn5FUWb3n16fJgKABtRvT48FvCIEtFnBzKZBSWdb4dAloYi8vC6fxFEtvfkblL2B0IzWNME54+NZd/wEVaLUfD4AhW1wQNdeTRgTyLosul5rz+nzUf77C/Ld9fMbWApRVRG7fldaROVbWGGMVBTjkcSMVAs0lmErJcxmQYDbEazKPSRrNJ8iap8ZBAUxkGw1wlXysN8A00B+GtGAxzlURrKpfU0263kGw3pd/+Q7JDVLfbQg4H1It9a04ahsFRCxmcFjYbUlHVt7/0dK8MtDGJJsm4sCXFomp3Q5iDe1uSBm0ORrb+TN9ESLgrEX/RcZ6spo/q9SOyLjo620l8cBY3ObVnKyysfxnDlY7L66zqG+vzJnklPBs3WfjE7qa0wnVkc5lwPyIbotUkUKxDgBjhTBw8WHsqfMjYsXx/k18CDACJhvJ23Xt3WQAAAABJRU5ErkJggg==" alt=""></button>
			</form>
		</div>
	</div>
   </div>
   
   <div class="table-list list-wrap">
   	   <table>
   	   		<thead>
   	   			<tr>
   	   				<th class="pc-table">번호</th>
   	   				<th>제목</th>
   	   				<th>등록일</th>
   	   				<th class="pc-table">조회</th>
   	   			</tr>
   	   		</thead>
   	   		<tbody>
   	   			<tr class="active">
   	   				<td class="pc-table" style="width: 10%">10</td>
   	   				<td>
   	   				<div class="subject notice"><a href="#">TEST-1</a></div>
   	   				</td>
   	   				<td>2024.03.28</td>
   	   				<td class="pc-table" style="width: 10%">1800</td>
   	   			</tr>
   	   			<tr class="active">
   	   				<td class="pc-table" style="width: 10%">11</td>
   	   				<td>
   	   				<div class="subject notice"><a href="#">TEST-2</a></div>
   	   				</td>
   	   				<td>2024.03.28</td>
   	   				<td class="pc-table" style="width: 10%">1800</td>
   	   			</tr>
   	   			<tr class="active">
   	   				<td class="pc-table" style="width: 10%">12</td>
   	   				<td>
   	   				<div class="subject notice"><a href="#">TEST-3</a></div>
   	   				</td>
   	   				<td>2024.03.28</td>
   	   				<td class="pc-table" style="width: 10%">1800</td>
   	   			</tr>
   	   			<tr class="active">
   	   				<td class="pc-table" style="width: 10%">13</td>
   	   				<td>
   	   				<div class="subject notice"><a href="#">TEST-4</a></div>
   	   				</td>
   	   				<td>2024.03.28</td>
   	   				<td class="pc-table" style="width: 10%">1800</td>
   	   			</tr>
   	   		</tbody>	
   	   </table>
   </div>
  </div> 	
</body>
</html>