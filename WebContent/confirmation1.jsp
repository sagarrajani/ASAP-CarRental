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
<title>ASAP CAR RENTALS</title>
</head>
<body>

<div class= "navbar navbar-inverse navbar-static-top" > 
	<div class="container"> 
	<a href="index.jsp" class="navbar-brand">ASAP Car Rentals</a>

	<button class = "navbar-toggle" data-toggle = "collapse" data-target= ".navHeaderCollapse" >
		<span class="icon-bar"></span>
		<span class="icon-bar"></span>
		<span class="icon-bar"></span>
	</button>

	<div class="collapse navbar-collapse navHeaderCollapse">

		<ul class="nav navbar-nav navbar-right">

		<!-- <li class="active"><a href="#">HomePage</a></li>
		<li><a href="#">UserLogin</a></li>-->
		<li><a href="#">Terms&Conditions</a></li>
		<li><a href="#">Contact Us</a></li>
			

		</ul>

	</div>
	</div>
</div>

<%

String cust_id=request.getParameter("custid");
String car_id=request.getParameter("carid");
String bill_amt=(String)session.getAttribute("bill_amt");
String nod=(String)session.getAttribute("nod");

System.out.println(nod);
System.out.println(bill_amt);
%>
<div class="container" align="center">
<div class="jumbotron">  
<div class="row">
 

     	   <div class="col-xs-6 col-md-4">
     	     <img src="images/sonata.jpg" class="img-responsive">
     	    </div>
     	    <div class="col-xs-6 col-md-4">
     	    <b>MILEAGE</b>
     	    <br><br>
          
            <br>
     	     <br>
              <b>READING</b>
     	     <br>
     	     <br>
      
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

