<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<style type="text/css">
			<%@include file="bootstrap/css/bootstrap.css" %>
			<%@include file="bootstrap/css/bootstrap-theme.css" %>
		</style>
		<link href="/bootstrap/css/bootstrap.min.css" rel="stylesheet">
   		<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
  		<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<title>Main Page</title>
	</head>
	<body>
 		</br>
 		</br> 
  		</br>
 		</br>
		<center>
			<div class="btn-group btn-group-justified">
				<div class="btn-group">
    				<button type="button" class="btn btn-primary dropdown-toggle" data-toggle="dropdown">
    					Main menu <span class="caret"></span>
    				</button>
    				<ul class="dropdown-menu" role="menu">
     					<li><a href="addProjects.jsp"> Add Project</a></li>
         				<li><a href="addCustomer.jsp"> Add Customers</a></li>
         				<li><a href="addRequirements.jsp">  Add Requirements</a></li>
         				<li><a href="assignCustomer.jsp"> Assign Customers</a> </li>
    				</ul>
  				</div>
	 			<div class="btn-group">
    				<button type="button" class="btn btn-primary" onclick="location.href = 'addProjects.jsp';">Add Project</button>
  				</div>
  				<div class="btn-group">
    				<button type="button" class="btn btn-primary" onclick="location.href = 'addCustomer.jsp';">Add Customers</button>
  				</div>
  				<div class="btn-group">
    				<button type="button" class="btn btn-primary" onclick="location.href = 'addRequirements.jsp';">Add Requirements</button>
  				</div>
	  			<div class="btn-group">
    				<button type="button" class="btn btn-primary" onclick="location.href = 'assignCustomer.jsp';">Assign Customers</button>
  				</div>
			</div>
		</center>
	</body>
</html>