<jsp:include page="./partials/header.jsp" />
<script> 
function validate()
{ 
 var regid = document.getElementById('regid').value; 
 var password = document.getElementById('password').value; 
 if (regid==null || regid=="")
 { 
	 alert("Student_ID cannot be blank"); 
	 return false; 
 }
 else if (password==null || password=="")
 { 
	 alert("Password cannot be blank"); 
	 return false; 
 }
}
</script>
<body>
<hr>
<div class="container w3-animate-zoom" align="center">
	<div class="row">
		<div class="col-md-7 col-sm-12">
			 <form name="form" action="AdminServlet" method="POST" onsubmit="return validate();">
			<!-- Do not use table to format fields. As a good practice use CSS -->
			<h1 align="center" class="w3-animate-top"><strong>ADMIN LOGIN</strong></h1>
			<table>
			 <tr>
			 <td><h3>USERNAME</h3></td>
			 <td><input type="text" name="username" size="30" class="txt"/></td>
			 </tr>
			 <tr>
			 <td><h3>PASSWORD</h3></td>
			 <td><input type="password" name="password" size="30" class="txt"/></td>
			 </tr>
			 <tr>
			 <td><h3 style="color:red"><%=(request.getAttribute("errMessage") == null) ? "" : "INVALID USER CREDENTIALS" %></h3></td>
			 </tr>
			  <tr>
			 <td><span style="color : green;"><%
				if (request.getServletContext().getAttribute("LOGGED_OUT_MESSAGE") != null) {
					%>
						<h3 style="color: green;">SUCCESSFULLY LOGGED OUT !! </h3>
					<%
				} request.getServletContext().setAttribute("LOGGED_OUT_MESSAGE", null);
			%></span></td>
			 </tr>
			 <tr>
			 <td><input type="submit" placeholder="Login" class='btn btn-success'></input>
			  <input type="reset" placeholder="Reset" class='btn btn-info'></input>
			  </td>
			 </tr>
			</table>
			 </form>
		</div>
		<div class="col-md-5 col-sm-12">
			<img alt="image" class="img-fluid" src="images/admin.png" height="300px" width="300px">
		</div>
	</div>
	<HR>
</div>
</body>
</html>