<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import ="java.sql.*" %>
    
 
<%@ page  import="javax.naming.Context" %>
<%@ page  import="javax.naming.InitialContext" %>
<%@ page  import="javax.naming.NamingException" %>
<%@ page  import="javax.servlet.ServletException" %>
<%@ page  import="javax.servlet.annotation.WebServlet" %> 
<%@ page  import="javax.servlet.http.HttpServlet" %>
<%@ page  import="javax.servlet.http.HttpServletRequest" %>
<%@ page  import="javax.servlet.http.HttpServletResponse" %>
<%@ page  import="javax.sql.DataSource" %>

<%@ page  import="java.io.IOException" %>
<%@ page  import="java.net.MalformedURLException" %>
<%@ page  import="java.net.ProtocolException" %>
<%@ page  import="java.sql.Connection" %>
<%@ page  import="java.sql.DriverManager" %>
<%@ page  import="java.sql.PreparedStatement" %>
<%@ page  import="java.sql.ResultSet" %>
<%@ page  import="java.sql.SQLException" %>
<%@ page  import="java.sql.Statement" %>
<%@ page  import="java.text.SimpleDateFormat" %>

<%@ page  import="javax.servlet.annotation.WebServlet" %>

<%@ page  import="javax.naming.Context" %>
<%@ page  import="javax.naming.InitialContext" %>
<%@ page  import="javax.servlet.annotation.WebServlet" %>
<%@ page  import="javax.sql.DataSource" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<style type="text/css">
 			body
 			{
				background-color:skyblue 
 			}
		</style>
	</head>
	<body>
		<%
    		String uname = request.getParameter("email");    
    		String pwd = request.getParameter("psw");
     		String mobile = request.getParameter("mob");
 			 
     		try 
    		{
    	        Context initContext = new InitialContext();
    	        Context envContext = (Context) initContext.lookup("java:comp/env");
    	        DataSource ds = (DataSource) envContext.lookup("jdbc/paango");
    	        Connection conn = ds.getConnection(); 
    	        PreparedStatement statement=null;
		        String q="INSERT INTO users values(?,?,?)";
		  		statement = conn.prepareStatement(q);
		   		statement.setString(1, uname);
		   		statement.setString(2, pwd);
		   		statement.setString(3, mobile);
		    	int row = statement.executeUpdate();
    			if (row > 0) 
			 	{
        			response.sendRedirect("mainPage.jsp");
     			}
    			else
    			{
        			response.sendRedirect("login.jsp");
    			}
	 		}  
		    catch(Exception e)
			{
		    	  %>
				  <h2>User Name is already exist please change the user name</h2><a href="login.jsp">signUp Here</a></td>
				  <%
				
			}
			 
			 
		%>

	</body>
</html>
