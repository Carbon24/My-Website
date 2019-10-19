package com.mvc.dao;
 
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.Statement;

import com.mvc.bean.RegisterBean;
import com.mvc.util.DBConnection;
 
public class RegisterDao {
 
 public String registerUser(RegisterBean registerBean)
 {
 int year=registerBean.getYear();
 String regid=registerBean.getRegid(); 
 String fullName = registerBean.getFullName();
 String cellno = registerBean.getCellno();
 String dept = registerBean.getDept();
 String dob = registerBean.getDob();
 String fatherName = registerBean.getFatherName();
 String password = registerBean.getPassword();
 String roomid = registerBean.getRoomid();
 String hostelid="1001";
// String is_approved="F";
 Connection con = null;
 PreparedStatement preparedStatement = null;

 try
 {
 con = DBConnection.createConnection();
 String query = "insert into student(student_id,stu_name,father_name,dept,cell_no,dob,hostel_id,room_id,password) values (?,?,?,?,?,?,?,?,?)"; //Insert user details into the table 'USERS'
 preparedStatement = con.prepareStatement(query); //Making use of prepared statements here to insert bunch of data
 preparedStatement.setString(1, regid);
 preparedStatement.setString(2, fullName);
 preparedStatement.setString(3, fatherName);
 preparedStatement.setString(4, dept);
 preparedStatement.setString(5, cellno);
 preparedStatement.setString(6, dob);
 preparedStatement.setString(7, hostelid);
 preparedStatement.setString(8, roomid);
 preparedStatement.setString(9, password);
 System.out.printf("Done");
 int i= preparedStatement.executeUpdate();
 Statement statement = con.createStatement(); 
 int j = statement.executeUpdate("update room set no_of_students = no_of_students + 1 where room_id=" + roomid);
 statement.executeUpdate("insert into fee values('"+regid+"',"+year+",'not-paid')");
 if (i!=0 && j!=0)  //Just to ensure data has been inserted into the database
	 return "SUCCESS"; 
 }
 catch(SQLException e)
 {
 e.printStackTrace();
 }
 
 return "Oops.. Something went wrong there..!";  // On failure, send a message from here.
 }
}