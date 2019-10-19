
	package com.mvc.controller;
	import java.io.IOException;
	import javax.servlet.ServletException;
	import javax.servlet.http.HttpServlet;
	import javax.servlet.http.HttpServletRequest;
	import javax.servlet.http.HttpServletResponse;
	 
	import com.mvc.bean.RegisterBean;
	import com.mvc.dao.FeeDao;
	 
	public class FeeServlet extends HttpServlet {
	 
		private static final long serialVersionUID = 1L;

	public FeeServlet() {
	 }
	 
	 protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	 //Copying all the input parameters in to local variables
	 String regid = request.getParameter("regid");
	 String year1 = request.getParameter("year");
	 String status= request.getParameter("fee_status");
	 int year=Integer.parseInt(year1);
	 
	 RegisterBean registerBean = new RegisterBean();
	 //Using Java Beans - An easiest way to play with group of related data
	 registerBean.setRegid(regid);
	 registerBean.setYear(year);
	 registerBean.setStatus(status);
	 
	 FeeDao registerDao = new FeeDao();
	 
	 //The core Logic of the Registration application is present here. We are going to insert user data in to the database.
	 String userRegistered = registerDao.registerUser(registerBean);
	 
	 if(userRegistered.equals("SUCCESS"))   //On success, you can display a message to user on Home page
	 {
	 request.setAttribute("SUCCESS_MESSAGE", userRegistered);
	 request.getRequestDispatcher("/fee1.jsp").forward(request, response);
	 }
	 else   //On Failure, display a meaningful message to the User.
	 {
	 request.setAttribute("errMessage", userRegistered);
	 request.getRequestDispatcher("/updfee.jsp").forward(request, response);
	 }
	 }
	}
