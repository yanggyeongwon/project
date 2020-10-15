<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="<c:url value="/resources/css/common.css"/>">
    <link rel="stylesheet" href="<c:url value="/resources/css/main_style.css"/>">
    <link rel="stylesheet" href="<c:url value="/resources/css/admin_product_update.css"/>">
    <link rel="stylesheet" href="<c:url value="/resources/css/adminpage.css"/>">
    <link href="https://fonts.googleapis.com/css2?family=Nanum+Myeongjo&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Raleway:wght@300&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Inconsolata:wght@200&display=swap" rel="stylesheet">
    <title>상품수정페이지입니다.</title>
</head>
<body>
    <%@ include file="../admin_header.jsp" %>
    <div class="admin_page">

        <div id="first_box">
            <div id="second_box">
                <p id="p_title">상품 수정</p>
               <div id="third_box">
                    <div id="left_box">
                        <div class="top_box">
                            <div id="image_view">
                                <ul>
                                    <li>이미지 영역</li>
                                </ul>
                            </div>
                        </div>
                        <div class="input_box">
                            <ul id="input_img_btn">
                                <li><input type="submit" name="input_img_btn" value="이미지등록"></li>
                            </ul>
                        </div>
                    </div>
                    <div id="right_box">
                        <div id="text_box">
                            <ul class="flex_ul">
                                <li class="margin-l10r10"><p>상품명</p></li>
                                <li style="margin-left: 40px;"><input type="text" size="10" name="input_pname" value=""></li>
                            </ul>
                            <ul class="flex_ul">
                                <li class="margin-l10r10"><p>상품번호</p></li>
                                <li style="margin-left: 26px;"><input type="text" size="10" name="input_pnum" value=""></li>
                            </ul>
                            <ul class="flex_ul">
                                <li class="margin-l10r10"><p>색상</p></li>
	                            <li><a class="color_white"></a></li>
                                <li><a class="color_black"></a></li>
                                <li><a class="color_blue"></a></li>
                                <li><a class="color_gray"></a></li>
                                <li><a class="color_beige"></a></li>
                                <li><a class="color_red"></a></li>
                            </ul>
                            <ul id="flex_ck">
                                <li><p>사이즈</p></li>
                                <li style="margin-left: 50px;"><p>S</p></li>
                                <li style="margin-left: 14px;"><p>M</p></li>
                                <li style="margin-left: 14px;"><p>L</p></li>
                                <li style="margin-left: 14px;"><p>XL</p></li>
                                <li style="margin-left: 10px;"><p>F</p></li>
                            </ul>
                            <ul id="flex_ck1">
                                <li class="margin-left7"><input type="checkbox" name="input_psize_s" value=""></li>
                                <li class="margin-left7"><input type="checkbox" name="input_psize_m" value=""></li>
                                <li class="margin-left7"><input type="checkbox" name="input_psize_l" value=""></li>
                                <li class="margin-left7"><input type="checkbox" name="input_psize_xl" value=""></li>
                                <li class="margin-left7"><input type="checkbox" name="input_psize_f" value=""></li>
                            </ul>
                            <ul class="flex_ul">
                                <li class="margin-l10r10"><p>가격</p></li>
                                <li style="margin-left: 54px;"><input type="text" size="10" name="input_pprice" value=""></li>
                            </ul>
                            <ul class="flex_ul">
                                <li class="margin-l10r10"><p>포인트</p></li>
                                <li style="margin-left: 40px;"><input type="text" size="10" name="input_ppoint" value=""></li>
                            </ul>
                        </div>
                        <div class="input_box">
                            <ul id="input_p_btn">
                                <li><input type="submit" name="input_img_btn" value="상품수정"></li>
                                <li id="p_btn_margin"><input type="button" name="input_img_btn" value="수정취소"></li>
                            </ul>
                        </div>
                    </div>
               </div>
            </div>
        </div>
    </div>
</body>
</html>