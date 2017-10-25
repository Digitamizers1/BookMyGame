package com.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.model.Ground;
import com.DAO.GroundsDAO;

/**
 * Servlet implementation class GroundServlet
 */
@WebServlet("/GroundServlet")
public class GroundServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
 

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String groundname=request.getParameter("groundname");
		String location =request.getParameter("location");
		String address=request.getParameter("address");
		String phonenumber=request.getParameter("phonenumber");
		String email_id= request.getParameter("email");
		
		Ground ground= new Ground();
		ground.setGroundname(groundname);
		ground.setLocation(location);
		ground.setAddress(address);
		ground.setPhonenumber(phonenumber);
		ground.setEmail_id(email_id);
		
		int a= new GroundsDAO().getGround(ground);
	    if(a>0){
	    	
	    }
		
	}

}
