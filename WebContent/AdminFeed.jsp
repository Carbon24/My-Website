<%@page import="com.mvc.bean.RegisterBean"%>
<jsp:include page="./partials/header_admin.jsp" />
<body>

<%
	RegisterBean loggedIn = (RegisterBean)request.getServletContext().getAttribute("USER_LOGGED_IN"); 
%>

<div class= "container  w3-animate-zoom">
<h1 align="center"><strong>Welcome, ADMIN</strong></h1>
<table class="table table-hover">
    <tbody>
      <tr>
        <td><h3>CLICK HERE TO UPDATE FEES DETAILS</h3></td>
        <td><a class="btn btn-info" href="fee1.jsp">Click Here</a></td>
      </tr>
      <tr>
        <td><h3>CLICK HERE TO UPDATE THE ROOM STATUS</h3></td>
        <td><a class="btn btn-success" href="rooms.jsp">Click Here</a></td>
      </tr>
      <tr>
        <td><h3>MESS RELATED INFORMATION UPDATE</h3></td>
        <td><a class="btn btn-secondary" href="mess1.jsp">Click Here</a></td>
      </tr>
      <tr>
        <td><h3>STAFF RELATED INFORMATION UPDATE</h3></td>
        <td><a class="btn btn-primary" href="staff.jsp">Click Here</a></td>
      </tr>
      <tr>
        <td><h3>CLICK HERE TO CHECK STUDENT LIST</h3></td>
        <td><a class="btn btn-info" href="StudentList.jsp">Click Here</a></td>
      </tr>
     
    </tbody>
  </table>
</div>
</body>
</html>