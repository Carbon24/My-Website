<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.*"%>
<jsp:include page="./partials/header_admin.jsp" />
<body>
<div class="container">
<h1 align="center">Delete Student</h1>
<form>
<table class="table table-bordered">
 <tr>
 <td>Student_ID: </td>
 <td><input type="text" name="regid" size="30" class="txt"/></td>
 </tr>
 <tr>
 <td>Room_ID: </td>
 <td><input type="text" name="roomid" size="30" class="txt"/></td>
 </tr>
 <%
String regid = request.getParameter("regid");
 String roomid = request.getParameter("roomid");
Class.forName("com.mysql.jdbc.Driver");
Connection con=(Connection)DriverManager.getConnection(
    "jdbc:mysql://localhost:3306/hostel1","root","iamkeer24");
Statement st=con.createStatement();
try
{
String query = "update room set no_of_students=no_of_students -1 where room_id="+roomid; 
PreparedStatement preparedStatement;

preparedStatement = con.prepareStatement(query);
System.out.printf("Done ");

int i= preparedStatement.executeUpdate();

if (i!=0)  //Just to ensure data has been inserted into the database
out.println("SUCCESSFULLY REMOVED"); 

}
catch(SQLException e)
{
e.printStackTrace();
}
 // On failure, send a message from here.

%>
  <tr>
 	<td></td>
  <td> <input type="submit" placeholder="Login" class='btn btn-success'></input> <input type="reset" placeholder="Reset" class='btn btn-info'></input></td>
 </tr>

</table>
</form>
<span style="color:red"><%=(request.getAttribute("errMessage") == null) ?"" : request.getAttribute("errMessage")%></span>
</div>
</body>
</html>