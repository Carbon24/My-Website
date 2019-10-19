<html>
<jsp:include page="./partials/header_admin.jsp" />
<body>

<div class="container w3-animate-zoom">
	<h1 align="center">STAFF UPDATE</h1>
	<table class="table table-bordered">
		<thead>
			<tr>
				<td><h3>REGISTRATION OF STAFF</h3></td>
				<td><a class="btn btn-success" width="100%" href="StaffRegister.jsp">Staff Registration</a></td>
			</tr>
		</thead>
		<tbody>
			<tr>
			<td><h3>DETAILS ABOUT EXISTING STAFFS</h3></td>
			<td><a class="btn btn-info" href="VeiwStaff.jsp">Current staffs</</a></td>
			</tr>
			<tr>
				<td><h3>CLICK HERE TO UPDATE THE SALARY OF STAFF</h3></td>
				<td><a class="btn btn-warning" href="UpdateStaff.jsp">Update Salary</a></td>
			</tr>
			<tr>
				<td><h3>CLICK HERE TO DELETE STAFF</h3></td>
				<td><a class="btn btn-warning" href="DeleteStaff.jsp">Delete Staff</a></td>
			</tr>
		</tbody>
	</table>
</div>
</body>
</html>
