package com.aft.requirements;


import java.io.IOException;
import java.net.MalformedURLException;
import java.net.ProtocolException;
import java.sql.*;
import java.text.SimpleDateFormat;

import javax.servlet.annotation.WebServlet;



import java.sql.*;
import java.text.SimpleDateFormat;
import java.io.IOException;
import java.net.MalformedURLException;
import java.net.ProtocolException;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.servlet.annotation.WebServlet;
import javax.sql.DataSource;



@WebServlet("/Requirements")
public class Requirements {
	 	public String requirement="";
		public String projectId;
		public String getProjectId() {
			return projectId;
		} 
		public void setProjectId(String id) {
			this.projectId= id;
		}
		public String getRequirement() {
			return requirement;
		} 
		public void setRequirement(String requirement) {
			this.requirement = requirement;
		}
		 
	public void insert( ) throws MalformedURLException, IOException,
	ProtocolException {
		 
		try {
	         Context initContext = new InitialContext();
	         Context envContext = (Context) initContext.lookup("java:comp/env");
	         DataSource ds = (DataSource) envContext.lookup("jdbc/paango");
	         Connection conn = ds.getConnection(); 
	         PreparedStatement statement=null;
			 String q="INSERT INTO requirements(project_id,requirement) VALUES( ?,?)";
			 statement = conn.prepareStatement(q);
			 statement.setString(1, projectId);
			 statement.setString(2, requirement);
			 
			 statement.executeUpdate();
		  }
		 catch(Exception e)
		 {
			 System.out.println(" unable to connect "+e);
		 }
		  
	  
	}

	

	


}
