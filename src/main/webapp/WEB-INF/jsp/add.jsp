<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="mvc" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Register</title>
</head>
<body>

<h3>${message}</h3>
<mvc:form action="${pageContext.request.contextPath}/add" modelAttribute="user" method="POST">
	
	ID : 
	<mvc:input path="id"/> <br/>
	Username : 
	<mvc:input path="username"/> <br/>
	Cl_Room : 
	<mvc:input path="cl_room"/> <br/>
	<input type="submit">
	
</mvc:form>

</body>
</html>