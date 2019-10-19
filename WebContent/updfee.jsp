<jsp:include page="./partials/header_admin.jsp" />
<body>
<div class="container">
<h2>Fee application for Hostel </h2>
<form name="form" action="FeeServlet" method="post" onsubmit="return validate()">
<table align="center">
 <tr>
 <td>Registration ID</td>
 <td><input type="text" name="regid" /></td>
 </tr>
 <tr>
 
 <tr>
 <td>FEE-Year</td>
 <td><input type="text" name="year" /></td>
 </tr>
 <tr>
 <td>
 <div>
 <span>FEE-STATUS :</span>
 <label>PAID<input type="radio" name="fee_status" value="PAID"> </label>
 <label>NOT-PAID<input type="radio" name="fee_status" value="NOT-PAID"></label>
 </div>
 </td>
 </tr>
 <tr>
 <td><%=(request.getAttribute("errMessage") == null) ? ""
 : request.getAttribute("errMessage")%></td>
 </tr>
 <tr>
 <td><%=(request.getAttribute("SUCCESS_MESSAGE") == null) ? ""
 : request.getAttribute("SUCCESS_MESSAGE")%></td>
 </tr>
 <tr>
 <td></td>
 <td><input type="submit" value="Update"></input><input
 type="reset" value="Reset"></input></td>
 </tr>
</table>
</form>
</div> 
</body>
<script> 
function validate()
{ 
 var fullname = document.form.fullname.value;
 var regid=document.form.regid.value;
 var year = document.form.year.value;
 var status= document.form.status.value;
 
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
 else if (year==null || year=="")
 { 
 alert("FEE YEAR can't be blank"); 
 return false; 
 }
 } 
</script> 
</html>