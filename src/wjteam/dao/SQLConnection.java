package wjteam.dao;

import java.sql.*;

public class SQLConnection {
	public static Connection getConnection() {
		try{
			Class.forName("com.mysql.jdbc.Driver");
		    return DriverManager.getConnection("jdbc:mysql://localhost:3306/messagedelivery","root","52142325");

		}catch(Exception e){
			e.printStackTrace();
		}
		return null;
	}
	
	
}
