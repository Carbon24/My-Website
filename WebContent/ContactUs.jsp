<%@page import="com.mvc.bean.RegisterBean"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<jsp:include page="./partials/header.jsp" />	
<body>
<%
	if (request.getParameter("submit_query") != null) {
		Class.forName("com.mysql.jdbc.Driver");
		Connection con=(Connection)DriverManager.getConnection(
		    "jdbc:mysql://localhost:3306/hostel1","root","iamkeer24");
		Statement st=con.createStatement();
		String email = request.getParameter("user_email"); 
		String query = request.getParameter("user_query"); 
%>
  <div class="container w3-animate-zoom">
  		<% if (st.execute("INSERT INTO QUERIES (EMAIL, QUERY) VALUES ( '" + email + "', '" + query + "')")) { %>
			  <div class="alert alert-danger alert-dismissible">
    <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
    <strong>Danger!</strong> This alert box could indicate a dangerous or potentially negative action.
  </div>
		<% } else { %>
			  <div class="alert alert-success alert-dismissible">
    <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
    <strong>Danger!</strong> This alert box could indicate a dangerous or potentially negative action.
  </div>
		<% }} %>
    <div class="row text-center justify-content-center pt-5">
      <div class="col-12 col-md-7">
        <h1>Contact Us</h1>
      </div>
    </div>
    <div class="row justify-content-center pt-4">
      <div class="col-12 col-md-7">
        <form>
          <div class="row">
            <div class="col">
              <input type="text" class="form-control" name="user_email" value="<% 
              	RegisterBean user = (RegisterBean)request.getServletContext().getAttribute("USER_LOGGED_IN");
	              if (user != null) {
	            	  out.print(user.getRegid());
	              }
              %>" placeholder="Student ID or Email">
            </div>
          </div>

          <div class="row mt-4">
            <div class="col">
              <textarea class="form-control"  rows="3" name="user_query" placeholder="How can we help?"></textarea>
            </div>
          </div>
          <div class="row mt-4">
            <div class="col text-center">
              <button type="submit" name="submit_query" class="btn btn-primary">Submit</button>
            </div>
          </div>
        </form>
      </div>
    </div>
    <div class="row-100"></div>
  </div>
  <hr>
    <div class="container-fluid p-0 pb-3">
    <iframe class="map" src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3887.795832169991!2d77.58604961482212!3d12.984906590847153!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3bae160d1b52f495%3A0x3849d08b1193a39d!2sPalace+Rd%2C+Bengaluru%2C+Karnataka!5e0!3m2!1sen!2sin!4v1558438928194!5m2!1sen!2sin" width="100%" height="300" frameborder="0" style="border:0" allowfullscreen=""></iframe>
  </div>
  <div class="bg-dark">
    <div class="container">
      <div class="row-50"></div>
      <div class="row justify-content-center text-center">
        <div class="col-12 col-md mr-auto ml-auto">
          <img alt="image" height="40" class="mb-2" src="https://cdn.jsdelivr.net/gh/froala/design-blocks@2.0.1/dist/imgs//icons/phone.svg">
          <p class="lead">+080 984 123 752</p>
        </div>

        <div class="col-12 col-md pt-4 pt-md-0 mr-auto ml-auto">
          <img alt="image" height="40" class="mb-2" src="https://cdn.jsdelivr.net/gh/froala/design-blocks@2.0.1/dist/imgs//icons/navigation.svg">
          <p class="lead">123 6th St.<br>PALACE ROAD, AMBEDKAR BEEDI</p>
        </div>
        <div class="col-12 col-md pt-4 pt-md-0 mr-auto ml-auto">
          <img alt="image" height="40" class="mb-2" src="https://cdn.jsdelivr.net/gh/froala/design-blocks@2.0.1/dist/imgs//icons/mail.svg">
          <p class="lead">support@website.com</p>
        </div>
      </div>S
      <div class="row-50"></div>
    </div>
  </div>
</section>
<style>
.alert-dismissable,.alert-dismissible{padding-right:35px}.alert-dismissable .close,.alert-dismissible .close{position:relative;top:-2px;right:-21px;color:inherit}
</style>
