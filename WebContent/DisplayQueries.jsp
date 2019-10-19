<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<jsp:include page="./partials/header_admin.jsp" />

<div class="container  w3-animate-zoom">
<table class="table table-hover w3-animate-zoom">
	<h1 align="center">Queries by the USERS</h1>
    <thead>
      <tr>
        <th><h3>EMAIL</h3></th>
        <th><h3>QUERIES</h3></th>
      </tr>
    </thead>
    <tbody>	
   <%

		Class.forName("com.mysql.jdbc.Driver");
		Connection con=(Connection)DriverManager.getConnection(
		    "jdbc:mysql://localhost:3306/hostel1","root","iamkeer24");
		Statement st=con.createStatement();
		ResultSet rs=st.executeQuery("select * from QUERIES ORDER BY EMAIL");
		while (rs.next()) {
   %>
      <tr>
      	<td><%= rs.getString(1) %></td>
      	<td><%= rs.getString(2) %></td>
      </tr>

<% } %>
    </tbody>
  </table>
</div>
