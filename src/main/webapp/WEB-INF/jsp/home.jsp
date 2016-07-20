<%@page import="com.kshrd.model.User"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>Home</title>	
	<!-- core CSS -->
    <link href="${pageContext.request.contextPath}/resources/static/css/bootstrap.min.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/resources/static/css/font-awesome.min.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/resources/static/css/animate.min.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/resources/static/css/prettyPhoto.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/resources/static/css/main.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/resources/static/css/responsive.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/resources/static/font-awesome/css/font-awesome.min.css" rel="stylesheet">  `
        
</head>
<!--/head-->
	<div class="container">
			<div col-md-12>
				<center><h2>Spring Home Work</h2></center>
			</div>
              <!-- form add person -->
			 <button type="button" id="btnTopAdd" class="btn btn-info btn-lg" data-toggle="modal" data-target="#myModal"><i class="fa fa-plus" aria-hidden="true"></i>Add New Person</button>

			 <div class="modal fade" id="myModal" role="dialog">
			    <div class="modal-dialog modal-lg">
			      <div class="modal-content">
			        <div class="modal-header">
			          <button type="button" class="close" data-dismiss="modal">&times;</button>
			          <h4 class="modal-title">Add Person</h4>
			        </div>
			        <div class="modal-body">
				  		<form role="form" name="MyFormAdd">
						    <div class="form-group">
						      <label for="inputname">Name:</label>
						      <input type="text" class="form-control" ng-model="inputname" id="inputname" name="iname" required ng-minlength="6" placeholder="Chhai Chivon" ng-pattern="/^[a-zA-Z\s]*$/">

						    </div>
						    <div class="form-group">
						      <label for="inputage">Age:</label>
						      <input type="number" class="form-control" ng-model="inputage" id="inputage" name="iage" required min="1" max="100" required placeholder="20" ng-pattern="/^[0-9]{1,2}$/">

						    </div>
						    <div class="form-group">
								 <button type="button" class="btn btn-info btn-success" data-dismiss="modal" data-toggle="modal" id="btnsubmit" ng-disabled="!inputname || !inputage || MyFormAdd.iname.$error.pattern || MyFormAdd.iage.$error.pattern" ng-click="addPerson()" data-target="#"><i class="fa fa-plus-square-o" aria-hidden="true"></i>Add
								 </button>
						    </div>
						  </form>
			        </div>
			      </div>
			    </div>
			  </div>
			<!-- end form add person -->
              
            <!--   table desgin -->
			<div class="table">
				<table class="table table-striped highlight table-responsive">
				    <thead class="rules">
				        <tr>
				          	  <th data-field="id">#</th>
				              <th data-field="name">Name</th>
				              <th data-field="age">Age</th>
				          </tr>
				        </thead>
				        <tbody>
				        <tr>
				        <%
						ArrayList<User> users = (ArrayList)request.getAttribute("users");
						if(users.size()!= 0){
							for(int i=0;i<users.size();i++){%>
								<td><%=users.get(i).getId()%></td>
								<td><%=users.get(i).getUsername()%></td>
								<td><%=users.get(i).getCl_room()%></td>
								<td><input type="button" value="Edit"><input type="button" value="Delete"></td>
							 </tr>
						   <%}
						}%>
						
				        </tbody>
				    </table>
				</div>
			<br/>				
		<!-- end table desgin -->
    </div>
    <script src="http://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular.min.js"></script>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/static/js/jquery.js"></script>
    <script src="${pageContext.request.contextPath}/resources/static/js/bootstrap.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/static/js/jquery.prettyPhoto.js"></script>
    <script src="${pageContext.request.contextPath}/resources/static/js/jquery.isotope.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/static/js/main.js"></script>
    <script src="${pageContext.request.contextPath}/resources/static/js/wow.min.js"></script>
</body>
</html>