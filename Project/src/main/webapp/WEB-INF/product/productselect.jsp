<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ include file="../common.jsp" %>
     
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
    <%@ include file="../admin_header.jsp" %>
    <div class="admin_page">
        <div id="first_box">
            <div id="second_box">
                <p id="p_title">상품 조회</p>
               <div id="third_box">
                    <div id="top_box">
                        <form action="productselect.prd" method="get">
                        	<ul id="select_top">
                            	<li>
                            		<select name="whatColumn">
                            			<option value="pname">상품명
                            			<option value="pbest">상품번호
                            			<option value="pdate">등록날짜
                            		</select>
                            	</li>
                            	<li><input type="text" size="10" name="keyword"></li>
                            	<li><input type="submit" value="조회"></li>
                       		 </ul>
                        </form>
                    </div>
                    <div id="bottom_box">
                        <table>
                            <tr id="select_bottom">
                                <td><p>번호</p></td>
                                <td><p>이미지</p></td>
                                <td><p>상품명</p></td>
                                <td><p>상품번호</p></td>
                                <td><p>등록날짜</p></td>
                                <td><p>가격</p></td>
                                <td><p>수정</p></td>
                                <td><p>삭제</p></td>
                            </tr>
                            <c:forEach items="${lists }" var="product">
                            <tr id="select_data">
                                <td><p>${product.pnum }</p></td>
                                <td><p>${product.pimage }</p></td>
                                <td><p>${product.pname }</p></td>
                                <td><p>${product.pbest }</p></td>
                                <td><p>${product.pdate }</p></td>
                                <td><p>${product.pprice }</p></td>
                                <td><p><a href="productupdate.prd?pnum=${product.pnum }">수정</a></p></td>
                                <td><p><a href="productdelete.prd?pnum=${product.pnum }">삭제</a></p></td>
                            </tr>
                            </c:forEach>
                        </table>
                        <div class="page_a">
							${pageInfo.pagingHtml } 
                        </div>
                    </div>
               </div>
            </div>
        </div>
    </div>
</body>
</html>
