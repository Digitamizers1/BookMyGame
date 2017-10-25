package com.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.DAO.UserDAO;
import com.model.User;

@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {

		response.setContentType("text/html");
		
		PrintWriter out = response.getWriter();
	
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		
		User user = new User();
		
		if(UserDAO.login(email,password)){
			HttpSession session = request.getSession();
			session.setAttribute("username", user.getFirstname());	
		}else{
			out.println("wrong details");
			RequestDispatcher rd = request.getRequestDispatcher("Login.jsp");
			rd.include(request, response);
		}
		
//		boolean user = new UserDAO().Login(email, password);
//		
//		if(user.getFirstname()!=null){
//			HttpSession session =request.getSession();
//			session.setAttribute("user",user.getFirstname());
//			response.sendRedirect("home.jsp");
//		}else{
//			response.sendRedirect("Login.jsp");
//		}
		

	}

}
