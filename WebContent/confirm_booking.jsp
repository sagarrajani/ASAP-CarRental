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
<title>ASAP Booking</title>
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
    
         String carid=(String)session.getAttribute("car_id");
         String custid=(String)session.getAttribute("cust_id");
         String fromdate=(String)session.getAttribute("fromdate");
         String todate=(String)session.getAttribute("todate");

		Class.forName("oracle.jdbc.driver.OracleDriver");
     	Connection con=DriverManager.getConnection("jdbc:oracle:thin:hr/hr@oracle.cise.ufl.edu:1521:orcl","srajani", "S35969932r$"); 
     	String sql="select * from car_type where car_id='"+carid+"'";
     	String sql1="select * from temp where car_id='"+carid+"' and cust_id='"+custid+"'";
     	Statement st=con.createStatement();
     	ResultSet rs=st.executeQuery(sql);
     	Statement stt=con.createStatement();
     	ResultSet rs1=stt.executeQuery(sql1);
     	

     	%>
     	<table class="table table-bordered">
     	
<% 
     	while(rs.next())
     	{
     	

     	%>
     	   
     	    <tr><td align="center">Car Name </td>
     	    <td align="left"><%out.println(rs.getString("car_name"));%></td>
     	    </tr>
     	      <tr><td align="center">Car Type</td>
     	    <td align="left"><%out.println(rs.getString("type")); %></td>
     	    </tr>
     	      <tr><td align="center">Seating Capacity</td>
     	    <td align="left"><%out.println(rs.getString("seating_cap")); %></td>
     	    </tr>
     	      <tr><td align="center">Color</td>
     	    <td align="left"><%out.println(rs.getString("color")); %></td>
     	    </tr>
     	      <tr><td align="center">From </td>
     	    <td align="left"><%out.println(fromdate); %></td>
     	    </tr>
     	      <tr><td align="center">To  </td>
     	    <td align="left"><%out.println(todate); %></td>
     	    </tr>
     	   <tr><td align="center">Cost Per Day</td>
     	    <td align="left">$&nbsp;<%out.println(rs.getString("cost_per_day")); %></td>
     	    </tr>
     	    
     	 
  <%
  
     	
  
  
     	}

while(rs1.next())
{
	String nod=rs1.getString("no_of_days");
	String bill_amt=rs1.getString("bill_amt");
	System.out.println(bill_amt);
	System.out.println(nod);
	session.setAttribute("nod",nod);
	session.setAttribute("bill_amt",bill_amt);
	%>
	<tr><td align="center">Total No Of Days </td>
	    <td align="left"><%out.println(rs1.getString("no_of_days")); %></td>
	    </tr>
	    <tr><td align="center">Security Deposit </td>
	    <td align="left">$&nbsp;100</td>
	    </tr>
	     <tr><td align="center">Total Amount Due </td>
	    <td align="left">$&nbsp;<%out.println((Integer.parseInt(rs1.getString("bill_amt")))+100);%></td>
	    </tr> 
	<%
	
	
	String sql2="delete from temp where car_id='"+carid+"' and cust_id='"+custid+"'";
	Statement stmtmt=con.createStatement();
	stmtmt.executeQuery(sql2); 

}


con.close();
%>



     	 
     
</table>



</div>
<div class="row">
<div class="col-sm-6" align="right">
<a class="btn btn-default" href="confirmation.jsp?custid=<%=custid%>&carid=<%=carid%>" role="button">Book Now</a>
</div>
<div class="col-sm-6" align="left">
<a class="btn btn-default" href="userhome.jsp" role="button">Search Again</a>
</div>

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

