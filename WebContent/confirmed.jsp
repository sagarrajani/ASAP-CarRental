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
<title>ASAP Registration</title>
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
String cust_id=(String)session.getAttribute("cust_id");
String car_id=(String)session.getAttribute("car_id");
String fromdate=(String)session.getAttribute("fromdate");

	Class.forName("oracle.jdbc.driver.OracleDriver");
	Connection con=DriverManager.getConnection("jdbc:oracle:thin:hr/hr@oracle.cise.ufl.edu:1521:orcl",
            "srajani", "S35969932r$"); 
	String sql="select * from booking_details where car_id='"+car_id+"' and cust_id='"+cust_id+"' and from_date='"+fromdate+"'";
	String sql2="select * from car_type where car_id='"+car_id+"'";
	Statement stmt=con.createStatement();
	Statement st=con.createStatement();
	ResultSet rs=stmt.executeQuery(sql);
	ResultSet rs1=st.executeQuery(sql2);

	while(rs.next()&&rs1.next())
	{
		%>
		<p>
		<%
		out.println(session.getAttribute("name"));
		%>
		, Your car <%out.println(rs1.getString("car_name"));%> is booked for <%out.println(fromdate); %>.</p>
		<p>Your Booking Id is <%out.println(rs.getString("booking_id")); %></p>
		
		<p>click &nbsp;<a href="userhome.jsp">here</a>&nbsp;to go to user home page</p>
		
	
	

		
		<%
		
	}
	
	con.close();
	%>

	
</div>
</div>
</div>
<!--

-->

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

