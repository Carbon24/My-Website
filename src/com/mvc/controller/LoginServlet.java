package com.mvc.controller;
 import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.ServletException;
 import javax.servlet.http.HttpServlet;
 import javax.servlet.http.HttpServletRequest;
 import javax.servlet.http.HttpServletResponse;
 
import com.mvc.bean.LoginBean;
import com.mvc.bean.RegisterBean;
import com.mvc.dao.LoginDao;
 
public class LoginServlet extends HttpServlet {
 
	private static final long serialVersionUID = 1L;

protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
 String Student_id= request.getParameter("regid");
 String password=request.getParameter("password");
 
 LoginBean loginBean = new LoginBean(); 
 loginBean.setUserName(Student_id);
 loginBean.setPassword(password);
 
 LoginDao loginDao = new LoginDao(); 
 String userValidate = loginDao.authenticateUser(loginBean); 
 
 if(userValidate!=null)  {
	 RegisterBean userLoggedIn = new RegisterBean(); 
	 try {
		 Class.forName("com.mysql.jdbc.Driver");
		 Connection con=(Connection)DriverManager.getConnection("jdbc:mysql://localhost:3306/hostel1","root","iamkeer24");
		 Statement st=con.createStatement();
		 ResultSet rs=st.executeQuery("select * from STUDENT where STUDENT_ID = '" + Student_id + "'");
		 while (rs.next()) {
			 userLoggedIn.setRegid(rs.getString(1));
			 userLoggedIn.setFullName(rs.getString(2));
			 userLoggedIn.setFatherName(rs.getString(3));
			 userLoggedIn.setDept(rs.getString(4));
			 userLoggedIn.setCellno(rs.getString(5));
			 userLoggedIn.setDoB(rs.getString(6));
			 userLoggedIn.setRoomid(rs.getString(8));
			 userLoggedIn.setPassword(rs.getString(9));
		 }
		 request.getServletContext().setAttribute("USER_LOGGED_IN", userLoggedIn);
		 request.getRequestDispatcher("/index.jsp").forward(request, response);
	 } catch(Exception e) {
		 e.printStackTrace();
	 }
 }
 else
 {
 request.setAttribute("errMessage", "Invalid credentials"); 
 request.getRequestDispatcher("/Login.jsp").forward(request, response);
 }
 }
 
}
