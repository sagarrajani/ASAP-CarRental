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
<title>ASAP Query 9</title>
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

	Class.forName("oracle.jdbc.driver.OracleDriver");
	Connection con=DriverManager.getConnection("jdbc:oracle:thin:hr/hr@oracle.cise.ufl.edu:1521:orcl",
            "srajani", "S35969932r$"); 

		
		String sql2="select count(cust_id) from booking_details,user1 where booking_details.CUST_ID=user1.SSN and (sysdate-user1.DOOB)>=22*365";		
		String sql1="select count(cust_id) from booking_details,user1 where booking_details.CUST_ID=user1.SSN and (sysdate-user1.DOOB)<22*365";
		Statement stmt=con.createStatement();
		Statement stmtt=con.createStatement();
		ResultSet rs=stmt.executeQuery(sql2);
		ResultSet rs1=stmtt.executeQuery(sql1);

	
	%>
	<div class="row">
	<table class="table table-striped">
	<tr>
	
		<td>
		No of users with age less than 22
		</td>
		<td>
		No of users with age greater than 22
		</td>
	

  	</tr>
  	<%
  	while(rs1.next())
  	{
  		%>
  		<tr>
  		
		<td>
		<%out.println(rs1.getInt(1));%>
		</td>
		
		
  	<%
  	}
  	while(rs.next())
  	{
  	%>
  	<td>
	<%out.println(rs.getInt(1));%>
	</td>


	</tr>
	</table>
  	<% 
  	}
	
  	con.close();
	%>
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

