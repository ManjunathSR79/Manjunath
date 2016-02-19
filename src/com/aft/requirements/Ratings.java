package com.aft.requirements;

import java.io.IOException;
import java.net.MalformedURLException;
import java.net.ProtocolException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;



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


@WebServlet("/Ratings")
public class Ratings {
	 public 	String rate="";
	 public String requirementID="";
	 public String ratedBy="";
	 
	public String getRate() {
		return rate;
	} 
	public void setRate(String rate) {
		this.rate=rate ;
	}
	
	
	public String getRequirementID() {
		return requirementID;
	} 
	public void setRequirementID(String requirement) {
		this.requirementID = requirement;
	}
	
	public String getRatedBy() {
		return ratedBy;
	} 
	public void setRatedBy(String ratedBy) {
		this.ratedBy=ratedBy ;
	}
	
	
	
	public void insert( ) throws MalformedURLException, IOException,
	ProtocolException {
		try {
	         Context initContext = new InitialContext();
	         Context envContext = (Context) initContext.lookup("java:comp/env");
	         DataSource ds = (DataSource) envContext.lookup("jdbc/paango");
	         Connection conn = ds.getConnection(); 
	         PreparedStatement statement=null;
	         String q="INSERT INTO ratings(requirement_id,rate,rated_by) VALUES(?,?,?)";
			 statement = conn.prepareStatement(q);
			 statement.setString(1,requirementID );
			 statement.setString(2,rate );
			 statement.setString(3,ratedBy );
			 statement.executeUpdate();
		 	}
		 catch(Exception e)
		 {
			 System.out.println(" unable to connect "+e);
		 }
		  
	  
		}

	}