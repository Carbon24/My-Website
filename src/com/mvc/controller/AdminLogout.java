package com.mvc.controller;
 
import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
 
@WebServlet(urlPatterns = "/AdminLogOut")
public class AdminLogout extends HttpServlet
{
 private static final long serialVersionUID = 1L;
 
 protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
 { 
	 System.out.println("ENTERING THE ADMIN LOG OUT !!"); 
	 request.setAttribute("LOGGED_IN_USER", null);
	 request.getServletContext().setAttribute("LOGGED_OUT_MESSAGE", "SUCCESSFULL LOGGED OUT !!");
	 response.sendRedirect("AdminLogin.jsp");
 }
}