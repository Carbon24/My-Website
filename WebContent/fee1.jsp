
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<jsp:include page="./partials/header_admin.jsp" />
<body>

<div class="container w3-animate-zoom">
	<h1 align="center">FEES UPDATE</h1>
	<table class="table table-bordered">
		<thead>
			<tr>
				<td><h3>DETAILS ABOUT THE FEES PAID</h3></td>
				<td><a class="btn btn-success" width="100%" href="fee.jsp">FEE PAID</a></td>
			</tr>
		</thead>
		<tbody>
			<tr>
			<td><h3>DETAILS ABOUT THE FEES NOT PAID</h3></td>
			<td><a class="btn btn-info" href="nfee.jsp">FEE NOT PAID</a></td>
			</tr>
			<tr>
				<td><h3>CLICK HERE TO UPDATE THE FEES DETAILS</h3></td>
				<td><a class="btn btn-warning" href="updfee.jsp">UPDATE </a></td>
			</tr>
		</tbody>
	</table>
</div>
</body>
</html>