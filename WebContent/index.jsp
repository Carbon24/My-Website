<%@page import="java.sql.ResultSet"%>
<%@page import="com.mysql.cj.xdevapi.Result"%>
<%@page import="java.sql.Statement"%>
<%@page import="com.mvc.util.DBConnection"%>
<%@page import="java.sql.Connection"%>
<%@page import="com.mvc.bean.RegisterBean"%>
<jsp:include page="./partials/header_when_login.jsp" />

<%  if (request.getServletContext().getAttribute("USER_LOGGED_IN") != null) { 
	RegisterBean userLoggedIn = (RegisterBean)getServletContext().getAttribute("USER_LOGGED_IN"); 
%>
<div class="container w3-animate-zoom">
		<h2 align="center"><strong>STUDENT PERSONAL DETAILS</strong></h2>
	  <table class="table table-bordered">
	    <tbody>
	      <tr>
	        <td><strong>STUDENT ID</strong></td>
	        <td><%= userLoggedIn.getRegid() %></td>
	      </tr>
			<tr>
	        <td><strong>STUDENT NAME</strong></td>
	        <td><%= userLoggedIn.getFullName() %></td>
	      </tr>
	      <tr>
	        <td><strong>FATHER NAME</strong></td>
	        <td><%= userLoggedIn.getFatherName() %></td>
	      </tr>
	      <tr>
	        <td><strong>DATE OF BIRTH</strong></td>
	        <td><%= userLoggedIn.getDob() %></td>
	      </tr>
	      <tr>
	        <td><strong>DEPARTMENT</strong></td>
	        <td><%= userLoggedIn.getDept() %></td>
	      </tr>
	      <tr>
	        <td><strong>PHONE NUMBER</strong></td>
	        <td><%= userLoggedIn.getCellno() %></td>
	      </tr>
	    </tbody>
 	 </table>
 	 </table>
 	 <hr/>
 	 
 	  <h2 align="center"><strong>HOSTEL FEE DETAILS</strong></h2>
 	 <table class="table table-bordered">
	    <tbody>
 	 <%
 	    Connection connection = DBConnection.createConnection(); 
	 	Statement statement = connection.createStatement(); 
 	    String sql = "SELECT FEE_YEAR, FEE_STATUS FROM FEE WHERE STUDENT_ID = '" + userLoggedIn.getRegid() + "'"; 
 	    ResultSet resultSet = statement.executeQuery(sql); %>
		<tr>
			<th>YEAR</th>
			<th>FEE STATUS</th>
		</tr>
	<%
 	 	while (resultSet.next()) {
 	 %>
	      <tr>
	        <td><%= resultSet.getString(1) %></td>
	        <td style="color: <% String status = resultSet.getString(2); 
	        	String color = "";
	        	if (status.equalsIgnoreCase("PAID")) {
	        		color = "green"; 
	        	} else {
	        		color = "red";
	        	}
	        %> <%= color %>"
	        ><%= status %></td>
	      </tr>
	  <% } %>
 	 </table>
 	 <hr/>
 	 
 	 <h2 align="center"><strong>STUDENT QUERIES</strong></h2>
 	 <table class="table table-bordered">
	    <tbody>
 	 <%
 	 	sql = "SELECT * FROM QUERIES WHERE EMAIL = '" + userLoggedIn.getRegid() + "'"; 
 	 	resultSet = statement.executeQuery(sql);
 	 	while (resultSet.next()) {
 	 %>
	      <tr>
	        <td><%= resultSet.getString(2) %></td>
	      </tr>
	  <% } %>
 	 
</div>
<% } else { %>
	<div class="container">
		<h1>GO LOGIN FIRST !!</h1>
		<a class="btn btn-danger" href="Login.jsp">CLICK HERE TO LOGIN</a>
		<a class="btn btn-danger" href="Register.jsp">CLICK HERE TO REGISTER</a>
	</div>
<% }  %>	
