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
 <h1>Update Product Form</h1>

<div>
<form:form   modelAttribute="product" action="/CaseStudyMVC/spring/update" method="post">
 <table class="table table-stripped table-responsive table-hover">
 

 <tr>
 <td><form:label path="Product_id"  >Product Id:</form:label></td>
 <td><form:input path="Product_id" value="${product.Product_id}" readonly="true" /></td>
 <td><form:errors path="Product_id" cssClass="error" /></td>
 </tr>
 
 <tr>
 <td><form:label path="Product_name">Product Name</form:label></td>
 <td><form:input path="Product_name" value="${product.Product_name}"/></td>
 <td><form:errors path="Product_name" cssClass="error" /></td>
 </tr>
 
 <tr>
 <td><form:label path="Product_price">Product Price</form:label></td>
 <td><form:input path="Product_price" value="${product.Product_price}"/></td>
 <td><form:errors path="Product_price" cssClass="error" /></td>
 </tr>
 
  <tr>
 <td colspan="2"><input type="submit" value="Update Product"/></td>
 </tr>
 </table>
 </form:form>
</div>
 
  <div>
<c:if test="${!empty products}">
 <h2>List of products</h2>
 <table class="table table-stripped table-responsive table-hover">
 <tr>
 <th>Product_id</th>
<th>Product_name</th>
<th>Product_price</th>
</tr>
<c:forEach items="${products}" var="c">
<tr>
<td>${c.Product_id}</td>
<td>${c.Product_name}</td>
<td>${c.Product_price}</td>

<td align="center">
<a href="/CaseStudyMVC/spring/edit/${c.Product_id}">
<input type="button" value="EDIT" class="btn btn-info">
</a> 
</td>

<td>
<a href="/CaseStudyMVC/spring/delete?id=${c.Product_id}">
<input type="button" value="DELETE" class="btn btn-primary">
</a></td>
</tr>

</c:forEach>
</tbody>
</table>

</c:if>
</body>
</html>




 </body>
 </html>