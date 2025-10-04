package com.user;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;


public class DBconn {

	public static String filepath="C:\\Users\\DELL\\OneDrive\\Desktop\\BE Final year project\\QRCode";
	public static String newfilepath="C:/Users/DELL/OneDrive/Desktop/BE Final year project/QRCode";
	public static String PrevHash1=null,PrevHash2=null,PrevHash3=null,PrevHash4=null;
	public static int blockchain1msg=0,blockchain2msg=0,blockchain3msg=0,blockchain4msg=0;
	public static String password="admin";
	public static Connection conn() throws ClassNotFoundException, SQLException
	{
		Connection con;
		 Class.forName("com.mysql.jdbc.Driver");
		  con=DriverManager.getConnection("jdbc:mysql://localhost:3307/meecertificateblockchain","root","admin");
		   

	return con;
	}

	public static Connection connblockchain(String databasename) throws SQLException, ClassNotFoundException {
		Connection con;
		Class.forName("com.mysql.jdbc.Driver");
		con = DriverManager.getConnection("jdbc:mysql://localhost:3307/"+databasename, "root", "admin");

		return (con);

	}
 

}
