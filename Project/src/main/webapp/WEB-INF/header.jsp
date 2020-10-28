<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<article>
		<button class="totop_arrow1" type="button">위로 올리기</button>
	</article>
	<div class="menu">
		<div id="logo">
			<a href="index.ad"><img src="<c:url value="/resources/images/logo2.png"/>" alt="no"></a>
		</div>
		<div class="join">
			<a href="#"><span>NOTICE</span></a>
			<a href="list.mall"><span>BASKET</span></a>
			<a href="update.me"><span>MYPAGE</span></a>
			<%
			Object login = session.getAttribute("loginInfo");
			if(login == "" || login == null || login == "null"){
				%>
				<a href="login.me"><span>LOGIN</span></a>
				
				<%
			}else{
				%>
				<a href="#"><span>LOGOUT</span></a>
				<%
			}
			%>
			
			<a href="register.me"><span>JOIN</span></a>
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