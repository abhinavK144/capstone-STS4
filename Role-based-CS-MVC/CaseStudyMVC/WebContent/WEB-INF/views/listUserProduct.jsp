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
</head>
<body>
<c:if test="${not empty products}">

<table class="table table-responsive table-striped table-hover">
<thead>

<c:forEach var="e" items="${products}">
<tr>
<td>${e.pname}</td>
<td>${e.price}</td>
<td><img width="100" height="100" src="${pageContext.request.contextPath}/<c:out value='${e.pimage}'/>"></td>
<td align="center">
<a href="/CaseStudyMVC/spring/addToCart/${e.pid}">
<input type="button" value="Add To Cart" class="btn btn-info">
</a> 
</td>

</tr>

</c:forEach>
</tbody>
</table>

</c:if>
</body>
</html>