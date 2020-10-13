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
        <article>
            <button class="totop_arrow1" type="button">위로 올리기</button>
        </article>
        <div class="menu">
            <div id="logo">
                <img src="<c:url value="/resources/images/logo3.png"/>" alt="no">
            </div>
                <div class="join">
                    <a id="basket" href="#"><span>장바구니</span><img src="<c:url value="/resources/images/basket.png" />" alt="no"></a>
                    <a id="mypage" href="#"><span>마이페이지</span><img src="<c:url value="/resources/images/mypage.png" />" alt="no"></a>
                    <a href="#"><span>LOGIN</span></a>
                    <a href="#"><span>JOIN</span></a>
                </div>
           
            
            <ul id="ul_id">
                <li><a href="BEST.html">BEST</a></li>
                <li><a href="#">TOP</a></li>
                <li><a href="#">PANTS</a></li>
                <li><a href="#">OUTER</a></li>
                <li><a href="#">SHOES</a></li>
                <li><a href="#">ACC</a></li>
            </ul>
            
        </div>
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
        <footer>
            <div id="footer_img">
                <img src="<c:url value="/resources/images/logo2.png"/>" alt="no">
                <ul id="footer_top">
                    <li><a href="#">이용약관</a></li>
                    <li><a href="#">개인정보처리방침</a></li>
                </ul>
            </div>
            <div id="footer_text">
                <div class="text1">
                    <ul>
                        <li><b>대표이사: </b> 양경원</li>
                        <li><b>개인정보보호 책임자: </b> 김범규</li>
                        <li><b>이메일: </b> ruddnjs25@naver.com</li>
                        <li><b>고객센터: </b> 02-5543-2213</li>
                        <li><b>에스크로: </b> All at pay</li>
                    </ul>
                    <ul>
                        <li><b>주소: </b> 서울특별시 동대문구 이리로 38길 22</li>
                        <li><b>사업자번호: </b>155-33-22794</li>
                        <li><b>통신판매신고번호: </b>제2011-서울동대문-2235호</li>
                    </ul>
                    <ul>
                        <li><b>CJ대한통운 반품시: </b> 03011 서울특별시 동대문구 이리로 200번지 대한통운 이대대리점(KYJJ)</li>
                        <li></li>
                    </ul>
                </div>
                <div class="text2">
                    <div class="right">
                        <ul>
                            <li>고객센터</li>
                            <li><b>02-5543-2213</b></li>
                            <li>WEEKDAYS, AM:10~00 ~ PM17:00</li>
                            <li>BRAKE TIME, PM12:00 ~ PM013:00</li>
                            <li>SAT, SUN HOLIDAY OFF</li>
                        </ul>
                    </div>
                    <div class="right">
                        <ul>
                            <li>은행정보</li>
                            <li><b>국민</b> 5553322-12-5521354</li>
                            <li><b>농협</b> 123521-94882-12</li>
                            <li><b>우리</b> 1005-1112-5554331</li>
                            <li>예금주 : (주)케이와이제이제이</li>
                        </ul>
                    </div>
                    
                </div>
            </div>
        </footer>
    
    
    
    
</body>
</html>