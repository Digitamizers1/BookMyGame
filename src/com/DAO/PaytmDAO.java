package com.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.text.ParseException;
import java.text.SimpleDateFormat;

import com.BookMyGame.ts.DAO.Util.BookMyGameDAOUtll;
import com.model.Payment;

public class PaytmDAO {

	Connection connection = null;
	PreparedStatement preparedStatement = null;

	public int InsertCard(Payment payment) {
		connection = new BookMyGameDAOUtll().getConnection();

		try {
			preparedStatement = connection
					.prepareStatement("insert into payment(cardnumber,nameoncard,expirationdate,cvcode,c_id)values(?,?,?,?,?)");
			preparedStatement.setLong(1, payment.getCardnumber());
			preparedStatement.setString(2, payment.getNameoncard());

			SimpleDateFormat sdf = new SimpleDateFormat("dd-MM-yyyy");
			java.util.Date dob = null;
			dob = sdf.parse(payment.getExpirationdate());
			java.sql.Date sqlDate = new java.sql.Date(dob.getTime());
			preparedStatement.setDate(3, sqlDate);
			preparedStatement.setInt(4, payment.getCvcode());
			preparedStatement.setInt(5, payment.getCid());
			return preparedStatement.executeUpdate();

		} catch (SQLException | ParseException e) {
			e.printStackTrace();
		}

		return 0;
	}

}