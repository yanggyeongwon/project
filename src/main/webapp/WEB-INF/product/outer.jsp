<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet"	href="<c:url value="/resources/css/common.css" />">
<link rel="stylesheet"	href="<c:url value="/resources/css/main_style.css" />">
<link rel="stylesheet" href="<c:url value="/resources/css/best.css" />">
<link href="https://fonts.googleapis.com/css2?family=Nanum+Myeongjo&display=swap" rel="stylesheet">
<link href="https://fonts.googleapis.com/css2?family=Raleway:wght@300&display=swap"	rel="stylesheet">
<link href="https://fonts.googleapis.com/css2?family=Inconsolata:wght@200&display=swap"	rel="stylesheet">
<link href="https://fonts.googleapis.com/css2?family=Nanum+Gothic+Coding&display=swap"rel="stylesheet">
<script src="<c:url value="/resources/js/jquery-3.5.1.min.js" />"></script>
<script src="<c:url value="/resources/js/script.js" />"></script>
<title>Document</title>
</head>
<body>
	<section>
		<%@ include file="../header.jsp"%>
		<div class="area2">
			<p class="product_title">OUTER</p>
			<div id="filter">
				<span class="product_list_btn_hover"> 필터&nbsp; </span>
				<ul id="product_list_btn">
					<li><a href="#">신상품</a></li>
					<li><a href="#">인기상품</a></li>
					<li><a href="#">낮은가격</a></li>
					<li><a href="#">높은가격</a></li>
				</ul>
			</div>

			<div class="product_items">
				<%
					for (int i = 0; i <= 11; i++) {
				%>
				<div class="bottom_product">
					<img src="<c:url value="/resources/images/best.jpg" />" alt="no">
					<p id="dest_category">OUTER</p>
					<p>무지 벨벳 반팔티</p>
					<p>₩21,000</p>
				</div>
				<%
					}
				%>
			</div>
		</div>
	</section>
	<%@ include file="../footer.jsp"%>
</body>
</html>