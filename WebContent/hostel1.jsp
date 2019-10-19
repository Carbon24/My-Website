
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<jsp:include page="./partials/header_admin.jsp" />
<body>

<div class="container w3-animate-zoom">
	<h1 align="center">HOSTEL UPDATE</h1>
	<table class="table table-hover">
		<thead>
			<tr>
				<td><h3>DETAILS ABOUT THE HOSTEL</h3></td>
				<td><a class="btn btn-success" width="100%" href="hostel.jsp">DISPLAY</a></td>
			</tr>
		</thead>
		<tbody>
			<tr>
			<td><h3>CLICK HERE TO ADD NEW HOSTEL</h3></td>
			<td><a class="btn btn-info" href="addhostel.jsp">ADD</a></td>
			</tr>
			<tr>
				<td><h3>CLICK HERE TO UPDATE HOSTEL DETAILS</h3></td>
				<td><a class="btn btn-warning" href="updhostel.jsp">UPDATE</a></td>
			</tr>
		</tbody>
	</table>
</div>
</body>
</html>