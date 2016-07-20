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
</head>
<!--/head-->
	<div class="container">
         <div class="row">
              <div class="col-sm-6 col-xs-4">
              	<!--   table desgin -->
			<div class="table">
				<table class="table table-striped highlight table-responsive">
			        <thead class="rules">
			          <tr>
			          	  <th data-field="id">#</th>
			              <th data-field="name">Name</th>
			              <th data-field="age">Age</th>
			              <th data-field="action">Action</th>
			          </tr>
			        </thead>
			        <tbody>
			          <tr ng-repeat="p in person | orderBy:'ID'">
							<td>{{$index + 1}}</td>
							<td>{{p.NAME}}</td>
							<td>{{p.AGE}}</td>
							<td>
								<div class="btn-group" role="group">
								  <button type="button" class="btn btn-default" data-toggle="modal" data-target="#ModalUpdate" ng-click="getElementId(p.ID)"  id="edit"> <i class="large material-icons">mode_edit</i>Edit</button>
								  <button type="button" ng-click="deletePerson(p.ID)" id="delete" class="btn btn-default"><i class="large material-icons">settings_power</i>Delete</button>
								</div>
							</td>
					  </tr>
			        </tbody>
			    </table>
			</div>
			<!-- end table desgin -->
			
              </div>
        </div>
    <!--footer-->
    <footer>      
    
    </footer>
    <!--footer-->
    </div>

    <script src="${pageContext.request.contextPath}/resources/static/js/jquery.js"></script>
    <script src="${pageContext.request.contextPath}/resources/static/js/bootstrap.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/static/js/jquery.prettyPhoto.js"></script>
    <script src="${pageContext.request.contextPath}/resources/static/js/jquery.isotope.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/static/js/main.js"></script>
    <script src="${pageContext.request.contextPath}/resources/static/js/wow.min.js"></script>
</body>
</html>