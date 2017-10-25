package com.BookMyGame.ts.DAO.Util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class BookMyGameDAOUtll {
	Connection conn = null;
	PreparedStatement ps = null;
	String uname = "root";
	String url = "jdbc:mysql://localhost:3306/bookmygame";
	String password = "root";

	public Connection getConnection() {

		try {
			Class.forName("com.mysql.jdbc.Driver");
			conn = DriverManager.getConnection(url, uname, password);

		} catch (ClassNotFoundException | SQLException e) {
			e.printStackTrace();
		}

		return conn;
	}
}
