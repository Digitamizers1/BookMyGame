package com.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.DAO.PaytmDAO;
import com.model.Payment;

@WebServlet("/PaymentController")
public class PaymentController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {

		long cardNumber = Long.parseLong(request.getParameter("cardNumber"));
		String cardname = request.getParameter("cardName");
		String expdate = request.getParameter("cardExpiry");
		int cardCVC = Integer.parseInt(request.getParameter("cardCVC"));
		int cid = 12;

		Payment payment = new Payment();
		payment.setCardnumber(cardNumber);
		payment.setNameoncard(cardname);
		payment.setExpirationdate(expdate);
		payment.setCvcode(cardCVC);
		payment.setCid(cid);
		int a= new PaytmDAO().InsertCard(payment);
		
		response.sendRedirect("DisplayPayment.jsp");
		
		
		if(a>0){
			
		}
	}

}
