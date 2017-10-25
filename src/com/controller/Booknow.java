package com.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.DAO.GroundsDAO;
import com.model.Ground;

@WebServlet("/Booknow")
public class Booknow extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	int id=Integer.parseInt(request.getParameter("groundid"));
	String groundname=request.getParameter("groundname");
	Ground ground= new GroundsDAO().DisplayGround(id, groundname);
	request.setAttribute("ground",ground);
	request.getRequestDispatcher("payment1.jsp").forward(request,
			response);
		
	}


}
