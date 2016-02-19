package com.aft.service;

import java.io.IOException;



import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.aft.requirements.AssignCustomers;
 
import com.aft.requirements.Customers;
import com.aft.requirements.Projects;
import com.aft.requirements.Ratings;
import com.aft.requirements.Requirements;




import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.sql.DataSource;



 
      
/**
 * Servlet implementation class Aft
 */
@WebServlet("/Aft")
@MultipartConfig(maxFileSize = 21665)
public class Aft extends HttpServlet {
	private static final long serialVersionUID = 1L;
	HttpServletResponse response;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Aft() {
		
 // TODO Auto-generated constructor stub
	}
  
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	 
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		//doGet(request, response);/*
	String type=(String)request.getParameter("type");
	 PrintWriter writer = response.getWriter();
		 
	 switch(type)
	 {
	 case "projects" :
		
		 Projects project=new  Projects();
		 
		 project.setProjectName(request.getParameter("project_name"));
		 project.setProjectDescription(request.getParameter("project_description"));
		 project.setProjectOwner(request.getParameter("project_owner"));
		 		
		 
			project.insert( );
			
			
		
		RequestDispatcher dispatcher=request.getRequestDispatcher("/mainPage.jsp");
		dispatcher.forward(request, response);
		break;
		case "requirements" :
		
		Requirements req=new  Requirements();
		 
		req.setProjectId(request.getParameter("project_id"));
		req.setRequirement(request.getParameter("requirement"));
		 
		
			req.insert( );
		  dispatcher=request.getRequestDispatcher("/mainPage.jsp");
		dispatcher.forward(request, response);
		
		
		
		
		
		
		
		break;
		case "customers" :
		
		 Customers c=new  Customers();
		 
			c.setName(request.getParameter("customer_full_name"));
			c.setMail(request.getParameter("customer_mail"));
			c.setPhone(request.getParameter("customer_phone"));
			c.setTitle(request.getParameter("customer_title"));
			c.setCompany(request.getParameter("customer_company"));
			c.setNotes(request.getParameter("customer_notes"));
			c.setPicture(request.getParameter("customer_picture"));
			c.setLinkedin(request.getParameter("customer_linkedin"));
			c.setFacebook(request.getParameter("customer_facebook"));
			c.setTwitter(request.getParameter("customer_twitter"));
			c.setType(request.getParameter("customer_type"));
			
			c.insert( );
			
			dispatcher=request.getRequestDispatcher("/mainPage.jsp");
			dispatcher.forward(request, response);
			
		
		break;
		case "ratings" :
		Ratings r=new Ratings();
		r.setRate(request.getParameter("rating"));
		r.setRatedBy(request.getParameter("email"));
		r.setRequirementID(request.getParameter("requirement_id"));
		
		r.insert( );
		
		dispatcher=request.getRequestDispatcher("/login.jsp");
		dispatcher.forward(request, response);
		
		break;
		case "assigncustomers" :
			
			AssignCustomers a=new AssignCustomers();
			a.setPId(request.getParameter("project_id"));
			a.setCId(request.getParameter("customer_id"));
			a.insert( );
			 
			dispatcher=request.getRequestDispatcher("/mainPage.jsp");
			dispatcher.forward(request, response);
			 
			break;
		
		default :
			dispatcher=request.getRequestDispatcher("/mainPage.jsp");
			dispatcher.forward(request, response);
		
		
	 }
		 

		 
		
	}
	
	  
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		
		 PrintWriter writer = response.getWriter();
	        try {
	            Context initContext = new InitialContext();
	            Context envContext = (Context) initContext.lookup("java:comp/env");
	            DataSource ds = (DataSource) envContext.lookup("jdbc/paango");
	            Connection conn = ds.getConnection();
	             
	            Statement statement = conn.createStatement();
	            String sql = "select uname, mobile from login";
	            ResultSet rs = statement.executeQuery(sql);
	             
	            int count = 1;
	            while (rs.next()) {
	                writer.println(String.format("User #%d: %-15s %s", count++,
	                        rs.getString("uname"), rs.getString("mobile")));
	                 
	            }
	        } catch (NamingException ex) {
	            System.err.println(ex);
	        } catch (SQLException ex) {
	            System.err.println(ex);
	        }
	
	
	}
		
	
		
		
	/** 
	 * @see HttpServlet#doPut(HttpServletRequest, HttpServletResponse)
	 */
	protected void doPut(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
	 
		
 
	}





	/**
	 * @see HttpServlet#doDelete(HttpServletRequest, HttpServletResponse)
	 */
	protected void doDelete(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		
	}
}
