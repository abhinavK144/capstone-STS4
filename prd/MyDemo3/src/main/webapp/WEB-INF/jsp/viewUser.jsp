
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<h1>User List</h1>
<table border="2" width="70%" cellpadding="2">
	<tr>
		<th>F Name</th>
		<th>L Name</th>
		<th>Phone Number</th>
		<th>Email Id</th>
		<th>Address</th>
		<th>Password</th>
	</tr>
	<c:forEach var="user" items="${list}">
		<tr>
			<td>${user.fName}</td>
			<td>${user.lName}</td>
			<td>${user.phone_No}</td>
			<td>${user.email_Id}</td>
			<td>${user.address}</td>
			<td>${user.password}</td>
			
		</tr>
	</c:forEach>
</table>
<br />
