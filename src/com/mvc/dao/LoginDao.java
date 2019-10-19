package com.mvc.dao;
 
import java.sql.Connection;
 import java.sql.ResultSet;
 import java.sql.SQLException;
 import java.sql.Statement;
 import com.mvc.bean.LoginBean;
 import com.mvc.util.DBConnection;
 public class LoginDao {
 public String authenticateUser(LoginBean loginBean)
 {
String Student_id = loginBean.getUserName(); 
String Password = loginBean.getPassword();

Connection con = null;
 Statement statement = null;
 ResultSet resultSet = null;
 
String FirstNameDB = "";
String PasswordDB = "";
 
try
 {
 con = DBConnection.createConnection(); //establishing connection
 statement = con.createStatement(); //Statement is used to write queries. Read more about it.
 resultSet = statement.executeQuery("select* from student where student_id='"+Student_id+"'"); 

while(resultSet.next()) 
 {
	FirstNameDB = resultSet.getString("student_id");
	PasswordDB = resultSet.getString("password");
	
if(Student_id.equals(FirstNameDB) && Password.equals(PasswordDB))
   {
	String LastName= resultSet.getString("stu_name");
      return LastName; 
   }
 }
 }
 catch(SQLException e)
 {
 e.printStackTrace();
 }
 return null;
 }
 }