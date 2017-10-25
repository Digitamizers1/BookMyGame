package com.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.DAO.FeedbackDAO;
import com.model.Feedback;

@WebServlet("/FeedbackServlet")
public class FeedbackServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String name=request.getParameter("name");
		String email=request.getParameter("email");
		String phonenumber=request.getParameter("phonenumber");
		String message=request.getParameter("message");
		
		Feedback feedback = new Feedback();
		feedback.setName(name);
		feedback.setEmail(email);
		feedback.setPhonenumber(phonenumber);
		feedback.setMessage(message);
		int a= new FeedbackDAO().getFeedback(feedback);
		if(a>0){
			response.sendRedirect("Returnhome.jsp");
		}
		
	}

}
