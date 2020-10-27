<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
접속자 아이디 : ${ sessionScope.loginInfo.mid } <a href="logout.jsp">로그아웃</a>
 <br>
	<article>
		<button class="totop_arrow1" type="button">위로 올리기</button>
	</article>
	<div class="menu">
		<div id="logo">
			<img src="<c:url value="/resources/images/logo3.png"/>" alt="no">
		</div>
		<div class="join">
			<a id="basket" href="list.mall"><span>장바구니</span><img
				src="<c:url value="/resources/images/basket.png" />" alt="no"></a>
			<a id="mypage" href="check.me"><span>마이페이지</span><img
				src="<c:url value="/resources/images/mypage.png" />" alt="no"></a>
			<a href="login.me"><span>LOGIN</span></a> <a href="register.me"><span>JOIN</span></a>
		</div>
		<ul id="ul_id">
			<li><a href="best.prd">BEST</a></li>
			<li><a href="top.prd">TOP</a></li>
			<li><a href="pants.prd">PANTS</a></li>
			<li><a href="outer.prd">OUTER</a></li>
			<li><a href="shoes.prd">SHOES</a></li>
			<li><a href="acc.prd">ACC</a></li>
		</ul>

	</div>
</body>
</html>