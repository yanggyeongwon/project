<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="common.jsp" %>

<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="<c:url value="/resources/css/common.css" />">
    <script src="<c:url value="/resources/js/jquery-3.5.1.min.js" />"></script>
    <script src="<c:url value="/resources/js/script.js" />"></script>
    <title>메인입니다</title>
    <style type="text/css">
	body {
		width : 100%;
		text-align : center;
	}
	
	table {
		width:700px;
		margin : 0 auto;
	}
	.tdclass{display:none}
	.aclass{color:black}
	#result_tr td {padding: 3% 0}
	#container{    width: 70%;
    margin: 0 auto;
    margin-left: 20%;
    padding: 60px;
    }
    #container h1{font-size:1.5rem}
    .table_container{padding: 2% 12.7%;}
    .writer p{padding: 5px 0;text-align: right;}
    .writer a{padding: 4px; background-color:#25211e;}
    #result_tr:hover{border-bottom:1px solid #000}
    .flexul{ display: flex;justify-content: space-around; background-color: #000;color: #fff;padding: 1%;}
    .flexul2{ display: flex;justify-content: space-around; padding: 2%;}
    .flexul2 li{display: block; text-align: center; width: 100px;}
    .paging a{color:#000}
	</style>
	
	
	<script>
	$(()=>{
		const $item = $('.aclass').on('click', function() {
		let idx = $item.index(this);
		$('.tdclass').eq(idx).toggle();
		})
	})
		
	</script>
</head>
<body>
<%@ include file="../admin_header.jsp" %>

<div id="container">
	<h1>Q &amp; A 상품문의</h1>
	<b>글목록(전체 글:${pageInfo.totalCount })</b>
	<form action="list.bd" method="get">
		<select name="whatColumn">
			<option value="all">전체
			<option value="subject">제목
			<option value="writer">작성자
		</select>
		<input type="text" name="keyword" value="홍길동">
		<input type="submit" value="검색">
	</form>
	<div class="table_container">
		<div class="writer">
			<p>
				<span><a href="write.bd">글쓰기</a></span>
			</p>
		</div>
		<c:if test="${totalCount == 0}">
		<div class="result">
				<p>
					<span>게시판에 저장된 글이 없습니다.</span>		
				</p>
		</div>
		</c:if>
				
		<c:if test="${ not (totalCount == 0) }">
			<div class="result">
				<ul class="flexul">
					<li>번호</li>	
					<li>제 목</li>	
					<li>작성자</li>	
					<li>작성일</li>	
					<!-- <td align="center" width="50">조회</td>	
					<td align="center" width="10">IP</td>	 -->
					
				</ul>
			</div>		
			<div class="result">
				<c:forEach items ="${lists }" var ="bd">
		    	<ul class="flexul2">
		    		<li>${bd.num }</li>
		    		<li><a class="aclass" href="#">${bd.subject }</a></li><%-- content.bd?num=${bd.num} --%>
		    		<li>${bd.writer }</li>
		    		<li>${bd.regdate }</li>
		    		<%-- <td>${bd.readcount }</td>
		    		<td>${bd.ip }</td> --%>
		    	</ul>
		    	<ul class="tdclass">
		    		
		    		<li>asda</li>
		    	</ul>
		    </c:forEach>
		    </div>
		</c:if>
	</div>
	<div class="paging">${pageInfo.pagingHtml}</div>
</div>
</body>


