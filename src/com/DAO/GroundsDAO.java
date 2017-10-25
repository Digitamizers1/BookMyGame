package com.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.BookMyGame.ts.DAO.Util.BookMyGameDAOUtll;
import com.model.Ground;

public class GroundsDAO {
	Connection connection = null;
	PreparedStatement preparedStatement = null;
	ResultSet resultSet = null;


	public int getGround(Ground ground){
		connection = new BookMyGameDAOUtll().getConnection();
		try {
			preparedStatement =connection.prepareStatement("insert into grounds(groundname,location,address,phonenumber,email_id)values(?,?,?,?,?)");
			preparedStatement.setString(1, ground.getGroundname());
			preparedStatement.setString(2, ground.getLocation());
			preparedStatement.setString(3, ground.getAddress());
			preparedStatement.setString(4, ground.getPhonenumber());
			preparedStatement.setString(5, ground.getEmail_id());

			return preparedStatement.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return 0;		
	}

	public List<Ground> DisplayGrounds(int no) {

		connection = new BookMyGameDAOUtll().getConnection();
		ArrayList<Ground> groundList = new ArrayList<Ground>();
		try {

			preparedStatement = connection
					.prepareStatement("select *  from grounds join availablesports where grounds.g_id=availablesports.g_id and availablesports.s_id=?");
			preparedStatement.setInt(1, no);
			resultSet = preparedStatement.executeQuery();
			while (resultSet.next()) {
				Ground ground = new Ground();
				ground.setGid(resultSet.getInt(1));
				ground.setGroundname(resultSet.getString(2));
				ground.setAvailableGame(resultSet.getInt(3));
				ground.setLocation(resultSet.getString(4));
				ground.setAddress(resultSet.getString(5));
				ground.setG_imagepath(resultSet.getString(11));
				ground.setPrice(resultSet.getDouble(12));
				groundList.add(ground);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}

		return groundList;
	}

	
	public List<Ground> DisplayBooking(int no) {

		connection = new BookMyGameDAOUtll().getConnection();
		ArrayList<Ground> groundList = new ArrayList<Ground>();

		try {
			preparedStatement = connection
					.prepareStatement("select grounds.groundname,grounds.location,grounds.address,availablesports.g_imagepath,availablesports.price from grounds,availablesports where grounds.g_id=availablesports.g_id and availablesports.avail_id=?");

			preparedStatement.setInt(1, no);
			resultSet = preparedStatement.executeQuery();
			while (resultSet.next()) {
				Ground ground = new Ground();
				ground.setGroundname(resultSet.getString(1));
				ground.setLocation(resultSet.getString(2));
				ground.setAddress(resultSet.getString(3));
				ground.setG_imagepath(resultSet.getString(4));
				ground.setPrice(resultSet.getDouble(5));

			}		
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return groundList;
	}
	
	
  public Ground DisplayBook(int no){
	  connection = new BookMyGameDAOUtll().getConnection();
	  Ground ground = new Ground();
	  try {
		preparedStatement=connection.prepareStatement("select grounds.groundname,grounds.location,grounds.address from grounds,availablesports where grounds.g_id=availablesports.g_id and availablesports.avail_id=1;");
		resultSet = preparedStatement.executeQuery();
		if(resultSet.next()){
			ground.setGroundname(resultSet.getString(1));
			ground.setLocation(resultSet.getString(2));
			ground.setAddress(resultSet.getString(3));
		}
	} catch (SQLException e) {
		e.printStackTrace();
	}	  
	return ground;	  
  }
  public Ground DisplayGround(int no, String groundname) {

		connection = new BookMyGameDAOUtll().getConnection();
		Ground ground = new Ground();
		try {

			preparedStatement = connection
					.prepareStatement("select * from grounds join availablesports where grounds.g_id=availablesports.g_id and grounds.groundname=? and availablesports.s_id=1");

			preparedStatement.setString(1, groundname);
			preparedStatement.setInt(2,no);
			resultSet = preparedStatement.executeQuery();

			if (resultSet.next()) {

				ground.setGid(resultSet.getInt(1));
				ground.setGroundname(resultSet.getString(2));
				ground.setAvailableGame(resultSet.getInt(3));
				ground.setLocation(resultSet.getString(4));
				ground.setAddress(resultSet.getString(5));
				ground.setG_imagepath(resultSet.getString(6));
				ground.setPrice(resultSet.getDouble(7));
				System.out.println(ground);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}

		return ground;
	}

}
