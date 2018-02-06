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
<title>ASAP Query 6</title>
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
String date=request.getParameter("date");
String datee=request.getParameter("date");
String q_date ="";

String[] a=date.split("-");
String[] b=datee.split("-");


if(a[1].equals("01")||b[1].equals("01"))
{
	a[1]="JAN";
	b[1]="JAN";
}
else if(a[1].equals("02")||b[1].equals("02"))
{
	a[1]="FEB";
	b[1]="FEB";
}
else if(a[1].equals("03")||b[1].equals("03"))
{
	a[1]="MAR";
	b[1]="MAR";
}
else if(a[1].equals("04")||b[1].equals("04"))
{
	a[1]="APR";
	b[1]="APR";
}
else if(a[1].equals("05")||b[1].equals("05"))
{
	a[1]="MAY";
	b[1]="MAY";
}
else if(a[1].equals("06")||b[1].equals("06"))
{
	a[1]="JUN";
	b[1]="JUN";
}
else if(a[1].equals("07")||b[1].equals("07"))
{
	a[1]="JUL";
	b[1]="JUL";
}
else if(a[1].equals("08")||b[1].equals("08"))
{
	a[1]="AUG";
	b[1]="AUG";
}
else if(a[1].equals("09")||b[1].equals("09"))
{
	a[1]="SEP";
	b[1]="SEP";
}
else if(a[1].equals("10")||b[1].equals("10"))
{
	a[1]="OCT";
	b[1]="OCT";
}
else if(a[1].equals("11")||b[1].equals("11"))
{
	a[1]="NOV";
	b[1]="NOV";
}
else if(a[1].equals("12")||b[1].equals("12"))
{
	a[1]="DEC";
	b[1]="DEC";
}
//System.out.println(from_date);
q_date=q_date.concat(a[2]+"-"+a[1]+"-"+a[0]);
 
//to_date=to_date.concat(b[2]+"-"+b[1]+"-"+b[0]);
	Class.forName("oracle.jdbc.driver.OracleDriver");
	Connection con=DriverManager.getConnection("jdbc:oracle:thin:hr/hr@oracle.cise.ufl.edu:1521:orcl",
            "srajani", "S35969932r$"); 
	String sql="Select booking_details.car_id,type from booking_details, car_type where booking_date= '"+q_date+"'  and  booking_details.car_ID=car_type.car_ID";
	Statement stmt=con.createStatement();
	ResultSet rs=stmt.executeQuery(sql);
	
	%>
	<div class="row">
	<table class="table table-striped">
	<tr>
	
		<td>
		Car id booked on <%out.println(q_date); %>
		</td>
	
		<td>
		Type of Car
		</td>

  	</tr>
	<%
	while(rs.next())
	{
		%>
		<tr>

		<td>
		<%out.println(rs.getString("car_id")); %>
		</td>

		<td>
		<%out.println(rs.getString("type")); %>
		</td>
		</tr>

		
		<%
		
	}
	
	con.close();
	%>
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

