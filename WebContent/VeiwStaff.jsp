<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<jsp:include page="./partials/header_admin.jsp" />

<body>

<%
Class.forName("com.mysql.jdbc.Driver");
Connection con=(Connection)DriverManager.getConnection(
    "jdbc:mysql://localhost:3306/hostel1","root","iamkeer24");
Statement st=con.createStatement();
ResultSet rs=st.executeQuery("select emp_id,emp_name,emp_cellno,emp_salary,designation,emp_address from staff");


%>

<div class="container  w3-animate-zoom">
	<h1 align="center">Employee Details</h1>

		<table class="table">
    <thead>
      <tr>
        <th>EMPLOYEE-ID</th>
        <th>NAME</th>
        <th>PHONE</th>
        <th>SALARY</th>
        <th>DESIGNATION</th>
        <th>ADDRESS</th>
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
      	<td><%= rs.getInt(4) %> </td>
      	<td><%= rs.getString(5) %> </td>
      	<td><%= rs.getString(6) %> </td>
      </tr>
    </tbody>  
<%
}
%>
</table>
  </div>


</body>
</html>