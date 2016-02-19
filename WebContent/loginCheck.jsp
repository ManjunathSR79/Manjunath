<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
 
     
<%@ page import="java.sql.*" %>

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
 	<head> <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
 		<style type="text/css">
			body
 			{
				background-color:skyblue 
 			}
 		</style>
 	</head> 
 	<body> 
 	<%
 		String email=request.getParameter("email");
 		String password=request.getParameter("psw"); 
 		int i=0;
 		
 		try 
		{
	        Context initContext;
			try 
			{
				initContext = new InitialContext();
			 
				Context envContext = (Context) initContext.lookup("java:comp/env");
				DataSource ds = (DataSource) envContext.lookup("jdbc/paango");
				Connection conn = ds.getConnection();
	         
				Statement statement = conn.createStatement();
				String s1="select * from users WHERE email='"+email+"' AND password='"+password+"'" ;
				ResultSet rs=statement.executeQuery(s1);  
			
	 		
	 		 
	 		while(rs.next())
	 		{
				String pword=rs.getString("password") ;
 				String mail=rs.getString("email") ;
				if((email.equals(mail) && password.equals(pword)))
 				{ 
	 				i=1;
	 				response.sendRedirect("mainPage.jsp"); 
	 				return;
 				}   
			}
	 		if(i==0)
	 		{
			%>
	 		Invalid User or password  
            <a  href="login.jsp "> Try Again </a>
     		<%
      		}
	   	}
 		catch(Exception e)
 		{
	 		e.printStackTrace();
 		} 
		}
 		catch(Exception e)
 		{
	 		e.printStackTrace();
 		} 
 		 
	%> 
 	</body>
</html>