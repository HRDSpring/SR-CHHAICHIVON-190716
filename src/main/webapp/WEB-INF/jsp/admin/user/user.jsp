<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<!-- core CSS -->
    <link href="${pageContext.request.contextPath}/resources/static/css/bootstrap.min.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/resources/static/css/font-awesome.min.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/resources/static/css/animate.min.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/resources/static/css/prettyPhoto.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/resources/static/css/main.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/resources/static/css/responsive.css" rel="stylesheet">
	
<title>User</title>
</head>
<body>
	<div class="container">
		<h2>User Controller</h2><br>
		<!-- form -->
			<form class="form-horizontal">
			  <div class="form-group">
			    <label for="inputid" class="col-sm-2 control-label">ID</label>
			    <div class="col-sm-10">
			      <input type="text" class="form-control" id="inputid" placeholder="ID">
			    </div>
			  </div>
			  <div class="form-group">
			    <label for="inputusername" class="col-sm-2 control-label">Username</label>
			    <div class="col-sm-10">
			      <input type="text" class="form-control" id="inputusername" placeholder="Username">
			    </div>
			  </div>
			  <div class="form-group">
			    <label for="inputpassword" class="col-sm-2 control-label">Password</label>
			    <div class="col-sm-10">
			      <input type="password" class="form-control" id="inputpassword" placeholder="Password">
			    </div>
			  </div>
			  <div class="form-group">
			    <div class="col-sm-offset-2 col-sm-10">
			      <button type="submit" class="btn btn-default">Add</button>
			    </div>
			  </div>
			</form>
		
		<br>
		<!-- table -->
		<table class="table table-bordered">
		  <thead>
		    <tr>
		      <th>#</th>
		      <th>Username</th>
		      <th>Password</th>
		      <th>Action</th>
		    </tr>
		  </thead>
		  <tbody>
		    <tr>
		      <td>1</td>
		      <td>username</td>
		      <td>123</td>
		      <td>UPDATE/DELETE</td>
		    </tr>
		  </tbody>
		</table>
	</div>
    <script src="${pageContext.request.contextPath}/resources/static/js/jquery.js"></script>
    <script src="${pageContext.request.contextPath}/resources/static/js/bootstrap.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/static/js/jquery.prettyPhoto.js"></script>
    <script src="${pageContext.request.contextPath}/resources/static/js/jquery.isotope.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/static/js/main.js"></script>
    <script src="${pageContext.request.contextPath}/resources/static/js/wow.min.js"></script>
</body>
</html>