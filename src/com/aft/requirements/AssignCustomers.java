package com.aft.requirements;

import java.io.IOException;
import java.net.MalformedURLException;
import java.net.ProtocolException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.servlet.annotation.WebServlet;
import javax.sql.DataSource;

@WebServlet("/AssignCustomers")
public class AssignCustomers 
{
	public String pId;
	public String cId;

	public String getPId() 
	{
		return pId;
	} 
	public void setPId(String id) 
	{
		this.pId = id;
	}
	public String getCId() 
	{
		return cId;
	} 
	public void setCId(String id) 
	{
		this.cId = id;
	}
	

	public void insert( ) throws MalformedURLException, IOException,
	ProtocolException 
	{
		
		try {
	         Context initContext = new InitialContext();
	         Context envContext = (Context) initContext.lookup("java:comp/env");
	         DataSource ds = (DataSource) envContext.lookup("jdbc/paango");
	         Connection conn = ds.getConnection(); 
	         PreparedStatement statement=null;

			String q="INSERT INTO assigncustomer VALUES( ?,?)";
			statement = conn.prepareStatement(q);
			statement.setString(1, pId);
			statement.setString(2, cId);
			statement.executeUpdate();
		}
		catch(Exception e)
		{
			System.out.println(" unable to connect "+e);
		}
		 
  
	}

}
