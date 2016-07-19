<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/static/css/style.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<title>Login</title>
</head>
<body>
<center><h2>Welcome to Login Page</h2></center>
<br>
<center>
	<form action="">
		Username <input type="text" id="username" placeholder="Username"><br>
		Password <input type="password" id="password" placeholder="Password"><br>
		<input type="submit" id="login" value="Login"> 
	</form>
</center>

<script type="text/javascript">

	$(document).ready(function(){
		var username = $('#username').val();
		var password = $('#password').val();
		$('#login').click(function(){
		
			alert("Username ="+ username + " "+"Password ="+ password);
			
		});
		
	});

</script>

</body>
</html>