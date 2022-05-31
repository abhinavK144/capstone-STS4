<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<!--=============== BOXICONS ===============-->
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/boxicons@latest/css/boxicons.min.css">

<!--=============== SWIPER CSS ===============-->
<link rel="stylesheet" href="resources/css/swiper-bundle.min.css">

<!--=============== CSS ===============-->
<link rel="stylesheet" href="resources/css/style.css">
<link rel="stylesheet" href="resources/css/color-1.css">

<title>Book world</title>
</head>
<body>
<!--=============== LOGIN ===============-->
	<div class="login" id="login">
		<i class="bx bx-x login__close" id="login-close"></i>

		<h2 class="login__title-centre">Login</h2>

		<form action="./spring/Login?uname=a&pwd=b" class="login__form grid">
			<div class="login__content">
				<label for="" class="login__label">E-mail ID</label> <input
					type="email" name="a" autofocus class="login_input">
			</div>

			<div class="login__content">
				<label for="" class="login__label">Password</label> <input
					type="password" name="b" class="login_input" >
					
					<!-- id="myInput" -->
					
			</div>
			
			<div>
				
					<input type="submit" value="login"  id="b1" class="button"/> 
			</div>

			<div class="overlay">
				<h1>Book World.</h1>
				<p>The reading of books, what is it? nothing but conversing with
					the wisest men and women of all ages and all countries.</p>
			</div>

		</form>
	</div>
</body>
</html>