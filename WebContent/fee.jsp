<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<jsp:include page="./partials/header_admin.jsp" />
<body>
<div class="container">
<h1 align="center">STUDENTS WHO HAVE PAID FEES </h1>

<%
Class.forName("com.mysql.jdbc.Driver");
Connection con=(Connection)DriverManager.getConnection(
    "jdbc:mysql://localhost:3306/hostel1","root","iamkeer24");
Statement st=con.createStatement();
ResultSet rs=st.executeQuery("select s.student_id,s.stu_name,fee_year from fee f,student s where fee_status='PAID' and f.student_id=s.student_id");


%>

	<table class="table">
    <thead>
      <tr>
        <th>STUDENT ID</th>
        <th>STUDENT NAME</th>
        <th>FEE-YEAR</th>
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