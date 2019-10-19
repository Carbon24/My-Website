<jsp:include page="./partials/header.jsp" />
<script> 
function checkCondition() {
	var cellno = document.getElementById('cellno');
	if (cellno.value.length > 10) {
		alert('The cell phone number cannot be more than 10 in length');
	}
}

function validate()
{ 
 var fullname = document.form.fullname.value;
 var regid=document.form.regid.value;
 var cellno = document.form.cellno.value;
 var fathername= document.form.fathername.value;
 var dept=document.form.dept.value;
 var dob=document.form.dob.value;
 var roomid = document.form.roomid.value; 
 var password = document.form.password.value;
 var conpassword= document.form.conpassword.value;
 
 if (fullname==null || fullname=="")
 { 
 alert("Student Name can't be blank"); 
 return false; 
 }
 else if (regid==null || regid=="")
 { 
 alert("Registration ID can't be blank"); 
 return false; 
 }
 else if (cellno==null || cellno=="")
 { 
 alert("Contact no. can't be blank"); 
 return false; 
 }
 else if (fathername==null || fathername=="")
 { 
 alert("Father Name can't be blank"); 
 return false; 
 }
 else if (dept==null || dept=="")
 { 
 alert("Department can't be blank"); 
 return false; 
 }
 else if (dob==null || dob=="")
 { 
 alert("Date of Birth can't be blank"); 
 return false; 
 }
 else if (roomid==null || roomid=="")
 { 
 alert("Room ID can't be blank"); 
 return false; 
 }
 else if(password.length<6)
 { 
 alert("Password must be at least 6 characters long."); 
 return false; 
 } 
 else if (password!=conpassword)
 { 
 alert("Confirm Password should match with the Password"); 
 return false; 
 } 
 } 
</script> 
<body>
<div class="container w3-animate-zoom">
<h2 align="center"><strong>Registration application for Hostel</strong></h2>
<hr>
<form name="form" action="RegisterServlet" method="post" onsubmit="return validate()">
<table align="center">
 <tr>
 <td><h4>Full Name</h4></td>
 <td><input type="text" name="fullname" /></td>
 </tr>
 <tr>
 <td><h4>Registration ID</h4></td>
 <td><input type="text" name="regid" /></td>
 </tr>
 <tr>
 <td><h4>Contact No</h4></td>
 <td><input type="text" name="cellno" id="cellno" onchange="checkCondition()"/></td>
 </tr>
 <tr>
 <td><h4>Department</h4></td>
 <td><input type="text" name="dept" /></td>
 </tr>
 <tr>
 <td><h4>Father Name</h4></td>
 <td><input type="text" name="fathername" /></td>
 </tr>
 <tr>
 <td><h4>Date of Birth</h4></td>
 <td><input type="date" name="dob" placeholder="yyyy-mm-dd"/></td>
 </tr>
 <tr>
 <td><h4>Year of Admission</h4></td>
 <td><input type="text" name="year" /></td>
 </tr>
 <tr>
 <td><h4>Room ID</h4></td>
 <td><input type="text" name="roomid" /></td>
 </tr>
 <tr>
 <td><h4>Password</h4></td>
 <td><input type="password" name="password" /></td>
 </tr>
 <tr>
 <td><h4>Confirm Password</h4></td>
 <td><input type="password" name="conpassword" /></td>
 </tr>
 <tr>
 <td><%=(request.getAttribute("errMessage") == null) ? ""
 : request.getAttribute("errMessage")%></td>
 </tr>
 <tr>
 <td><input type="submit" class="btn btn-success" value="Register"></input>
 <input type="reset" class="btn btn-info" value="Reset"></input></td>
 </tr>
</table>
</div>
</form>
</div>
 
</body>
</html>