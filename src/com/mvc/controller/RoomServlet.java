package com.mvc.controller;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
 
import com.mvc.bean.StaffBean;
import com.mvc.dao.RoomDao;
 
public class RoomServlet extends HttpServlet {
 /**
	 * 
	 */
	private static final long serialVersionUID = 1L;

public RoomServlet() {
 }
 
 protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
 //Copying all the input parameters in to local variables
 String hostelid = "1001";
 String roomid = request.getParameter("roomid");
 String capacity = request.getParameter("capacity");
 String stu = request.getParameter("noofstu");

 StaffBean registerBean = new StaffBean();
 //Using Java Beans - An easiest way to play with group of related data
 registerBean.setHostelid(hostelid);
 registerBean.setRoomid(roomid);
 registerBean.setCapacity(capacity);
 registerBean.setNo(stu);
 
 RoomDao registerDao = new RoomDao();
 
 //The core Logic of the Registration application is present here. We are going to insert user data in to the database.
 String userRegistered = registerDao.registerUser(registerBean);
 
 if(userRegistered.equals("SUCCESS"))   //On success, you can display a message to user on Home page
 {
	 request.setAttribute("SUCCESS_MESSAGE", "SUCCESSFULLY REGISTERED !!");
 request.getRequestDispatcher("/AddRooms.jsp").forward(request, response);
 }
 else   //On Failure, display a meaningful message to the User.
 {
 request.setAttribute("errMessage", userRegistered);
 request.getRequestDispatcher("/AddRooms.jsp").forward(request, response);
 }
 }
}
