<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html> 
	<head >
		<title>AddCourse</title>
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
 			<h1> Full Name<span>*</span>:</h1>
			<input  type="text" name="customer_full_name"  required>
 			<br>
 			<h1>Email<span>*</span>:</h1>
			<input  type="text" name="customer_mail"  required>
  			<br>
			<h1>Phone<span>*</span>:</h1>
 			<input  type="text" name="customer_phone"  required>
   			<br>
			<h1>Title<span>*</span>:</h1>
 			<input  type="text" name="customer_title"  required>
   			<br>
			<h1>Company<span>*</span>:</h1>
 			<input  type="text" name="customer_company"  required>
   			<br>
   			<h1>Type<span>*</span>:</h1>
 			<input  type="text" name="customer_type"  required>
   			<br>
			<h1>Notes<span>*</span>:</h1>
 			<input  type="text" name="customer_notes"  required>
   			<br>
			<h1>Picture URL<span>*</span>:</h1>
 			<input  type="text" name="customer_picture"  required>
   			<br>
			<h1>Linkedin profile<span>*</span>:</h1>
 			<input  type="text" name="customer_linkedin"  required>
   			<br>
			<h1>Facebook Profile<span>*</span>:</h1>
 			<input  type="text" name="customer_facebook"  required>
   			<br>
			<h1>Twitter profile<span>*</span>:</h1>
 			<input  type="text" name="customer_twitter"  required>
   			<br>
  			<input type="hidden" name="type" value="customers">
  			<br>
 			<input type="submit" value="Submit">
   		</form>
 	</body>
</html>
 