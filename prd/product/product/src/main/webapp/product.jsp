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

<form action ="./spring/product?uname=a&pwd=b">

product_id<input type="int" product_id="1"/></br>
catego_id<input type="int" catego_id="a"></br>
product_name<input type="text" product_name="A"></br>
product_description<input type="text" product_description="A_a"></br>
product_price<input type="int" product_price="1"></br>
product_stock<input type="text" product_stock="In_Stock/Out_Stock"></br>

<!--  <input type="" value="login"/> -->

</form>
</body>
</html>