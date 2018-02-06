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
<title>ASAP My Account</title>
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
		<li class="active"><a href="myaccount.jsp">My Account</a></li>
		<li><a href="terms.jsp">Terms&Conditions</a></li>
		<li><a href="contact.jsp">Contact Us</a></li>
			

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
     		     <p>My Details</p>
 

  	<%
  		
  	//System.out.println("hekksnc sd"+cust);
		String cust_id=(String)session.getAttribute("cust_id");
		 System.out.println(cust_id);
		 Class.forName("oracle.jdbc.driver.OracleDriver");
     	Connection con=DriverManager.getConnection("jdbc:oracle:thin:hr/hr@oracle.cise.ufl.edu:1521:orcl",
                 "srajani", "S35969932r$"); 
     	String sql="select * from user1 where ssn='"+cust_id+"'";
     	String sql1="select * from customer where cust_id='"+cust_id+"'";
     	Statement st=con.createStatement();
     	Statement stt=con.createStatement();
     	ResultSet rs=st.executeQuery(sql);
     	ResultSet rs1=stt.executeQuery(sql1);
     	int i=1;
     	%>
     	<table class="table table-striped">
     	
     	<%
 
     	
     	while(rs.next()&&rs1.next())
     	{
     		%><tr>
     		<td>Name</td>
     		<td><%out.println(rs.getString("name")); %></td>
     		</tr>
     		<tr>
     		<td>E-Mail Id</td>
     		<td><%out.println(rs.getString("email_id")); %></td>
     		</tr>
     		<tr>
     		<td>Password</td>
     		<td><%out.println(rs1.getString("password")); %></td>
     		</tr>
     		<tr>
     		<td>Date Of Birth</td>
     		<td><%out.println(rs.getString("doob")); %></td>
     		</tr>
     	
     		<tr>
     		<td>Driving License</td>
     		<td><%out.println(rs1.getString("dl")); %></td>
     		</tr>
     		<tr>
     		<td>Address</td>
     		<td><%out.println(rs1.getString("street")+","+rs1.getString("city")+","+rs1.getString("zip")); %></td>
     		
     		</tr>

     <%	

     	}
     
   
     	%>
     	 </table>
     		    
     		    </div>
     	<%
     String custid=(String)session.getAttribute("cust_id");
      
 	String sqll="select * from booking_details,car_type where Cust_ID='"+custid+"' and car_type.car_ID=Booking_details.car_ID and Booking_Details.TO_DATE<sysdate";
	Statement sst=con.createStatement();
	ResultSet rs3=sst.executeQuery(sqll);
	String sqll1="Select * from Booking_Details,car_type where Cust_ID='"+custid+"' and Car_type.car_ID=Booking_details.car_ID and Booking_Details.TO_DATE>sysdate";
	Statement sstt=con.createStatement();
	ResultSet rs4=sstt.executeQuery(sqll1);
	%>
     	
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
    while(rs4.next()) 
    {
    	%>
    	<tr>
    	<td><%out.println(rs4.getString("booking_id")); %></td>
    	<td><%out.println(rs4.getString("car_name")); %></td>
    	<td><%out.println(rs4.getString("color")); %></td>
    	<td><%out.println(rs4.getString("from_date")); %></td>
    	<td><%out.println(rs4.getString("to_date")); %></td>
    	<td><%out.println(rs4.getString("amount")); %></td>
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
    while(rs3.next()) 
    {
    	%>
    	<tr>
    	<td><%out.println(rs3.getString("booking_id")); %></td>
    	<td><%out.println(rs3.getString("car_name")); %></td>
    	<td><%out.println(rs3.getString("color")); %></td>
    	<td><%out.println(rs3.getString("from_date")); %></td>
    	<td><%out.println(rs3.getString("to_date")); %></td>
    	<td><%out.println(rs3.getString("amount")); %></td>
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
         <%
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

