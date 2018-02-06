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
<title>My Account</title>
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

		<li><a href="myaccount.jsp">My Account</a></li>
		<li><a href="#">Terms&Conditions</a></li>
		<li><a href="#">Contact Us</a></li>
			

		</ul>

	</div>
	</div>
</div>


<div class="container" >
<p align="left">Welcome <%out.println(session.getAttribute("name")); %></p>

<p align="right"><a class="btn btn-default"  href="signout.jsp" role="button">Sign Out</a></p>
<div class="jumbotron">  

  <div class="row">
    <div class="col-sm-6" align="center">
     <p>New Booking</p>
 	<form class="form-horizontal" method="post" action="book.jsp">
  <div class="form-group">
    <label for="fromDate" class="col-sm-2 control-label">From</label>
    <div class="col-sm-10">
      <input type="date"  class="form-control" id="fromDate" name="fromdate" placeholder="dd-mm-yy"  >
    </div>
  </div>
  <div class="form-group">
    <label for="toDate" class="col-sm-2 control-label">To</label>
    <div class="col-sm-10">
      <input type="date" class="form-control" id="toDate" name="todate" placeholder="dd-mm-yy" >
    </div>
  </div>
  <div class="form-group" align="left">
    <label for="cap" class="col-sm-2 control-label">Capacity</label>
    <div class="col-sm-10">
    
    <input type="radio" name="capacity" value=2 checked>&nbsp;Two Seater&nbsp;
    <input type="radio" name="capacity" value=4 >&nbsp;Four Seater&nbsp;
    <input type="radio" name="capacity" value=5 >&nbsp;Five Seater&nbsp;
    <input type="radio" name="capacity" value=7 >&nbsp;Seven Seater&nbsp;
    </div>
  </div>
   <div class="form-group" align="left">
    <label for="cap" class="col-sm-2 control-label">Transmission</label>
    <div class="col-sm-10">
    
    <input type="radio" name="transmission" value=A checked>&nbsp;Automatic&nbsp;
    <input type="radio" name="transmission" value=M >&nbsp;Manual&nbsp;

    </div>
  </div>
  
  
  <div class="form-group">
    <div class="col-sm-offset-2 col-sm-10">
    <input type="submit">
     
    </div>
  </div>
</form>
     <%
     String custid=(String)session.getAttribute("cust_id");
     Class.forName("oracle.jdbc.driver.OracleDriver");
 	Connection con=DriverManager.getConnection("jdbc:oracle:thin:hr/hr@oracle.cise.ufl.edu:1521:orcl",
             "srajani", "S35969932r$"); 
 	String sql="select * from Booking_Details,car_type where Cust_ID='"+custid+"' and car_type.car_ID=Booking_details.car_ID and Booking_Details.TO_DATE<=sysdate";
	Statement st=con.createStatement();
	ResultSet rs=st.executeQuery(sql);
	String sql1="Select * from Booking_Details,car_type where Cust_ID='"+custid+"' and Car_type.car_ID=Booking_details.car_ID and Booking_Details.TO_DATE>sysdate";
	Statement stt=con.createStatement();
	ResultSet rs1=stt.executeQuery(sql1);
	%>

	     
    </div>
    <div class="col-sm-6" align="center">
    <div class="row">
    <p>Current Booking</p>
   		<table class="table table-striped">
	<tr>
    	<td>Booking Id</td>
    	<td>Car</td>
    	<td>Color</td>
    	<td>From</td>
    	<td>To</td>
    	<td>Amount</td>
    	<tr>
    <%
    while(rs1.next()) 
    {
    	%>
    	<tr>
    	<td><%out.println(rs1.getString("booking_id")); %></td>
    	<td><%out.println(rs1.getString("car_name")); %></td>
    	<td><%out.println(rs1.getString("color")); %></td>
    	<td><%out.println(rs1.getString("from_date")); %></td>
    	<td><%out.println(rs1.getString("to_date")); %></td>
    	<td><%out.println(rs1.getString("amount")); %></td>
    	<tr>
    	
    	<%
    }
     
     %>
     </table>
    </div>
    <div class="row">
    <p>Past Booking</p>	
    	<table class="table table-striped">
	<tr>
    	<td>Booking Id</td>
    	<td>Car</td>
    	<td>Color</td>
    	<td>From</td>
    	<td>To</td>
    	<td>Amount</td>
    	<tr>
    <%
    while(rs.next()) 
    {
    	%>
    	<tr>
    	<td><%out.println(rs.getString("booking_id")); %></td>
    	<td><%out.println(rs.getString("car_name")); %></td>
    	<td><%out.println(rs.getString("color")); %></td>
    	<td><%out.println(rs.getString("from_date")); %></td>
    	<td><%out.println(rs.getString("to_date")); %></td>
    	<td><%out.println(rs.getString("amount")); %></td>
    	<tr>
    	
    	<%
    }
     
     %>
     </table>
    
    </div>
    </div>
  </div>
  </div>
</div>
<!--
<div class="row">
    	
         <p>Current Bookings</p>
         <div class="col-sm-6" align="right">
         <p>Past Bookings</p>
         </div>
         </div>
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

