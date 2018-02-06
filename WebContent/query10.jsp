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
	<a href="admin.jsp" class="navbar-brand">ASAP Car Rentals</a>

	<button class = "navbar-toggle" data-toggle = "collapse" data-target= ".navHeaderCollapse" >
		<span class="icon-bar"></span>
		<span class="icon-bar"></span>
		<span class="icon-bar"></span>
	</button>

	<div class="collapse navbar-collapse navHeaderCollapse">

		<ul class="nav navbar-nav navbar-right">

		<!-- <li class="active"><a href="#">HomePage</a></li>-->
		
		<li><a href="terms.jsp">Terms&Conditions</a></li>
		<li><a href="contact.jsp">Contact Us</a></li>
			

		</ul>

	</div>
	</div>
</div>


<div class="container" align="center">
<p align="right"><a class="btn btn-default"  href="signout.jsp" role="button">Sign Out</a></p>
<div class="jumbotron">

<% 
String year=request.getParameter("year");
	Class.forName("oracle.jdbc.driver.OracleDriver");
	Connection con=DriverManager.getConnection("jdbc:oracle:thin:hr/hr@oracle.cise.ufl.edu:1521:orcl",
            "srajani", "S35969932r$"); 

		//String sql="Create view month_year as(Select count(*)as numb,EXTRACT(month FROM Booking_date)as month, EXTRACT(year FROM Booking_date)as year from  Booking_Details GROUP BY EXTRACT(month FROM Booking_date), EXTRACT(year FROM Booking_date))";
				
		String sql1="Select count(*)as number_of_cars,EXTRACT(month FROM Booking_date)as month from  Booking_Details where EXTRACT(year FROM Booking_date)='"+year+"' GROUP BY EXTRACT(month FROM Booking_date) order by EXTRACT(month FROM Booking_date)";
		//Statement stmt=con.createStatement();
		Statement stmtt=con.createStatement();
		//stmt.executeUpdate(sql);
		ResultSet rs1=stmtt.executeQuery(sql1);

	
	%>
	<div class="row">
	<table class="table table-striped">
	<tr>
	
		<td>
		No of Cars
		</td>
		<td>
		Month
		</td>
	

  	</tr>
  	<%
  	while(rs1.next())
  	{
  		%>
  		<tr>
  		
		<td>
		<%out.println(rs1.getString("number_of_cars"));%>
		</td>
		
		<td>
		<%out.println(rs1.getString("month"));%>
		</td>
	

  
  	<%
  	}
  	
  
	
  	con.close();
	%>
		</tr>
  	</table>
	</div>
	<a class="btn btn-default" href="admin.jsp" role="button">Go Back</a>
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

