<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
       <%@ taglib  uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
 <link rel="stylesheet" href="http://localhost:1111/CaseStudyMVC/resources/css/style.css">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

 
 <img src="${pageContext.request.contextPath}/resources/images/flower1.jpg">
<img src="/images/flower1.jpg">
<form action ="./spring/Login?uname=a&pwd=b">
Enter Name<input type="text" name="a"/></br>
enter password<input type="password" name="b"></br>
<input type="submit" value="login" id="b1"/> 
</form>
</body>
</html>