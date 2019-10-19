<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<jsp:include page="./partials/header_admin.jsp" />
<body>
<DIV class="container">
<h1 align="center"><strong>Hostel Details for addition</strong></h1>
<form name="form" onsubmit="return validate()">
<table align="center" class="table">
 <tr>
	 <td><h4>Hostel ID</h4></td>
	 <td><input type="text" name="hostelid" /></td>
 </tr>
 <tr>
	 <td><h4>No of Rooms</h4></td>
	 <td><input type="text" name="roomid" /></td>
 </tr>
 <tr>
	 <td><h4>Number of Students</h4></td>
	 <td><input type="text" name="noofstu" /></td>
 </tr>
 <tr>
	 <td><h4>Location</h4></td>
	 <td><input type="text" name="loc" /></td>
 </tr>
 <tr>
 <td><%=(request.getAttribute("errMessage") == null) ? ""
 : request.getAttribute("errMessage")%></td>
 </tr>
 <tr>
 <td></td>
 <td><input name="hos_upd" type="submit" value="Add" class="btn btn-success"></input> <input class="btn btn-warning" type="reset" value="Reset"></input></td>
 </tr>
</table>
</form>
</DIV>
</body>
<script> 
function validate()
{ 
 var hostelid = document.form.hostelid.value;
 var roomid=document.form.roomid.value;
 var loc = document.form.loc.value;
 var noofstu= document.form.noofstu.value;
 
 if (hostelid==null || hostelid=="")
 { 
 alert("Hostel ID can't be blank"); 
 return false; 
 }
 else if (roomid==null || roomid=="")
 { 
 alert("Room ID can't be blank"); 
 return false; 
 }
 else if (loc==null || loc=="")
 { 
 alert("Location can't be blank"); 
 return false; 
 }
 else if (noofstu==null || noofstu=="")
 { 
 alert("Number of students can't be blank"); 
 return false; 
 }
} 
</script> 
<%
if (request.getParameter("hos_upd") != null) {
String hid = request.getParameter("hostelid"); 
String roomid = request.getParameter("roomid"); 
String loc = request.getParameter("loc"); 
String noofstu = request.getParameter("noofstu");
Class.forName("com.mysql.jdbc.Driver");
Connection con=(Connection)DriverManager.getConnection(
    "jdbc:mysql://localhost:3306/hostel1","root","iamkeer24");
Statement st=con.createStatement();
	String query = "INSERT INTO HOSTEL VALUES("+hid+"," +roomid+"," +noofstu+",'"+loc+"')" ; 
	int rs = st.executeUpdate(query);
	if (rs != 0) {
		out.println("<h2>THE HOSTEL WITH ID : " + hid + " IS ADDED SUCCESSFULLY !!"); 
	} else {
		out.println("<h2>SOME ERROR OCCURED DURING THE ADDING !! </h2>");
	}
}

%>
</html>