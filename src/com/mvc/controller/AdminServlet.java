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
	 
	import com.mvc.bean.AdminLoginBean;
import com.mvc.bean.RegisterBean;
import com.mvc.dao.AdminLoginDao;
	 
	 
	 public class AdminServlet extends HttpServlet {

		private static final long serialVersionUID = 1L;

	public AdminServlet() {
	 }
	 
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	 
	String userName = request.getParameter("username");
	 String password = request.getParameter("password");
	 
	 AdminLoginBean rMS_ALoginBean = new AdminLoginBean(); //creating object for LoginBean class, which is a normal java class, contains just setters and getters. Bean classes are efficiently used in java to access user information wherever required in the application.
	 
	rMS_ALoginBean.setUserName(userName); //setting the username and password through the loginBean object then only you can get it in future.
	 rMS_ALoginBean.setPassword(password);
	 System.out.println("in servlet");
	 
	 AdminLoginDao rMS_LoginDao = new AdminLoginDao(); //creating object for LoginDao. This class contains main logic of the application.
	 
	String userValidate = rMS_LoginDao.authenticateUser(rMS_ALoginBean); //Calling authenticateUser function
	
	try {
		if(userValidate.equals("SUCCESS")) //If function returns success string then user will be rooted to Home page
		 {
			 RegisterBean userLoggedIn = new RegisterBean();
			 Class.forName("com.mysql.jdbc.Driver");
			 Connection con=(Connection)DriverManager.getConnection("jdbc:mysql://localhost:3306/hostel1","root","iamkeer24");
			 Statement st=con.createStatement();
			 ResultSet rs=st.executeQuery("select * from STUDENT where STUDENT_ID = '" + userName + "'");
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
				 request.getRequestDispatcher("/AdminFeed.jsp").forward(request, response);
			 } else {
				 request.setAttribute("errMessage", userValidate); //If authenticateUser() function returnsother than SUCCESS string it will be sent to Login page again. Here the error message returned from function has been stored in a errMessage key.
				 request.getRequestDispatcher("/AdminLogin.jsp").forward(request, response);//forwarding the request
			 } 
			} catch (Exception e) {
			 e.printStackTrace();
		 }
	 }
	 
	 }


