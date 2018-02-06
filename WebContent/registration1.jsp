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


<div class="container" align="center">
<h1>Get Registered ASAP To Get Your Car ASAP</h1>
<div class="jumbotron" align="center">  
  <div class="row" align="center">
  <div class="col-sm-11" align="center">
         <p>Register</p>
         <p>User already registered</p>
         <form class="form-horizontal" method="post" action="register.jsp">
  <div class="form-group">
    <label for="inputName" class="col-sm-2 control-label">Name</label>
    <div class="col-sm-10">
      <input type="text" class="form-control" id="inputName" name="name" placeholder="Name" >
    </div>
  </div>
    <div class="form-group">
    <label for="inputEmail3" class="col-sm-2 control-label">Email</label>
    <div class="col-sm-10">
      <input type="email" class="form-control" id="inputEmail3" name="email" placeholder="Email" >
    </div>
  </div>
  <div class="form-group">
    <label for="inputPassword3" class="col-sm-2 control-label">Password</label>
    <div class="col-sm-10">
      <input type="password" class="form-control" id="inputPassword3" name="password" placeholder="Password">
    </div>
  </div>
    <div class="form-group">
    <label for="inputDob" class="col-sm-2 control-label">Date Of Birth</label>
    <div class="col-sm-10">
      <input type="date" class="form-control" id="inputDob" name="dob" placeholder="Date Of Birth" >
    </div>
  </div>
    <div class="form-group">
    <label for="inputGender" class="col-sm-2 control-label">Gender</label>
    <div class="col-sm-10">
      <input type="text" class="form-control" id="inputGender" name="gender" placeholder="Male/Female" >
    </div>
  </div>
    <div class="form-group">
    <label for="inputPhone" class="col-sm-2 control-label">Phone Number</label>
    <div class="col-sm-10">
      <input type="text" class="form-control" id="inputPhone" name="pno" placeholder="Phone Number" >
    </div>
  </div>
    <div class="form-group">
    <label for="inputSSN" class="col-sm-2 control-label">SSN</label>
    <div class="col-sm-10">
      <input type="text" class="form-control" id="inputSSN" name="ssn" placeholder="SSN" >
    </div>
  </div>
  <div class="form-group">
    <label for="inputDL" class="col-sm-2 control-label">Driving License</label>
    <div class="col-sm-10">
      <input type="text" class="form-control" id="inputDL" name="dl" placeholder="Driving License" >
    </div>
    </div>
    <div class="form-group">
    <label for="inputStreet" class="col-sm-2 control-label">Street</label>
    <div class="col-sm-10">
      <input type="text" class="form-control" id="inputName" name="st" placeholder="Street" >
    </div>
  </div>
    <div class="form-group">
    <label for="inputCity" class="col-sm-2 control-label">City</label>
    <div class="col-sm-10">
      <input type="text" class="form-control" id="inputCity" name="city" placeholder="City" >
    </div>
  </div>
    <div class="form-group">
    <label for="inputZip" class="col-sm-2 control-label">Zip</label>
    <div class="col-sm-10">
      <input type="text" class="form-control" id="inputZip" name="zip" placeholder="Zip" >
    </div>
  </div>
  
  <div class="form-group">
    <div class="col-sm-offset-2 col-sm-10">
      <button type="submit" class="btn btn-default">Register</button>
    </div>
  </div>
</form>
         </div>
   
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

