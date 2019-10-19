package com.mvc.controller;
import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mvc.bean.StaffBean;
import com.mvc.dao.Staffdao;
 
public class StaffServlet extends HttpServlet {
 
 /**
	 * 
	 */
	private static final long serialVersionUID = 1L;

public StaffServlet() {
 }
 
 protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
 //Copying all the input parameters in to local variables
 String fullName = request.getParameter("fullname");
 String cellno = request.getParameter("cellno");
 String empid = request.getParameter("empid");
 String address = request.getParameter("address");
 String empsal= request.getParameter("empsal");
 String designation=request.getParameter("designation");
 String hostelid ="1001"; 

 StaffBean registerBea = new StaffBean();
 //Using Java Beans - An easiest way to play with group of related data
 registerBea.setEmpName(fullName);
 registerBea.setCellno(cellno);
 registerBea.setEmpid(empid);
 registerBea.setDesig(designation);
 registerBea.setHostelid(hostelid);
 registerBea.setSal(empsal);
 registerBea.setAddress(address); 
 
 Staffdao register = new Staffdao();
 
 //The core Logic of the Registration application is present here. We are going to insert user data in to the database.
 String userRegistered = register.registerUser(registerBea);
 
 if(userRegistered.equals("SUCCESS"))   //On success, you can display a message to user on Home page
 {
	 request.setAttribute("SUCCESS_MESSAGE", "SUCCESSFULLY REGISTERED !!");
	 request.getRequestDispatcher("/StaffRegister.jsp").forward(request, response);
 
 }
 else   //On Failure, display a meaningful message to the User.
 {
 request.setAttribute("errMessage", userRegistered);
 request.getRequestDispatcher("/StaffRegister.jsp").forward(request, response);
 }
 }
}
