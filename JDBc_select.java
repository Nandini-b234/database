package com.tasks;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

public class JDBc_select {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		try {
			//1.Register the Driver Class
			Class.forName("com.mysql.cj.jdbc.Driver");
			
			//2.Create Connection
			Connection con=null;
			con=DriverManager.getConnection("jdbc:mysql://localhost:3306/anp_d0453","root","security");
			System.out.println(con);
			
			//3.create statement
			Statement stmt=con.createStatement();
			
			//4.Execute queries
			ResultSet rs=stmt.executeQuery("select * from person");
			while(rs.next()) {
				System.out.println(rs.getInt(1)+" "+rs.getString(2)+" "+rs.getInt(3));
			}
			
			//5.close connection
			con.close();
			
		}
		catch(Exception e) {
		System.out.println(e);
		}
	}
}

/*

com.mysql.cj.jdbc.ConnectionImpl@4009e306
3 tina 22
4 rina 20
5 shila 23
6 pinky 21


*/