<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html> 
	<head >
		<title>AddRequirement</title>
			<style type="text/css" >
			span
			{
				color:red;
			}
 
 			body
 			{
				background-color:skyblue 
 			}

			</style>
			<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
 	</head>
	<body>
 		<form    method="post" action="Aft" enctype="multipart/form-data">
 			<h1>Project Id<span>*</span>:</h1>
			<input  type="text" name="project_id" required>
 			<br>
   			<h1>Requirement<span>*</span>:</h1>
			<input  type="text" name="requirement"  required>
 			<br>
 			<input type="hidden" name="type" value="requirements">
 			<br>
 			<input type="submit" value="Submit">
   		</form>
  	</body>
</html>
 