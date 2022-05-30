<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ taglib  uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1>List Of Produts</h1>

<c:if test="${not empty product}">

<table class="table table-responsive table-striped table-hover">
<thead>
<tr>
<th>Product_id</th>
<th>Catego_id</th>
<th>Product_name</th>
<th>Product_description</th>
<th>Product_price</th>
<th>Product_stock</th>

</tr>
</thead>
<tbody>
<c:forEach var="e" items="${product}">
<tr>

<td>${e.product_id}</td>
<td>${e.catego_id}</td>
<td>${e.product_name}</td>
<td>${e.product_discription}</td>
<td>${e.product_price}</td>
<td>${e.product_stock}</td>
</tr>
</c:forEach>
</tbody>
</table>

</c:if>
</body>
</html>