package com.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.DAO.GroundsDAO;
import com.model.Ground;


@WebServlet("/DisplayController")
public class DisplayController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int i=Integer.parseInt(request.getParameter("id"));
		Ground ground=new  GroundsDAO().DisplayBook(i);
		if(ground.getGroundname()!=null){
			request.setAttribute("Ground", ground);
			request.getRequestDispatcher("DisplayPayment.jsp").forward(request, response);
		}
	}

	
}
