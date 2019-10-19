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
ResultSet rs=st.executeQuery("select * from hostel");


%>

<div class="container  w3-animate-zoom">
	<h1 align="center">Hostel Details</h1>

		<table class="table">
    <thead>
      <tr>
        <th>HOSTEL-ID</th>
        <th>NO-OF-ROOMS</th>
        <th>NO-OF-STUDENTS</th>
     <th>LOCATION</th>
      </tr>
    </thead>
    <tbody>
    <%
    while (rs.next()) {
    %>
      <tr>
      	<td><%= rs.getInt(1) %> </td>
      	<td><%= rs.getInt(2) %> </td>
      	<td><%= rs.getInt(3) %> </td>
      	<td><%= rs.getString(4) %> </td>
      </tr>
    </tbody>  
<%
}
%>
</table>
	
</div>

</body>
</html>