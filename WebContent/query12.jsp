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

	Class.forName("oracle.jdbc.driver.OracleDriver");
	Connection con=DriverManager.getConnection("jdbc:oracle:thin:hr/hr@oracle.cise.ufl.edu:1521:orcl",
            "srajani", "S35969932r$"); 

		String sql="Create view abc as select sum(points)as total ,booking_details.CUST_ID as cust from account,booking_details where account.BOOKING_ID=booking_details.BOOKING_ID group by booking_details.CUST_ID order by booking_details.CUST_ID";
		String sq="create view abc2 as select * from abc order by total DESC ";
		String sql1="create view abc3 as select * from abc2 where rownum<6 order by total DESC ";
		String s="select user1.name,total as points from abc3,user1 where abc3.CUST=user1.SSN";
				
		
		Statement stmt=con.createStatement();
		Statement stmtt=con.createStatement();
		Statement stt=con.createStatement();
		Statement sttt=con.createStatement();
		stmt.executeUpdate(sql);
		stt.executeUpdate(sq);
		stmtt.executeUpdate(sql1);
		ResultSet rs1=sttt.executeQuery(s);

	
	%>
	<div class="row">
	<table class="table table-striped">
	<tr>
	
		<td>
		Name
		</td>
		<td>
		Points
		</td>
	

  	</tr>
  	<%
  	while(rs1.next())
  	{
  		%>
  		<tr>
  		
		<td>
		<%out.println(rs1.getString("name"));%>
		</td>
		
		<td>
		<%out.println(rs1.getString("points"));%>
		</td>
	

  	
  	<%
  	}
  	
  	String sql3="drop view abc";
  	String sql4="drop view abc2";
  	String sql5="drop view abc3";
  	Statement q=con.createStatement();
  	Statement q1=con.createStatement();
  	Statement q2=con.createStatement();
  	q.executeUpdate(sql5);
  	q1.executeUpdate(sql4);
  	q2.executeUpdate(sql3);
	
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

