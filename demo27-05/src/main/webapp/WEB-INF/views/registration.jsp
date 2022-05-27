<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
</head>
<body>
	<form:form method="post" action="user" class="registration__form">

		<table class="table table-stripped table-responsive table-hover">

			<tr>
				<td><form:label path="FName">FName:</form:label></td>
				<td><form:input path="FName" /></td>
			</tr>

			<tr>
				<td><form:label path="LName">LName:</form:label></td>
				<td><form:input path="LName" /></td>

			</tr>

			<tr>
				<td><form:label path="Phone_no">Phone_no</form:label></td>
				<td><form:input path="Phone_no" /></td>

			</tr>

			<tr>
				<td><form:label path="Email_Id">Email_Id</form:label></td>
				<td><form:input path="Email_Id" /></td>

			</tr>

			<tr>
				<td><form:label path="Password">Password</form:label></td>
				<td><form:input path="Password" /></td>

			</tr>
			<tr>
				<td><form:label path="Address">Address</form:label></td>
				<td><form:input path="Address" /></td>

			</tr>
			<tr>
				<td><form:label path="role">role</form:label></td>
				<td><form:input path="role" /></td>

			</tr>

		</table>


		<div>
			<button class="button" type="submit" value="user">Sign Up</button>
		</div>



	</form:form>
	</div>



</body>
</html>