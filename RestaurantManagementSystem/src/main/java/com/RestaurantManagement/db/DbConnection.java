package com.RestaurantManagement.db;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;


public class DbConnection {
	
	public static Connection init() throws ClassNotFoundException, SQLException {
		Connection con=null;
	try {
		Class.forName("com.mysql.cj.jdbc.Driver");
		con=DriverManager.getConnection("jdbc:mysql://localhost:3308/RestaurantDb?autoReconnect=true&&useSSL=false","root","root");
			
		}
		catch(ClassNotFoundException | SQLException e) {
			e.printStackTrace();
		}
	return con;

	}
}
