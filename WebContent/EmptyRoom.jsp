<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<jsp:include page="./partials/header_admin.jsp" />
<body>
<h1 align="center">EMPTY ROOMS</h1>

<%
Class.forName("com.mysql.jdbc.Driver");
Connection con=(Connection)DriverManager.getConnection(
    "jdbc:mysql://localhost:3306/hostel1","root","iamkeer24");
Statement st = con.createStatement();
ResultSet rs=st.executeQuery("select * from room where no_of_students!=capacity");
%>
<div class="container w3-animate-zoom">
	<table class="table">
    <thead>
      <tr>
        <th>ROOM ID</th>
        <th>HOSTEL ID</th>
        <th>EMPTY SPACE</th>
      </tr>
    </thead>
    <tbody>
    <%
    while (rs.next()) {
    %>
      <tr>
      	<td><%= rs.getInt(1) %> </td>
      	<td><%= rs.getInt(2) %> </td>
      	<%int r= rs.getInt(4)-rs.getInt(3); %>
      	<td><%= r %></td>
      </tr>
    </tbody>  
<%
}
%>
</table>
</div>
</body>
</html>