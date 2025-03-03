package com.tasks;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

public class JDBC_delete {

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
			PreparedStatement ps=con.prepareStatement("delete from Person where person_id=?");
			ps.setInt(1, 1);
					
			//4.Execute queries
			int i=ps.executeUpdate();
			System.out.println(i+"Record deleted Successfully");
			
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
1Record deleted Successfully

mysql> select * from person;
+-----------+-------+------+
| person_id | name  | age  |
+-----------+-------+------+
|         3 | tina  |   22 |
|         4 | rina  |   20 |
|         5 | shila |   23 |
|         6 | pinky |   21 |
+-----------+-------+------+
4 rows in set (0.00 sec)

*/