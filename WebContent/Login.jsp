<jsp:include page="./partials/header.jsp" />
<body>
<hr>
<div class="container w3-animate-zoom" align="center">
	<form name="form" action="LoginServlet" method="post" onsubmit="return validate();" >
<!-- Do not use table to format fields. As a good practice use CSS -->

<hr>
<div class="container">
	<div class="row">
		<div class="col-md-7 col-sm-12">
		<h1 align="center"><strong>USER LOGIN</strong></h1>
		<table>
 <tr>
 <span style="color:red"><%=(request.getAttribute("LOGGED_OUT") == null) ?"" : request.getAttribute("errMessage")%></span>
 <td><h3>STUDENT ID </h3> </td>
 <td><input type="text" name="regid" size="30" id = "regid" class="txt"/></td>
 </tr>
 <tr>
 <td><h3>PASSWORD </h3></td>
 <td><input type="password" name="password" size="30" id = "password" class="txt"/></td>
 </tr>
 <tr>
 <td><span style="color:red"><%=(request.getAttribute("errMessage") == null) ? "" : request.getAttribute("errMessage") %></span></td>
 </tr>
 <tr>
 <td><span style="color:red"><%=(request.getAttribute("LOGGED_OUT_MESSAGE") == null) ? "" : "LOGGED OUT SUCCESSFULLY !!" %>
 </span></td>
 </tr>
 <tr>
 <td><input type="submit" placeholder="Login" class='btn btn-success'></input>
  <input type="reset" placeholder="Reset" class='btn btn-info'></input>
  </td>
 </tr>
</table>
		</div>
		<div class="col-md-5 col-sm-12">
		
			<img alt="image" class="img-fluid" src="images/student.jpg" height="50%">
		</div>
	</div>
</div>
<hr>
  <p class="message">Not registered? <a href="Register.jsp">Create an account</a></p>
 </form>
   <a href="main.jsp"> Go Back </a>
</div>

</body>
<script>
	function validate() {
		var regid = document.getElementById('regid').value; 
		var password = document.getElementById('password').value;
		if (regid == "") {
			alert("REGISTRATION ID CANNOT BE EMPTY !!"); 
			return false; 
		} else if (password == "") {
			alert("THE PASSWORD CANNOT BE EMPTY !!");
			return false; 
		} else {
			return true; 
		}
	}
</script>
</html>