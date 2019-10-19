<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.*"%>
<jsp:include page="./partials/header_admin.jsp" />
<body>
<div class="container">
<h1 align="center">Update Hostel</h1>
<form>
<table class="table table-bordered">
 <tr>
 <td>Hostel_ID: </td>
 <td><input type="text" name="regid" size="30" class="txt"/></td>
 </tr>
 <tr>
 <td>Students currently living: </td>
 <td><input type="text" name="sal" size="30" class="txt"/></td>
 </tr>

<%
Class.forName("com.mysql.jdbc.Driver");
Connection con=(Connection)DriverManager.getConnection(
    "jdbc:mysql://localhost:3306/hostel1","root","iamkeer24");
Statement st=con.createStatement();
String empid = request.getParameter("regid"); 
String s = request.getParameter("sal");
if (empid != null) {
	String query = "UPDATE HOSTEL SET NO_OF_STUDENTS = " + s + " WHERE HOSTEL_ID = " + empid; 
	int rs = st.executeUpdate(query);
	if (rs != 0) {
		out.println("<h2>THE NO OF STUDENTS IN HOSTEL WITH ID : " + empid + " IS UPDATED !!"); 
	} else {
		out.println("<h2>SOME ERROR OCCURED DURING THE UPDATE !! </h2>");
	}
}
%>
<tr>
 	<td></td>
  <td> <input type="submit" placeholder="Update" class='btn btn-success'></input> <input type="reset" placeholder="Reset" class='btn btn-info'></input></td>
 </tr>
 </table>
 </form>
 </div>
</body>
</html>