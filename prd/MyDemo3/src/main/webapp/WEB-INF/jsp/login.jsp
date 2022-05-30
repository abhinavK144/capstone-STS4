<%@	taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login</title>
<!--=============== BOXICONS ===============-->
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/boxicons@latest/css/boxicons.min.css">

<!--=============== SWIPER CSS ===============-->
<link rel="stylesheet" href="assets/css/swiper-bundle.min.css">

<!--=============== CSS ===============-->
<link rel="stylesheet" href="assets/css/style.css">
<link rel="stylesheet" href="assets/css/colors/color-1.css">
</head>
<body>
	<!--=============== LOGIN ===============-->
	<div class="login" id="login">
		<i class="bx bx-x login__close" id="login-close"></i>

		<h2 class="login__title-centre">Login</h2>

		<form:form id="loginForm" action="loginProcess" method="post"
			class="login__form grid">


			<div class="login__content">
				<form:label path="email_Id" class="login__label">E-mail ID</form:label>
				<form:input path="email_Id" name="email_Id" id="email_Id"
					class="login_input" />
			</div>


			<div class="login__content">
				<form:label path="password" class="login__label">Password</form:label>
				<form:password path="password" name="password" id="password"
					class="login_input" />
			</div>
			<div class="toggle__pass">
				<input type="checkbox" onclick="myFunction()">
				<p>Show Password</p>
			</div>

			<div>
				<button type="submit" value="login" class="button">Login</button>
			</div>

			<div>
				<p class="signup">
					Not a member? <a href="register">sign up</a>
				</p>
				</p>
			</div>

			<div class="overlay">
				<h1>Book World.</h1>
				<p>The reading of books, what is it? nothing but conversing with
					the wisest men and women of all ages and all countries.</p>
			</div>
		</form:form>

	</div>
	<table align="center">
		<tr>
		
			<td style="font-style: bold; font-family:Verdana ; color: red;">${message}</td>
		</tr>
	</table>


</body>
</html>

<!-- ****************************************************************************************************************** -->
<!-- ****************************************************************************************************************** -->
<!-- ****************************************************************************************************************** -->

