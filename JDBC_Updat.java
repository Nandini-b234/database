package com.tasks;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

public class JDBC_Updat {

	public static void main(String[] args) {
		try {
			//1.Register the Driver class
			Class.forName("com.mysql.cj.jdbc.Driver");//oracle.jdbc.driver.OracleDriver
			//2.Create connection
			Connection con=null;
			con=DriverManager.getConnection("jdbc:mysql://localhost:3306/anp_d0453","root","security");
			System.out.println(con);
			//3.create statment
			PreparedStatement ps=con.prepareStatement("update person set name=? where  person_id=?");
			ps.setString(1,"geeta");
			ps.setInt(2, 1);
	
			//4.Execute queries
			int i=ps.executeUpdate();
			System.out.println(i+"record update sucessfully");
			//5.Close connection
			con.close();
		}catch(Exception e) {
		System.out.println(e);
		}

	}

}
/*



*/
