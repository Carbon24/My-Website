<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<jsp:include page="./partials/header_admin.jsp" />
<body>
<div class="container">
<h1 align="center"> MESS UPDATE</h1>
<table class="table table-bordered">
		<thead>
			<tr>
				<td><h3>UPDATE MESS BILL</h3></td>
				<td><a class="btn btn-success" width="100%" href="updmess.jsp">UPDATE</a></td>
			</tr>
		</thead>
		<tbody>
			<tr>
			<td><h3>DETAILS ABOUT THE MESS</h3></td>
			<td><a class="btn btn-info" href="mess.jsp">DISPLAY</a></td>
			</tr>
			
		</tbody>
	</table>
</div>
</body>
</html>