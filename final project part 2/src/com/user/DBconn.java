package com.user;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;


public class DBconn {

	public static Connection conn() throws ClassNotFoundException, SQLException
	{
		Connection con;
		 Class.forName("com.mysql.jdbc.Driver");
		  con=DriverManager.getConnection("jdbc:mysql://localhost:3307/22ci1533_ecertificateblockchain","root","admin");
		   
	return con;
	}

}
