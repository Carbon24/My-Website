package com.mvc.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import com.mvc.util.DBConnection;
 
import com.mvc.bean.StaffBean;
public class Staffdao {
 
 public String registerUser(StaffBean registerBean)
 {
 String empid=registerBean.getEmpid(); 
 String EmpName = registerBean.getEmpName();
 String cellno = registerBean.getCellno();
 String empsal = registerBean.getSal();
 String desig = registerBean.getDesig();
 String address = registerBean.getAddress();
 String hostelid = registerBean.getHostelid();
 Connection con = null;
 PreparedStatement preparedStatement = null;
 
 try
 {
 con = DBConnection.createConnection();
 String query = "insert into staff(emp_id,emp_name,emp_cellno,emp_salary,designation,emp_address,hostel_id) values (?,?,?,?,?,?,?)"; //Insert user details into the table 'USERS'
 preparedStatement = con.prepareStatement(query); //Making use of prepared statements here to insert bunch of data
 preparedStatement.setString(1, empid);
 preparedStatement.setString(2, EmpName);
 preparedStatement.setString(3, cellno);
 preparedStatement.setString(4, empsal);
 preparedStatement.setString(5, desig);
 preparedStatement.setString(6, address);
 preparedStatement.setString(7, hostelid);
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
