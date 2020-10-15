<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>Bootstrap Simple Login Form with Blue Background</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
<style>
body {
	color: #fff;
	background: #FFFFFF;
}
.form-control {
	min-height: 41px;
	background: #f2f2f2;
	box-shadow: none !important;
	border: transparent;
}
.form-control:focus {
	background: #e2e2e2;
}
.form-control, .btn {        
	border-radius: 2px;
}
.login-form {
	width: 350px;
	margin: 30px auto;
	text-align: center;
}
.login-form h2 {
	margin: 10px 0 25px;
}
.login-form form {
	color: #7a7a7a;
	border-radius: 3px;
	margin-bottom: 15px;
	background: #fff;
	box-shadow: 0px 2px 2px rgba(0, 0, 0, 0.3);
	padding: 30px;
}
.login-form .btn {        
	font-size: 16px;
	font-weight: bold;
	background: black;
	border: none;
	outline: none !important;
}
.login-form .btn:hover, .login-form .btn:focus {
	background: black;
}
.login-form a {
	color: #fff;
	text-decoration: underline;
}
.login-form a:hover {
	text-decoration: none;
}
.login-form form a {
	color: #7a7a7a;
	text-decoration: none;
}
.login-form form a:hover {
	text-decoration: underline;
}
</style>
</head>
<body>
<div class="login-form">
    <form action="login.me" method="post">
        <h2 class="text-center">Login</h2>   
        <div class="form-group has-error">
        	<input type="text" class="form-control" name="mid" placeholder="ID" required="required">
        </div>
		<div class="form-group">
            <input type="password" class="form-control" name="mpw" placeholder="Password" required="required">
        </div>        
        <div class="form-group">
            <button type="submit" class="btn btn-dark btn-lg btn-block">Sign in</button>
         </div>
        <a href="findId">아이디찾기 /</a>
        <a href="findPW">비밀번호찾기</a>
    </form>
    <p style="color:black;" class="text-center small">Don't have an account? <a href="register.me" style="color:black;">Sign up here!</a></p>
</div>
</body>
</html>