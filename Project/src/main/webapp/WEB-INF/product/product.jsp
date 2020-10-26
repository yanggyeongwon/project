<%@page import="java.text.DecimalFormat"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
    <head>
    <meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<link rel="stylesheet"	href="<c:url value="/resources/css/common.css" />">
	<link rel="stylesheet"	href="<c:url value="/resources/css/main_style.css" />">
	<link rel="stylesheet" href="<c:url value="/resources/css/best.css" />">
	<link rel="stylesheet" href="<c:url value="/resources/css/product.css" />">
	<link href="https://fonts.googleapis.com/css2?family=Nanum+Myeongjo&display=swap" rel="stylesheet">
	<link href="https://fonts.googleapis.com/css2?family=Raleway:wght@300&display=swap"	rel="stylesheet">
	<link href="https://fonts.googleapis.com/css2?family=Inconsolata:wght@200&display=swap"	rel="stylesheet">
	<link href="https://fonts.googleapis.com/css2?family=Nanum+Gothic+Coding&display=swap"rel="stylesheet">
	<script src="<c:url value="/resources/js/jquery-3.5.1.min.js" />"></script>
	<script src="<c:url value="/resources/js/script.js" />"></script>
    <title>Document</title>
    
    <script>
  /*   $(document).ready(function(){
    	
    	$('#product_price').replace(/(\d)(?=(?:\d{3})+(?!\d))/g, '$1,')
    }) */
    </script>
    </head>
    <body>
        <section>
           <%@ include file="../header.jsp" %>
            <div id="product_page">
                <div id="image_purchase">
                    <div id="image">
                        <img src="<c:url value="resources/${product.pimage }"/>">
                    </div>
                    
                    <div id="purchase">
                        <div class="purchase_text_area">
                            <p class="dest_category">BEST</p>
                            <p class="product_pname">${product.pname}</p>

                            <p>₩<span id="product_price">${product.pprice }</span></p>
                            <form>
                            <div>
                                <span>색상</span>
                                <select id="items" name="items" class="select">
                                    <option value="*">- [필수] 옵션 선택 -</option>
                                    <option value="베이지">베이지</option>
                                    <option value="블루">블루</option>
                                    <option value="카키">카키</option>
                                    <option value="블랙">블랙</option>
                                </select>
                            </div>
                            <div>
                                <span>사이즈</span>
                                <select id="items2" name="items2" class="select">
                                    <option value="*">- [필수] 옵션 선택 -</option>
                                    <option value="S">S</option>
                                    <option value="M">M</option>
                                    <option value="L">L</option>
                                    <option value="XL">XL</option>
                                    <option value="FREE">FREE</option>
                                </select>
                            </div>
                            </form>
                        </div>
                        <div class="items_result">
                          <div id="items_result_p"></div>
                        </div>
                        <div class="items_price"></div>
                        <div class="btn_buy">
                            <a href="#" id="buy_a">BUY NOW</a>
                            <a href="#" id="cart_a">ADD TO CART</a>
                        </div> 
                    </div>
                </div>
                <div class="sub_image">
                    <div><img src="<c:url value="resources/${product.pimage1 }"/>">
							 <img src="<c:url value="resources/${product.pimage2 }"/>"></div>
                </div>
                <div id="porduct_detail_page">
                       <img src="<c:url value="resources/${product.pimage3 }"/>">
                </div>
            </div>
        </section>
            <%@ include file="../footer.jsp" %>
</body>
</html>