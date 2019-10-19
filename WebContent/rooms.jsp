<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<jsp:include page="./partials/header_admin.jsp" />
<body>

<div class="container w3-animate-zoom">
<h1 align="center"> Rooms UPDATE</h1>
<table class="table table-hover">
    <thead>
      <tr>
        <th>TASK</th>
        <th>#</th>
      </tr>
    </thead>
    <tbody>
    <tr>
        <td>CLICK HERE TO ADD NEW ROOMS</td>
        <td><a class="btn btn-success" href="AddRooms.jsp">Add Rooms</a></td>
      </tr>
      <tr>
        <td>CLICK HERE TO CHECK ROOM STATUS</td>
        <td><a class="btn btn-info" href="EmptyRoom.jsp">Show Empty Rooms</a></td>
      </tr>
      <tr>
        <td>CLICK HERE TO REMOVE STUDENT FROM ROOM</td>
        <td><a class="btn btn-danger" href="DeleteStu.jsp">Remove Student</a></td>
      </tr>
    </tbody>
  </table>
</div>

</body>
</html>