package com.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.DAO.UserDAO;
import com.model.User;
//import com.DAO.BookMyGameDAO;
@WebServlet("/UserServlet")
public class UserServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		String firstname=request.getParameter("firstname");
		String lastname=request.getParameter("LastName");
		String email=request.getParameter("email address");
		String password=request.getParameter("password");
		String phonenumber=request.getParameter("mobilenumber");
		String gender=request.getParameter("gender");
		String locations=request.getParameter("location");
		
		User user= new User();
		
		user.setFirstname(firstname);
		user.setLastname(lastname);
		user.setUsername(email);
		user.setPassword(password);
		user.setPhonenumber(phonenumber);
		user.setGender(gender);
		user.setLocations(locations);
		
		
		try {
			int a=new UserDAO().InsertUser(user);
			if(a>0){
				response.sendRedirect("login.jsp");
			}else{
				response.sendRedirect("Register.jsp");
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
