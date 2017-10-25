package com.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.BookMyGame.ts.DAO.Util.BookMyGameDAOUtll;
import com.model.Feedback;

public class FeedbackDAO {
	Connection connection = null;
	PreparedStatement preparedStatement = null;
	
	public int getFeedback(Feedback feedback){
		connection = new BookMyGameDAOUtll().getConnection();
		try {
			preparedStatement = connection
					.prepareStatement("insert into feedback(name,email,phonenumber,message)values(?,?,?,?)");
			preparedStatement.setString(1,feedback.getName());
			preparedStatement.setString(2, feedback.getEmail());
			preparedStatement.setString(3, feedback.getPhonenumber());
			preparedStatement.setString(4,feedback.getMessage());
			
			return preparedStatement.executeUpdate();
			
		} catch (SQLException e) {

			e.printStackTrace();
		}
		return 0;
		
	}


}
