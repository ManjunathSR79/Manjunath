package com.aft.requirements;

import java.io.IOException;
import java.net.MalformedURLException;
import java.net.ProtocolException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.text.SimpleDateFormat;

import javax.servlet.annotation.WebServlet;




import java.sql.*;
import java.sql.Connection;
import java.text.SimpleDateFormat;
import java.io.IOException;
import java.net.MalformedURLException;
import java.net.ProtocolException;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.servlet.annotation.WebServlet;
import javax.sql.DataSource;


 
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;



@WebServlet("/Projects")
public class Projects {
	
	public 	String projectDescription="";
	public String projectName="";
	public String projectOwner="";
	public String projectDate="";
	public String projectId;
	
	public String getProjectId() 
	{
		return projectId;
	} 
	public void setProjectId(String id) 
	{
		this.projectId = id;
	}
	 
	public String getProjectDescription()
	{
		return projectDescription;
	} 
	
	public void setProjectDescription(String courseDescription) 
	{
		this.projectDescription = courseDescription;
	}
	public String getProjectName() 
	{
		return projectName;
	}
	public void setProjectName(String projectName) 
	{
		this.projectName = projectName;
	} 
	public String getProjectOwner() 
	{
		return projectOwner;
	} 
	public void setProjectOwner(String mail) 
	{
		this.projectOwner = mail;
	} 
	public String getProjectDate() 
	{
		return projectDate;
	} 
	public void setProjectDate(String date) 
	{
		this.projectDate = date;
	} 


	public void insert( ) throws MalformedURLException, IOException,
	ProtocolException 
	{
		try 
		{
	         Context initContext = new InitialContext();
	         Context envContext = (Context) initContext.lookup("java:comp/env");
	         DataSource ds = (DataSource) envContext.lookup("jdbc/paango");
	         Connection conn = ds.getConnection(); 
	         PreparedStatement statement=null;
	         String q="INSERT INTO projects(project_name,project_description,project_owner) VALUES( ?,?,?)";
	         statement = conn.prepareStatement(q);
	         statement.setString(1, projectName);
	         statement.setString(2, projectDescription);
	         statement.setString(3, projectOwner);
	         /*java.util.Date date = new SimpleDateFormat("dd-mm-yyyy").parse(projectDate);
	         java.sql.Date sqlDate = new java.sql.Date(date.getTime());
	         statement.setDate(5, sqlDate);*/
	         statement.executeUpdate();
		}
		catch(Exception e)
		{
			System.out.println(" unable to connect "+e);
		}
		 
		 
  
	}

  
}
	