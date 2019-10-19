<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<jsp:include page="./partials/header_admin.jsp" />
<body>
<div class="container">
<h2 align="center">LIST OF STUDENTS IN HOSTEL </h2>

<%
Class.forName("com.mysql.jdbc.Driver");
Connection con=(Connection)DriverManager.getConnection(
    "jdbc:mysql://localhost:3306/hostel1","root","iamkeer24");
Statement st=con.createStatement();
ResultSet rs=st.executeQuery("select student_id,stu_name,father_name,dept,dob,cell_no,room_id from student");


%>

	<table class="table">
    <thead>
      <tr>
        <th>STUDENT ID</th>
        <th>STUDENT NAME</th>
        <th>FATHER NAME</th>
        <th>DEPARTMENT</th>
        <th>DOB</th>
        <th>CONTACT NO</th>
        <th>ROOM_ID</th>
      </tr>
    </thead>
    <tbody>
    <%
    while (rs.next()) {
    %>
      <tr>
      	<td><%= rs.getString(1) %> </td>
      	<td><%= rs.getString(2) %> </td>
      	<td><%= rs.getString(3) %> </td>
      	<td><%= rs.getString(4) %> </td>
      	<td><%= rs.getString(5) %> </td>
      	<td><%= rs.getLong(6) %> </td>
      	<td><%= rs.getInt(7) %> </td>
      </tr>
    </tbody>  
<%
}
%>
</table>
</div>
</body>
</html>