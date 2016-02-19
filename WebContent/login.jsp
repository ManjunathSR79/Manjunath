<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.Connection" %>
    <%@ page import="java.sql.DriverManager" %>
	<%@ page import="java.sql.ResultSet" %>
	<%@ page import="java.sql.ResultSetMetaData" %>
	<%@ page import="java.sql.Statement" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login</title>
        <style type="text/css">
			<%@include file="bootstrap/css/bootstrap.css" %>
			<%@include file="bootstrap/css/bootstrap-theme.css" %>
		</style>
	    <link href="/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  	 	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
  		<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
        <style type="text/css">
         body {
 	       padding-top: 40px;
    	   padding-bottom: 40px;
       	   background-color: #f5f5f5;
      		  }
      		  
      		  span
			{
				color:red;
			}
			
 		</style>
    </head>
    <body>
       			<form  class="form-signin" method="post" action="loginCheck.jsp"  >
    				<div class="container" style="background-color #5cb85c">
  						 <div><button type="button" class="btn btn-default btn-md pull-right" id="myBtn">Login</button> </div>
  					</div>
 					<div class="modal fade" id="myModal" role="dialog">
    					<div class="modal-dialog">
    						<div class="modal-content">
        						<div class="modal-header" style="padding:35px 50px;">
          							<button type="button" class="close" data-dismiss="modal">&times;</button>
          							<h4><span class="glyphicon glyphicon-lock"></span> Login</h4>
        						</div>
        						<div class="modal-body" style="padding:40px 50px;">
          							<form role="form">
            							<div class="form-group">
              								<label for="usrname"><span class="glyphicon glyphicon-user"></span> Username</label>
              								<input type="text" name="email" class="form-control" id="email" placeholder="Enter your mailID">
            							</div>
            							<div class="form-group">
              								<label for="psw"><span class="glyphicon glyphicon-eye-open"></span> Password</label>
              								<input type="password" name="psw" class="form-control" id="psw" placeholder="Enter your password">
            							</div>
            							<div class="checkbox">
             		 						<label><input type="checkbox" value="" checked>Remember me</label>
            							</div>
            							<input type="hidden" name="type" value="users">
              							<button type="submit" class="btn btn-success btn-block"><span class="glyphicon glyphicon-off"></span> Login</button>
          							</form>
        						</div>
        						<div class="modal-footer">
          							<button type="submit" class="btn btn-danger btn-default pull-left" data-dismiss="modal"><span class="glyphicon glyphicon-remove"></span> Cancel</button>
          							<p>Not a member? <a href="login.jsp">Sign Up</a></p>
          							<p>Forgot <a href="#">Password?</a></p>
        						</div>
          					</div>
    					</div>
  					</div> 
  					<script>
						$(document).ready(function(){
    						$("#myBtn").click(function(){
        						$("#myModal").modal();
    						});
						});
					</script>
    	        </form>
   	 			<form  class="form-signin" method="post" action="signCheck.jsp"  >
    					<div class="container" style="background-color #5cb85c">
 							<div><button type="button" class="btn btn-default btn-md pull-left" id="myBtn1">SignUp</button> </div>
  						</div>
   						<div class="modal fade" id="myModal1" role="dialog">
    						<div class="modal-dialog">
	    						<div class="modal-content">
        							<div class="modal-header" style="padding:35px 50px;">
          								<button type="button" class="close" data-dismiss="modal">&times;</button>
          								<h4><span class="glyphicon glyphicon-lock"></span> Login</h4>
        							</div>
        							<div class="modal-body" style="padding:40px 50px;">
          								<form role="form">
            								<div class="form-group">
              									<label for="email"><span class="glyphicon glyphicon-user"></span> Email</label>
              									<input type="text" name="email" class="form-control"   id="email" placeholder="Enter your mailID">
            								</div>
            								<div class="form-group">
              									<label for="psw"><span class="glyphicon glyphicon-eye-open"></span> Password</label>
              									<input type="password" name="psw" class="form-control"   id="psw" placeholder="Enter your password">
            								</div>
            								<div class="form-group">
              									<label for="mob"><span class="glyphicon glyphicon-user"></span> Mobile No.</label>
              									<input type="text"   class="form-control" name ="mob" id="mob" placeholder="Enter your mobile no.">
            								</div>
              								<button type="submit" class="btn btn-success btn-block"><span class="glyphicon glyphicon-off"></span> Sign up</button>
          								</form>
        							</div>
        							<div class="modal-footer">
          								<button type="submit" class="btn btn-danger btn-default pull-left" data-dismiss="modal"><span class="glyphicon glyphicon-remove"></span> Cancel</button>
          							</div>
    							</div>
    						</div>
  						</div> 
  						<script>
							$(document).ready(function(){
    							$("#myBtn1").click(function(){
        							$("#myModal1").modal();
    							});
							});
						</script>
    				</form>
 				
 			</br>
 			</br>
 
   
   
 			<center>
 				<form method="post" action="Aft" enctype="multipart/form-data">
   					<input type="radio" name="rating" value="1" class="star">being not needed
       				<input type="radio" name="rating" value="2" class="star">not needed
        			<input type="radio" name="rating" value="3" class="star">needed
        			<input type="radio" name="rating" value="4" class="star">must have
        			<input type="radio" name="rating" value="5" class="star">being must have
        			
        			<input type="text" name="email"  id="email" placeholder="Enter your mailID" required><span>*</span>
        			<input type="text" name="requirement_id"  id="requirement_id" placeholder="Enter your Requirement ID" required><span>*</span>
        			<input type="hidden" name="type" value="ratings">
        			<input type="submit" value ="Rate it" style=background-color:skyblue >
    			</form>
 			</center>
 
 			<center>
 				<%
					int r1=0;
					int r2=0;
					int r3=0;
					int r4=0;
					int r5=0;
  					Connection c=null;
  					Statement s=null;
  					ResultSet rs=null;
 					try
  					{
						Class.forName("com.mysql.jdbc.Driver");
	 					String url="jdbc:mysql://localhost:3306/paango";
	  					String user = "root";
	  					String psword = "123";
						c=DriverManager.getConnection(url,user,psword);
						s =c.createStatement();
						String s1="select count(*) from ratings where rate=5  ";
	 					rs=s.executeQuery(s1);
	 					if(rs.next())
	 					{
							r5=rs.getInt(1);
	 					}
	 					else
	 					{
	 						r5=0;
						}
	    				s1="select count(*) from ratings  where rate=4";
	 					rs=s.executeQuery(s1);
	 					if(rs.next())
	 					{
	 						r4=rs.getInt(1) ;
	 					}
	 					else
	 					{
	 						r4=0 ;
	 					}
	  					s1="select count(*) from ratings  where rate=3";
	 					rs=s.executeQuery(s1);
	 					if(rs.next())
	 					{
							r3=rs.getInt(1);     
	 					}
	 					else
	 					{
							r3=0;
						}
	    				s1="select count(*) from ratings  where rate=2";
	 					rs=s.executeQuery(s1);
	 					if(rs.next())
	 					{
	 						r2=rs.getInt(1);
						}
	 					else
	 					{
	 						r2=0;
						}
	    				s1="select count(*) from ratings  where rate=1";
	 					rs=s.executeQuery(s1);
	 					if(rs.next())
	 					{
							r1=rs.getInt(1);
	 					}
	 					else
	 					{
	 						r1=0 ;
	 					}
	 			 	}
 					catch(Exception e)
 					{
						System.out.println("execute query  "+e);
 					}
 					finally
 					{
 						rs.close();
	 					s.close();
	 					c.close();
					}
				%>

	 
				5 Stars(<%=r5%>)ratings   
				<div class = "progress progress-striped">
 					<div class = "progress-bar progress-bar-success" role = "progressbar" 
    					aria-valuenow = "60" aria-valuemin = "0" aria-valuemax = "100" style = "width: <%=r5*3%>%;">
        				<span class = "sr-only">10% Complete (Sucess)</span>
    				</div>
				</div>
				4 Stars(<%=r4%>)ratings
				<div class = "progress progress-striped">
   					<div class = "progress-bar " role = "progressbar"
      					aria-valuenow = "60" aria-valuemin = "0" aria-valuemax = "100" style = "width: <%=r4*3%>%;">
      					<span class = "sr-only">30% Complete (info)</span>
   					</div>
				</div>
				3 Stars(<%=r3%>)ratings
				<div class = "progress progress-striped">
	   				<div class = "progress-bar progress-bar-warning" role = "progressbar" 
    	  				aria-valuenow = "60" aria-valuemin = "0" aria-valuemax = "100" style="width: <%=r3*3%>%;">
   					</div>
				</div>
				2 Stars(<%=r2%>)ratings
				<div class = "progress progress-striped">
   					<div class = "progress-bar progress-bar-danger" role = "progressbar" 
   						aria-valuenow = "60" aria-valuemin = "0" aria-valuemax = "100" style = "width: <%=r2*3%>%;">
   					</div>
				</div>
				1 Stars(<%=r1%>)ratings
				<div class = "progress progress-striped">
					<div class = "progress-bar progress-bar-danger" role = "progressbar" 
    					aria-valuenow = "60" aria-valuemin = "0" aria-valuemax = "100" style = "width: <%=r1*3%>%;">
  			  		</div>
				</div>
			</center>
		</body>
</html>