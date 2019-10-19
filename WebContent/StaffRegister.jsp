<jsp:include page="./partials/header_admin.jsp" />
<script> 
function validate()
{ 
 var fullname = document.form.fullname.value;
 var empid=document.form.empid.value;
 var cellno = document.form.cellno.value;
 var designation=document.form.designation.value;
 var address=document.form.address.value;
 var hostelid = document.form.hostelid.value; 
 var empsal = document.form.empsal.value;

 if (fullname==null || fullname=="")
 { 
 alert("Employee Name can't be blank"); 
 return false; 
 }
 else if (empid==null || empid=="")
 { 
 alert("Employee ID can't be blank"); 
 return false; 
 }
 else if (cellno==null || cellno=="")
 { 
 alert("Contact no. can't be blank"); 
 return false; 
 }
 else if (designation==null || designation=="")
 { 
 alert("Designation can't be blank"); 
 return false; 
 }
 else if (address==null || address=="")
 { 
 alert("Address can't be blank"); 
 return false; 
 }
// else if (hostelid==null || hostelid=="")
// { 
// alert("Hostel ID can't be blank"); 
// return false; 
// }
 } 
</script> 
<body>
<h2 align="center">Staff Registration for Hostel </h2>
<form name="form" action="StaffServlet" method="post" onsubmit="return validate()">
<table align="center">
 <tr>
 <td>Full Name</td>
 <td><input type="text" name="fullname" /></td>
 </tr>
 <tr>
 <td>Employee ID</td>
 <td><input type="text" name="empid" /></td>
 </tr>
 <tr>
 <td>Contact No</td>
 <td><input type="text" name="cellno" /></td>
 </tr>
 <tr>
 <td>Designation</td>
 <td><input type="text" name="designation" /></td>
 </tr>
 <tr>
 <td>Employee Salary</td>
 <td><input type="text" name="empsal" /></td>
 </tr>
 <tr>
 <td>Address</td>
 <td><input type="text" name="address" /></td>
 </tr>
 <!-- <tr>
 <td>Hostel ID</td>
 <td><input type="text" name="hostelid" /></td>
 </tr> -->
 <td><%=(request.getAttribute("errMessage") == null) ? ""
 : request.getAttribute("errMessage")%></td>
 
  <td><%=(request.getAttribute("SUCCESS_MESSAGE") == null) ? ""
 : request.getAttribute("SUCCESS_MESSAGE")%></td>
 </tr>
 <tr>
 <td></td>
 <td><input type="submit" value="Register"></input> <input
 type="reset" value="Reset"></input></td>
 </tr>
</table>
</form>
 
</body>
</html>