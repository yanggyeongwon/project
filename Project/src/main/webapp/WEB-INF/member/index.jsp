<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="<c:url value="/resources/css/common.css" />">
    <link rel="stylesheet" href="<c:url value="/resources/css/main_style.css" />">
    <link href="https://fonts.googleapis.com/css2?family=Nanum+Myeongjo&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Raleway:wght@300&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Inconsolata:wght@200&display=swap" rel="stylesheet">
    <script src="<c:url value="/resources/js/jquery-3.5.1.min.js" />"></script>
    <script src="<c:url value="/resources/js/script.js" />"></script>
    <title>메인입니다</title>
</head>
<body>
    <section>
       <%@ include file="../header.jsp" %>
        <div id="main_image">
            <div id="images" >
                <img src="<c:url value="/resources/images/main.jpg" />" alt="main_image">
                <img src="<c:url value="/resources/images/main22.jpg" />" alt="main_image2">
                <img src="<c:url value="/resources/images/main33.jpg" />" alt="main_image3">
                <img src="<c:url value="/resources/images/main44.jpg" />" alt="main_image4">
                <img src="<c:url value="/resources/images/main55.jpg" />" alt="main_image5">
                <img src="<c:url value="/resources/images/main66.jpg" />" alt="main_image6">
                <img src="<c:url value="/resources/images/main77.jpg" />" alt="main_image7">
            </div>
        </div>
        <div id="main2_image">
            <div class="area1">
                <p class="product_title">PRODUCT</p>
                <div class="product_items">
                    <div class="images_show" id="best">
                        <img src="<c:url value="/resources/images/best2.jpg"/>" alt="no">
                        <p>BEST</p>
                    </div>
                    <div class="images_show" id="top">
                        <img src="<c:url value="/resources/images/top.jpg"/>" alt="no">
                        <p>TOP</p>
                    </div>
                    <div class="images_show" id="pants">
                        <img src="<c:url value="/resources/images/pants.jpg"/>" alt="no">
                        <p>PANTS</p>
                    </div>
                    <div class="images_show" id="outer">
                        <img src="<c:url value="/resources/images/outer.jpg"/>" alt="no">
                        <p>OUTER</p>
                    </div>
                    <div class="images_show" id="shoes">
                        <img src="<c:url value="/resources/images/shoes.jpg"/>" alt="no">
                        <p>SHOES</p>
                    </div>
                </div>
            </div>
            <div class="area2">
                <p class="product_title">BEST</p>
                <div class="product_items">
                <%
                	for(int i=0; i<=11; i++){
                		%>
                		 <div class="bottom_product">
	                        <img src="<c:url value="/resources/images/best.jpg"/>" alt="no">
	                        <p id="dest_category">BEST</p>
	                        <p>무지 벨벳 반팔티</p>
	                        <p>₩21,000</p>
                  		  </div>
                		<%
                	}
                %>
                </div>
            </div>
        </div>
    </section>

    <%@ include file="../footer.jsp" %>
    
    
    
</body>
</html>