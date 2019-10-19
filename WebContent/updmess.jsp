<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.*"%>
<jsp:include page="./partials/header_admin.jsp" />
<body>
<div class="container">
<h1 align="center">Update MESS</h1>
<form>
<table class="table table-bordered">
 <tr>
<td>Month-YEAR </td>
 <td><input type="date" name="year" size="30" class="txt"/></td>
 </tr>
 <tr>
 <td>Incharge-ID </td>
 <td><input type="text" name="incharge" size="30" class="txt"/></td>
 </tr>
 <tr>
 <td>Mess BILL</td>
 <td><input type="text" name="bill" size="30" class="txt"/></td>
 </tr>
 <tr>
 <td><input name="mess_upd" type="submit" value="Update"></input>   <input type="reset" value="Reset"></input></p></td>
 </tr>
</table>
</div>

<%
	if (request.getParameter("mess_upd") != null) {
		String mon_year = request.getParameter("year");
		String incharge = request.getParameter("incharge");
		String bill = request.getParameter("bill");
		Class.forName("com.mysql.jdbc.Driver");
		Connection con=(Connection)DriverManager.getConnection(
		    "jdbc:mysql://localhost:3306/hostel1","root","iamkeer24");
		Statement st=con.createStatement();
		int rs=st.executeUpdate("insert into mess values('" + mon_year + "','" + incharge + "'," + bill + ")");
		if(rs!=0) out.println("SUCCESSFULLY UPDATED");
		else out.println("ERRRRROORR");
	}
%>

</body>
</html>