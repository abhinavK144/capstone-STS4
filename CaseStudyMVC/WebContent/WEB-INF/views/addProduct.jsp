<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
<div class="container">
 <h1>Product Form</h1>
 <form:form   modelAttribute="product" action="/CaseStudyMVC/spring/add" method="post">
<table class="table table-stripped table-responsive table-hover">

 <tr>
 <td><form:label path="pid"  >Product Id:</form:label></td>
 <td><form:input path="pid" value="${product.pid}" readonly="false" /></td>
 <td><form:errors path="pid" cssClass="error" /></td>
 </tr>
 
 <tr>
 <td><form:label path="pname">Product Name</form:label></td>
 <td><form:input path="pname" value="${product.pname}"/></td>
 <td><form:errors path="pname" cssClass="error" /></td>
 </tr>
 
 <tr>
 <td><form:label path="price">Product Price</form:label></td>
 <td><form:input path="price" value="${product.price}"/></td>
 <td><form:errors path="price" cssClass="error" /></td>
 </tr>
  <tr>
 <td><form:label path="pimage">Product Image</form:label><input type="file" name="pimage"/></td>
 
 <td><form:input path="pimage" value="${product.pimage}"/></td>
 <td><form:errors path="pimage" cssClass="error" /></td>
 </tr>
  <tr>
 <td><form:label path="pcategory">Product Category</form:label></td>
 <td><form:input path="pcategory" value="${product.pcategory}"/></td>
 <td><form:errors path="pcategory" cssClass="error" /></td>
 </tr>
  <tr>
 <td colspan="2"><input type="submit" value="Add Product"/></td>
 </tr>
 </table>
 </form:form>
</div>


<div>
<c:if test="${!empty products}">
 <h2>List of products...</h2>
 <table class="table table-stripped table-responsive table-hover">
 <tr>
 <th>PID</th>
<th>Product NAME</th>
<th>Price</th>
<th>Product Image</th>
<th>Product Category</th>
</tr>
<c:forEach items="${products}" var="c">
<tr>
<td>${c.pid}</td>
<td>${c.pname}</td>
<td>${c.price}</td>
<td><img width="100" height="100" src="${pageContext.request.contextPath}/<c:out value='${c.pimage}'/>"></td>
<td>${c.pcategory}

<td align="center">
<a href="/CaseStudyMVC/spring/edit/${c.pid}">
<input type="button" value="EDIT" class="btn btn-info">
</a> 
</td>

<td>
<a href="/CaseStudyMVC/spring/delete?id=${c.pid}">
<input type="button" value="DELETE" class="btn btn-primary">
</a></td>
</tr>

</c:forEach>
</tbody>
</table>

</c:if>
</body>
</html>