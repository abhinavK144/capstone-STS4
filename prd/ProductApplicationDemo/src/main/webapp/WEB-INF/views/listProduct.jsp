<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ taglib  uri="https://java.sun.com/jsp/jstl/core" prefix="c" %>  

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1>List Of Products</h1>

<c:if test="${not empty product}">

<table class="table table-responsive table-striped table-hover">
<thead>
<tr>
<th>PID</th>
<th>Product NAME</th>
<th>Price</th>

</tr>
</thead>
<tbody>
<c:forEach var="e" items="${product}">
<tr>

<td>${e.productid}</td>
<td>${e.productname}</td>
<td>${e.price}</td>
<td>${e.stock}</td>
<td>${e.author}</td>
<td>${e.category}</td>
<td>${e.language}</td>
<td>${e.edition}</td>
<td>${e.publisher}</td>
<td>${e.product_img}</td>
</tr>
</c:forEach>
</tbody>
</table>

</c:if>
</body>
</html>