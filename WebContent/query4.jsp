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
<title>ASAP Query 4</title>
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

		
		//String q="Create view color1 as (Select count(color)as numb ,color as col from Booking_Details,Car_type,User1 where Booking_Details.Car_ID=Car_type.Car_Id and User1.SSN=Booking_Details.Cust_ID and User1.Gender='"+b+"' group by color)";
		
		String sql1="select count(*) from user1";
		String sql2="select count(*) from customer";
		String sql3="select count(*) from employee";
		String sql4="select count(*) from admin";
		String sql5="select count(*) from car_type";
		String sql6="select count(*) from car_details";
		String sql7="select count(*) from booking_details";
		String sql8="select count(*) from billing_details";
		String sql9="select count(*) from account";
		String sql10="select count(*) from payment_details";

		Statement stmtt=con.createStatement();
		ResultSet rs1=stmtt.executeQuery(sql1);
		Statement stmttt=con.createStatement();
		ResultSet rs2=stmttt.executeQuery(sql2);
		Statement stmtttt=con.createStatement();
		ResultSet rs3=stmtttt.executeQuery(sql3);
		Statement stmttttt=con.createStatement();
		ResultSet rs4=stmttttt.executeQuery(sql4);
		Statement stmtttttt=con.createStatement();
		ResultSet rs5=stmtttttt.executeQuery(sql5);
		Statement sstmtt=con.createStatement();
		ResultSet rs6=sstmtt.executeQuery(sql6);
		Statement ssstmtttt=con.createStatement();
		ResultSet rs7=ssstmtttt.executeQuery(sql7);
		Statement sstmttt=con.createStatement();
		ResultSet rs8=sstmttt.executeQuery(sql8);
		Statement sttmtttt=con.createStatement();
		ResultSet rs9=sttmtttt.executeQuery(sql9);
		Statement sstmtttt=con.createStatement();
		ResultSet rs10=sstmtttt.executeQuery(sql10);
		int i=0;
	
	%>
	<div class="row">
	<table class="table table-striped">
	<tr>
	
		<td>
		<b>Table Name</b>
		</td>
		
		<td>
		<b>No Of Tuples</b>
		</td>
		</tr>

  	
  	<%
  	while(rs1.next())
  	{
  		%>
  		<tr>
  		<td>
		User
		</td>
		
		<td>
		<% i=i+rs1.getInt(1);
		out.println(rs1.getInt(1));%>
		</td>
		</tr>

  	
  	<%
  	}
  	while(rs2.next())
  	{
  		%>
  		<tr>
  		<td>
		Customer
		</td>
		
		<td>
		<% i=i+rs2.getInt(1);
		out.println(rs2.getInt(1));%>
		</td>
		</tr>

  	
  	<%
  	}
  	while(rs3.next())
  	{
  		%>
  		<tr>
  		<td>
		Employee
		</td>
		
		<td>
		<% i=i+rs3.getInt(1);
		out.println(rs3.getInt(1));%>
		</td>

  	
  	<%
  	}
  	while(rs4.next())
  	{
  		%>
  		<tr>
  		<td>
		Admin
		</td>
		
		<td>
		<% i=i+rs4.getInt(1);
		out.println(rs4.getInt(1));%>
		</td>

  	
  	<%
  	}
  	while(rs5.next())
  	{
  		%>
  		<tr>
  		<td>
		Car Type
		</td>
		
		<td>
		<% i=i+rs5.getInt(1);
		out.println(rs5.getInt(1));%>
		</td>

  	
  	<%
  	}
  	while(rs6.next())
  	{
  		%>
  		<tr>
  		<td>
		Car Details
		</td>
		
		<td>
		<% i=i+rs6.getInt(1);
		out.println(rs6.getInt(1));%>
		</td>

  	
  	<%
  	}
  	while(rs7.next())
  	{
  		%>
  		<tr>
  		<td>
		Booking Details
		</td>
		
		<td>
		<% i=i+rs7.getInt(1);
		out.println(rs7.getInt(1));%>
		</td>

  	
  	<%
  	}
  	while(rs8.next())
  	{
  		%>
  		<tr>
  		<td>
		Billing Details
		</td>
		
		<td>
		<% i=i+rs8.getInt(1);
		out.println(rs8.getInt(1));%>
		</td>

  	
  	<%
  	}
  	while(rs9.next())
  	{
  		%>
  		<tr>
  		<td>
		Account
		</td>
		
		<td>
		<% i=i+rs9.getInt(1);
		out.println(rs9.getInt(1));%>
		</td>

  	
  	<%
  	}
  	while(rs10.next())
  	{
  		%>
  		<tr>
  		<td>
		Payment Details
		</td>
		
		<td>
		<% i=i+rs10.getInt(1);
		out.println(rs10.getInt(1));%>
		</td>

  	
  	<%
  	}
  	
  	
  	con.close();
	%>
	<tr>
	
		<td>
		<b>Total No. Of tuples</b>
		</td>
		
		<td>
		<b><%out.println(i); %></b>
		</td>
		</tr>
	</table>
	</div>
	<a class="btn btn-default" href="admin.jsp" role="button">Go back</a>
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

