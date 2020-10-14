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
    <link rel="stylesheet" href="<c:url value="/resources/css/admin_product_select.css"/>">
    <link rel="stylesheet" href="<c:url value="/resources/css/adminpage.css"/>">
    <link href="https://fonts.googleapis.com/css2?family=Nanum+Myeongjo&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Raleway:wght@300&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Inconsolata:wght@200&display=swap" rel="stylesheet">
    <title>상품조회페이지입니다.</title>
</head>
<body>
    <header>
        <div id="menu">
            <ul class="left_side_logo">
                <li><img src="<c:url value="/resources/images/logo3.png" />" alt="no"/></li>
            </ul>
            <ul class="left_side"> 
                <li><a href="productinsert.ad">상품 등록</a></li>
                <li><a href="productupdate.ad">상품 수정</a></li>
                <li><a href="productselect.ad">상품 조회</a></li>
                <li><a href="#">회원 관리</a></li>
                <li><a href="#">배송 관리</a></li>
                <li><a href="#">홈페이지 바로가기</a></li>
            </ul>
        </div>
        <p>version 1.10.0.1</p>
    </header>
    <div class="admin_page">
        <div id="first_box">
            <div id="second_box">
                <p id="p_title">상품 조회</p>
               <div id="third_box">
                    <div id="top_box">
                        <ul id="select_top">
                            <li><p>상품명</p></li>
                            <li><input type="text" size="10" name="select_pname"></li>
                            <li><p>상품번호</p></li>
                            <li><input type="text" size="10" name="select_pname"></li>
                            <li><p>등록날짜</p></li>
                            <li><input type="date" size="10" name="select_pname">~</li>
                            <li><input type="date" size="10" name="select_pname"></li>
                            <li><input type="submit" size="10" name="select_pname" value="조회"></li>
                        </ul>
                    </div>
                    <div id="bottom_box">
                        <table>
                            <tr id="select_bottom">
                                <td><p>번호</p></td>
                                <td><p>상품명</p></td>
                                <td><p>상품번호</p></td>
                                <td><p>등록날짜</p></td>
                                <td><p>가격</p></td>
                                <td><p>수정</p></td>
                                <td><p>삭제</p></td>
                            </tr>
                            <tr>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                            </tr>
                        </table>
                    </div>
               </div>
            </div>
        </div>
    </div>
</body>
</html>