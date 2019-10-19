<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<jsp:include page="./partials/header_when_login.jsp" />
<body>

<%
Class.forName("com.mysql.jdbc.Driver");
Connection con=(Connection)DriverManager.getConnection(
    "jdbc:mysql://localhost:3306/hostel1","root","iamkeer24");
Statement st=con.createStatement();
ResultSet rs=st.executeQuery("select * from mess");

%>

<div class="container  w3-animate-zoom">
	<h1 align="center">Mess Details</h1>

		<table class="table">
    <thead>
      <tr>
        <th>MONTH-YEAR</th>
        <th>INCHARGE ID</th>
        <th>MESS-BILL</th>
      </tr>
    </thead>
    <tbody>
    <%
    while (rs.next()) {
    %>
      <tr>
      	<td><%= rs.getString(1) %> </td>
      	<td><%= rs.getString(2) %> </td>
      	<td><%= rs.getInt(3) %> </td>
      </tr>
    </tbody>  
<%
}
%>
</table>
	
</div>

</body>
</html>