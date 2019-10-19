
	package com.mvc.dao;
	 
	import java.sql.Connection;
	import java.sql.PreparedStatement;
	import java.sql.SQLException;
	import com.mvc.bean.RegisterBean;
	import com.mvc.util.DBConnection;
	 
	public class FeeDao {
	 
	 public String registerUser(RegisterBean registerBean)
	 {
	 String regid=registerBean.getRegid(); 
	 int year = registerBean.getYear();
	 String status = registerBean.getStatus();
	 
	 Connection con = null;
	 PreparedStatement preparedStatement = null;
	 
	 try
	 {
	 con = DBConnection.createConnection();
	 System.out.println("THE STUDENT ID : " + regid);
	 System.out.println("THE FEE YEAR : " + year);
	 System.out.println("THE STATUS : " + status);
	 String query = "insert into fee(student_id,fee_year,fee_status) values (?,?,?)"; //Insert user details into the table 'USERS'
	 preparedStatement = con.prepareStatement(query); //Making use of prepared statements here to insert bunch of data
	 preparedStatement.setString(1, regid);
	 preparedStatement.setInt(2, year);
	 preparedStatement.setString(3, status);
	 System.out.printf("Done ");
	 
	 int i= preparedStatement.executeUpdate();
	 
	 if (i!=0)  //Just to ensure data has been inserted into the database
		 return "SUCCESS"; 
	 }
	 catch(SQLException e)
	 {
	 e.printStackTrace();
	 }
	 
	 return "Oops.. Something went wrong there..!";  // On failure, send a message from here.
	 }
	}

