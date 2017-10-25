package com.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.DAO.GroundsDAO;
import com.model.Ground;


@WebServlet("/DisplayGrounds")
public class DisplayGrounds extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {

		int id = Integer.parseInt(request.getParameter("id"));

		List<Ground> groundsList = new GroundsDAO().DisplayGrounds(id);
		request.setAttribute("groundsList", groundsList);
		request.getRequestDispatcher("displaygrounds.jsp").forward(request,
				response);

	}

	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
	
	}

}
