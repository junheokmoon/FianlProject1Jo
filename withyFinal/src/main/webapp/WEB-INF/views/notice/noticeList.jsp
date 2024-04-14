<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>공지사항</title>
<style>
	.searchCenter {
    text-align: center;
	}
	
	.searchBox {
    position: relative;
    background-color: #f9f9f9;
    margin-bottom: 10px;
    padding: 10px;
    line-height: 130%;
    font-size: 12px;
	}
	
	select {
    border: 1px solid #e1e1e1;
    margin: 1px 0px;
    padding: 0 0 0 5px;
    border-radius: 3px;
    line-height: 35px;
    height: 36px;
    vertical-align: middle;
    font-size: 13px;
    box-sizing: content-box;
	}

	option {
	    font-weight: normal;
	    display: block;
	    min-height: 1.2em;
	    padding: 0px 2px 1px;
	    white-space: nowrap;
	}
	
	input[type="text"], input[type="password"] {
    border: 1px solid #e1e1e1;
    border-radius: 3px;
    margin: 2px 0px;
    padding: 0px;
    min-height: 36px;
    line-height: 36px;
    vertical-align: middle;
    text-indent: 11px;
	}
	
	.searchBox input {
    max-width: 98%;
	}
	
	.searchCenter .searchBu {
    position: static;
	}
	
	.searchBox .searchBu {
    bottom: 13px;
    right: 10px;
    line-height: 36px;
    font-size: 14px;
    color: #fff;
    background-color: #579ddb;
    border: 1px solid #f04260;
    border-radius: 4px;
    padding: 0px 10px;
    transition: 0.2s all;
	}

	.table-normal {
	    width: 100%;
	    border-top: 2px solid #000;
	    border-spacing: 0;
	    border-collapse: collapse;
	}
	
	.table-normal thead tr th {
    background-color: #f7f7f7;
    border-bottom: 1px solid #cccccc;
    color: #333;
    font-weight: 500;
    padding: 10px 0px;
    text-align: center;
	}
	
	.table-normal tbody tr td {
    color: #666;
    border-bottom: 1px solid #dadada;
    padding: 8px 5px 8px 10px;
    transition: 0.3s all;
    line-height: 140%;
    text-align: center;
	}
	
	.line0 {
    border-left: 0px !important;
	}
	
	.ac {
	text-align: center !important;
	}
	
	.table_normal tbody tr span {
    vertical-align: middle;
	}
</style>
</head>
<body>
<div class="width-container">
	<div class="title">
		<h2>공지사항</h2>
	</div>
	<form id="FormSearch" name="FormSearch" method="post">
		<input type="hidden" name="currentMenuNo" value="1031100">
		<input type="hidden" name="pageIndex" id="pageIndex" value="1">
		<input type="hidden" name="bbsId" value="BBSMSTR_000000000071">
		<div class="searchBox searchCenter">
			<select name="searchCondition" title="조회조건선택" class="val">
				<option value="sj">제목</option><option value="cn">내용</option><option value="cnsj">제목+내용</option></select>
			<input name="searchKeyword" type="text" size="50" value="" onkeyup="UT.callFunctionByEnter(event, doSearch);" placeholder="검색어를 입력해 주세요.">
			<button type="button" class="searchBu" onclick="doSearch();">SEARCH</button>
		</div>
	</form>
   
   <div class="table-list list-wrap">
   		<!-- 공지사항 리스트 테이블  -->
   	   <table class="table-normal">
   	   		<colgroup>
				<col width="8%" class="mobileHide">
				<col width="*">
				<col width="16%" class="mobileHide">
				<col width="8%" class="mobileHide">
			</colgroup>
		<thead>
			<tr>
				<th scope="col" class="line0 mobileHide">번호</th>
				<th scope="col">제목</th>
				<th scope="col" class="mobileHide">작성일</th>
				<th scope="col" class="mobileHide">조회수</th>
			</tr>
		</thead>
		 <tbody>
			<c:forEach var="notice" items="${noticeList}">
			<tr class="bgcol01">
					<td class="line0 ac mobileHide">
						<span class="notice-no">${notice.noticeNo}</span>
					</td>
					<td>
						<a href="<c:url value="/notice/detail"/>?noticeNo=${notice.noticeNo}">${notice.noticeTitle}</a>
					</td>
					<td class="ac mobileHide">
						${fn:substring(notice.noticeDate,0,10) }
					</td>
					<td class="ac mobileHide">
						${notice.noticeCount+1}
					</td>
				</tr>
				</c:forEach>
		  </tbody>		
   	   </table>
   	   
   	   <!-- 페이징 처리 -->
   	    <div style="text-align: center;">
				<%-- 페이지 번호 출력 --%>
				<c:choose>
					<c:when test="${pager.startPage > pager.blockSize }">
						<a href="<c:url value="/notice/list"/>?pageNum=${pager.prevPage}">[이전]</a>
					</c:when>
					<c:otherwise>
						[이전]
					</c:otherwise>
				</c:choose>
				
				<c:forEach var="i" begin="${pager.startPage }" end="${pager.endPage }" step="1">
					<c:choose>
						<c:when test="${pager.pageNum != i }">
							<a href="<c:url value="/notice/list"/>?pageNum=${i}">[${i}]</a>
						</c:when>
						<c:otherwise>
							[${i}]
						</c:otherwise>
					</c:choose>
				</c:forEach>
				<c:choose>
					<c:when test="${pager.endPage != pager.totalPage }">
						<a href="<c:url value="/notice/list"/>?pageNum=${pager.nextPage}">[다음]</a>
					</c:when>
					<c:otherwise> 
						[다음]
					</c:otherwise>
				</c:choose>
		</div>
 	 </div>
   </div>
</body>
</html>