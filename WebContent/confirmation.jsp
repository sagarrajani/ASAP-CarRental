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
<%

String cust_id=request.getParameter("custid");
String car_id=request.getParameter("carid");
String bill_amt=(String)session.getAttribute("bill_amt");
String nod=(String)session.getAttribute("nod");

%>
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

		<li ><a href="myaccount.jsp">My Account</a></li>
		<li><a href="terms.jsp">Terms&Conditions</a></li>
		<li><a href="contact.jsp">Contact Us</a></li>
			

		</ul>

	</div>
	</div>
</div>


<div class="container" align="center">
<p align="right"><a class="btn btn-default"  href="signout.jsp" role="button">Sign Out</a></p>
<div class="jumbotron" align="center">  
  <div class="row" align="center">
  <div class="col-sm-10" align="center">
         <form class="form-horizontal" method="post" action="confirming.jsp">
    <div class="form-group">
    <div class="col-sm-4">
    &nbsp;
    </div>
    <label for="inputAmt" class="col-sm-2 control-label">Amount</label>
    <div class="col-sm-2">
      $&nbsp;<%out.println((Integer.parseInt(bill_amt))+100); %>
    </div>
    </div>
  <div class="form-group">
   <div class="col-sm-4">
    &nbsp;
    </div>
    <label for="ptype" class="col-sm-2 control-label">Payment Type</label>
    <div class="col-sm-4">
     <input type="radio" name="ptype" value=credit checked>&nbsp;Credit Card&nbsp;
    <input type="radio" name="ptype" value=debit >&nbsp;Debit Card&nbsp;
    </div>
  </div>
    <div class="form-group">
    
       <div class="col-sm-4">
    &nbsp;
    </div>
    <label for="inputName" class="col-sm-2 control-label">Name on Card</label>
    <div class="col-sm-4">
      <input type="text" class="form-control" id="inputName" name="name" placeholder="Card Holder Name" >
    </div>
  </div>
    <div class="form-group">
    
       <div class="col-sm-4">
    &nbsp;
    </div>
    <label for="inputcard" class="col-sm-2 control-label">Card Number</label>
    <div class="col-sm-4">
      <input type="text" class="form-control" id="inputcard" name="card" placeholder="Card Number" maxlength="16">
    </div>
  </div>
  <div class="form-group">
     <div class="col-sm-4">
    &nbsp;
    </div>
    <label for="month" class="col-sm-2 control-label">Expiry </label>
    <div class="col-sm-1">
	<input type="text" class="form-control" id="month" name="month" placeholder="mm" maxlength="2">
	
    </div>
    <div class="col-sm-1">
    <input type="text" class="form-control" id="year" name="year" placeholder="yyyy" maxlength="4" >
    </div>
    
  </div>
    <div class="form-group" align="left">
       <div class="col-sm-4">
    &nbsp;
    </div>
    <label for="inputCvv" class="col-sm-2 control-label">CVV No.</label>
    <div class="col-sm-2">
      <input type="text" class="form-control" id="inputCvv" name="cvv" placeholder="CVV" maxlength="3" >
    </div>
  </div>
    
  
  <div class="form-group">
    <div class="col-sm-offset-2 col-sm-10">
      <button type="submit" class="btn btn-default">Pay Now</button>
    </div>
  </div>
</form>


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

