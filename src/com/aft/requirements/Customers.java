package com.aft.requirements;
  


import java.io.IOException;
import java.net.MalformedURLException;
import java.net.ProtocolException;
import java.sql.*;

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

import java.sql.*;
import java.text.SimpleDateFormat;
import java.io.IOException;
import java.net.MalformedURLException;
import java.net.ProtocolException;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.servlet.annotation.WebServlet;
import javax.sql.DataSource;




 
@WebServlet("/Customers")
public class Customers
{
	 
	
	public String cName="";
	public String cMail="";
	public String cPhone;
	public String cTitle="";
	public String cCompany="";
	public String cType="";
	public String cNotes="";
	public String cPicture="";
	public String cLinkedin="";
	public String cFacebook="";
	public String cTwitter="";
	 
	
	 
	public String getName() {
		return cName;
	}
	public void setName(String cName) {
		this.cName = cName;
	} 
	public String getMail() {
		return cMail;
	} 
	public void setMail(String mail) {
		this.cMail = mail;
	} 
	public String getPhone() {
		return cPhone;
	} 
	public void setPhone(String phone) {
		this.cPhone = phone;
	} 
	public String getTitle () {
		return cTitle ;
	} 
	public void setTitle (String title ) {
		this.cTitle =  title;
	} 
	public String getCompany () {
		return  cCompany;
	} 
	public void setCompany (String company  ) {
		this.cCompany =company  ;
	}
	public String getType()
	{
		return cType;
	}
	public void setType(String type)
	{
		this.cType=type;
	}
	public String getNotes() {
		return  cNotes;
	} 
	public void setNotes (String notes  ) {
		this.cNotes =notes  ;
	} 
	public String getPicture () {
		return  cPicture;
	} 
	public void setPicture (String picture  ) {
		this.cPicture =  picture;
	} 

	public String getLinkedin() {
		return  cLinkedin;
	} 
	public void setLinkedin(String linkedin ) {
		this.cLinkedin =  linkedin;
	} 
	public String getFacebook () {
		return  cFacebook;
	} 
	public void setFacebook (String facebook  ) {
		this.cFacebook =  facebook;
	} 
	public String getTwitter () {
		return  cTwitter;
	} 
	public void setTwitter (String twitter  ) {
		this.cTwitter =twitter  ;
	} 
	public void insert( ) throws MalformedURLException, IOException,
	ProtocolException {
		try {
	         Context initContext = new InitialContext();
	         Context envContext = (Context) initContext.lookup("java:comp/env");
	         DataSource ds = (DataSource) envContext.lookup("jdbc/paango");
	         Connection conn = ds.getConnection(); 
	         PreparedStatement statement=null;

			 String q="INSERT INTO customers (customer_full_name,customer_mail,customer_phone,customer_title,customer_company,customer_notes,customer_picture,customer_linkedin,customer_facebook,customer_twitter,customer_type) VALUES( ?,?,?,?,?,?,?,?,?,?,?)";
			 statement = conn.prepareStatement(q);
			 statement.setString(1, cName);
			 statement.setString(2, cMail);
			 statement.setString(3, cPhone );
			 statement.setString(4, cTitle);
			 statement.setString(5, cCompany);
			 statement.setString(6, cNotes);
			 statement.setString(7, cPicture);
			 statement.setString(8, cLinkedin);
			 statement.setString(9, cFacebook);
			 statement.setString(10,cTwitter );
			 statement.setString(11, cType);
			 statement.executeUpdate();
	  
		 }
		 catch(Exception e)
		 {
			 System.out.println(" unable to connect "+e);
		 }
		  
  
	}


 
	
}
	
