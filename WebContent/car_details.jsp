<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewpoint" content="width=device-widht, initial-scale=1.0">
	<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="css/styles.css">
<title>ASAP Car Details</title>
</head>
<body>

<div class= "navbar navbar-inverse navbar-static-top" > 
	<div class="container"> 
	<a href="userhome.jsp" class="navbar-brand">ASAP Car Rentals</a>

	<button class = "navbar-toggle" data-toggle = "collapse" data-target= ".navHeaderCollapse" >
		<span class="icon-bar"></span>
		<span class="icon-bar"></span>
		<span class="icon-bar"></span>
	</button>

	<div class="collapse navbar-collapse navHeaderCollapse">

		<ul class="nav navbar-nav navbar-right">

		<!-- <li class="active"><a href="#">HomePage</a></li>-->
		<li><a href="myaccount.jsp">My Account</a></li>
		<li><a href="terms.jsp">Terms&Conditions</a></li>
		<li><a href="contact.jsp">Contact Us</a></li>
			

		</ul>

	</div>
	</div>
</div>


<div class="container" align="center">
<p align="right"><a class="btn btn-default"  href="signout.jsp" role="button">Sign Out</a></p>
<div class="jumbotron">  
<div class="row">
 

  	<%
  		
  	//System.out.println("hekksnc sd"+cust);
         String car_id=request.getParameter("carid");
		 System.out.println(car_id);
		 Class.forName("oracle.jdbc.driver.OracleDriver");
     	Connection con=DriverManager.getConnection("jdbc:oracle:thin:hr/hr@oracle.cise.ufl.edu:1521:orcl",
                 "srajani", "S35969932r$"); 
     	String sql="select * from car_details where car_id='"+car_id+"'";
     	Statement st=con.createStatement();
     	ResultSet rs=st.executeQuery(sql);
     	while(rs.next())
     	{
     %>
     	   <div class="col-xs-6 col-md-4">
     	     <img src="images/sonata.jpg" class="img-responsive">
     	    </div>
     	    <div class="col-xs-6 col-md-4">
     	    <b>MILEAGE</b>
     	    <br><br>
            <%out.println(rs.getString("MILEAGE")); %>
            <br>
     	     <br>
              <b>READING</b>
     	     <br>
     	     <br>
            <%out.println(rs.getString("READING")); %>
     	    </div>
  <%
     	
     	
     	}
         
         con.close();
     	 %>

</div>
  </div>
  </div>

<div class="navbar navbar-default navbar-fixed-bottom">
	<div class="container">
	<p class="navbar-text pull-left"> All Rights are reserved</p>
	<a  href = "http://www.facebook.com" class="navbar-btn btn-primary btn pull-right">follow us on facebook</a>
	</div>
</div>
	
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
<script src="js/bootstrap.js"></script>

</body>
</html>

