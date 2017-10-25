package com.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.BookMyGame.ts.DAO.Util.BookMyGameDAOUtll;
import com.model.User;

public class UserDAO {
	static Connection connection = null;
	static PreparedStatement preparedStatement = null;

	static ResultSet rs = null;

	public int InsertUser(User register) {
		connection = new BookMyGameDAOUtll().getConnection();
		int a = 0;
		try {
			preparedStatement = connection
					.prepareStatement("insert into customer(firstname,lastname,username,password,phoneno,"
							+ "gender,location)values(?,?,?,?,?,?,?)");
			preparedStatement.setString(1, register.getFirstname());
			preparedStatement.setString(2, register.getLastname());
			preparedStatement.setString(3, register.getUsername());
			preparedStatement.setString(4, register.getPassword());
			preparedStatement.setString(5, register.getPhonenumber());
			preparedStatement.setString(6, register.getGender());
			preparedStatement.setString(7, register.getLocations());
			
			a = preparedStatement.executeUpdate();
			
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return a;

	}

	public static boolean login(String email, String password) {
		connection = new BookMyGameDAOUtll().getConnection();
		User user = new User();
		boolean a=false;
		try {

			preparedStatement = connection.prepareStatement("select * from  customer where username=? and password=?");
			
			preparedStatement.setString(1, email);
			preparedStatement.setString(2, password);
			
			rs = preparedStatement.executeQuery();
			
			if (rs.next()) {
				user.setId(rs.getInt(1));
				user.setFirstname(rs.getString(2));
				user.setLastname(rs.getString(3));
				user.setUsername(rs.getString(4));
				user.setPassword(rs.getString(5));
				user.setGender(rs.getString(6));
				user.setLocations(rs.getString(7));
			}

		} catch (SQLException e) {
			e.printStackTrace();
		}
		return a;
	}

}
