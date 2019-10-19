<jsp:include page="./partials/header_admin.jsp" />
<body>
<DIV class="container">
<h2>Room Details for addition </h2>
<form name="form" action="RoomServlet" method="post" onsubmit="return validate()">
<table align="center" class="table">
 <tr>
 <td>Room ID</td>
 <td><input type="text" name="roomid" /></td>
 </tr>
 <tr>
 <td>Capacity</td>
 <td><input type="text" name="capacity" /></td>
 </tr>
 <tr>
 <td>Number of Students</td>
 <td><input type="text" name="noofstu" /></td>
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
 <td><input type="submit" value="Add"></input>  <input
 type="reset" value="Reset"></input></td>
 </tr>
</table>
</form>
</DIV>
 
</body>
<script> 
function validate()
{ 
 var hostelid = document.form.hostelid.value;
 var roomid=document.form.roomid.value;
 var capacity = document.form.capacity.value;
 var noofstu= document.form.noofstu.value;
 
 if (hostelid==null || hostelid=="")
 { 
 alert("Hostel ID can't be blank"); 
 return false; 
 }
 else if (roomid==null || roomid=="")
 { 
 alert("Room ID can't be blank"); 
 return false; 
 }
 else if (capacity==null || capacity=="")
 { 
 alert("Capacity can't be blank"); 
 return false; 
 }
 else if (noofstu==null || noofstu=="")
 { 
 alert("Number of students can't be blank"); 
 return false; 
 }
} 
</script> 
</html>