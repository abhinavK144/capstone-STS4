<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ taglib  uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
 
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
  
  <style>
  
  .btn btn-info
  .btn btn-primary {
  display: inline-block;
  background: #1ab73c;
  color: #fff;
  padding: .50rem 1rem;
  border-radius: .25rem;
  font-weight: var(--font-medium);
  transition: .3s;
}

.btn btn-info:hover
.btn btn-primary:hover {
  background: #27d510;
}


  
  
  </style>
</head>
<body>
<div class="container">
 
 
 <h1>List of Products!!!</h1>
<h3><a href="newProduct">Add Product</a></h3>

<div>

<c:if test="${not empty products}">

<table class="table table-responsive table-striped table-hover">
<thead>
<tr>
<th>PID</th>
<th>Product NAME</th>
<th>Price</th>
<th>Image</th>
<th>Product Category</th>


</tr>
</thead>
<tbody>
<c:forEach var="e" items="${products}">
<tr>

<td>${e.pid}</td>
<td>${e.pname}</td>
<td>${e.price}</td>
<td><img width="100" height="100" src="${pageContext.request.contextPath}/<c:out value='${e.pimage}'/>"></td>
<td>${e.pcategory}
<td align="center">
<a href="/CaseStudyMVC/spring/edit/${e.pid}">
<input type="button" value="EDIT" class="btn btn-info">
</a> 
</td>
<td>
<a href="/CaseStudyMVC/spring/delete?id=${e.pid}">
<input type="button" value="DELETE" class="btn btn-primary">
</a></td>
</tr>

</c:forEach>
</tbody>
</table>

</c:if>
</body>
</html>