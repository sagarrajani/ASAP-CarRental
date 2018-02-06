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
<title>ASAP Admin Page</title>
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

		<!-- <li class="active"><a href="#">HomePage</a></li>
		<li><a href="#">UserLogin</a></li>-->
		<li><a href="terms.jsp">Terms&Conditions</a></li>
		<li><a href="contact.jsp">Contact Us</a></li>
			

		</ul>

	</div>
	</div>
</div>


<div class="container" align="center">
  <p align="center">Admininstrator</p>
  <p align="right"><a class="btn btn-default"  href="signout.jsp" role="button">Sign Out</a></p>
<div class="jumbotron">  
  <div class="row" align="left">

<div class="col-xs-10 col-md-9">
<form method="post" action="query4.jsp">
     Calculate total no of tuples
     <input type="submit" name="website_string">
     </form>
    </div>
        
     <div class="col-xs-10 col-md-9">
     <form method="post" action="query1.jsp">
        Which <select name="a">
  <option  value="color">Color</option>
  <option  value="model">Model</option>
  <option  value="type">Type</option>
	</select> are most rented by <select name="b"> 
  <option  value="MALE">Male</option>
  <option  value="FEMALE">Female</option>
	</select> ?
	<input type="submit" name="website_string">
    </form>
    </div>
         
       <div class="col-xs-10 col-md-9">
     <form method="post" action="query2.jsp">
        Which <select name="a">
  <option  value="color">Color</option>
  <option  value="model">Model</option>
  <option  value="type">Type</option>
	</select> are least rented by <select name="b"> 
  <option  value="MALE">Male</option>
  <option  value="FEMALE">Female</option>
	</select> ?
	<input type="submit" name="website_string">
    </form>
    </div>
    
    <div class="col-xs-10 col-md-9">
     <form method="post" action="Query3.jsp">
        How many <select name="c">
<option value="MINI">MINI</option>
<option value="Subaru">Sabaru</option>
<option value="Lexus">Lexus</option>
<option value="BMW">BMW</option>
<option value="Suzuki">Suzuki</option>
<option value="Citroën">Citroen</option>
<option value="JLR">JLR</option>
<option value="Ferrari">Ferrari</option>
<option value="Acura">Acura</option>
<option value="Nissan">Nissan</option>
<option value="Porsche">Porsche</option>
<option value="Daimler">Daimler</option>
<option value="Mazda">Mazda</option>
<option value="Dongfeng Motor">Dongfeng Motor</option>
<option value="Mitsubishi Motors">Mitsubishi Motors</option>
<option value="Mahindra and Mahindra">Mahindra and Mahindra</option>
<option value="Buick">Buick</option>
<option value="Smart">Smart</option>
<option value="Ford">Ford</option>
<option value="Peugeot">Peugeot</option>
<option value="Chevrolet">Chevrolet</option>
<option value="Toyota">Toyota</option>
<option value="Audi">Audi</option>
<option value="Tata Motors">Tata Motors</option>
<option value="Vauxhall">Vauxhall</option>
<option value="Infiniti">Infiniti</option>
<option value="Lincoln">Lincoln</option>
<option value="Maruti Suzuki">Maruti Suzuki</option>
<option value="Seat">Seat</option>
<option value="Honda">Honda</option>
<option value="Fiat">Fiat</option>
<option value="Volkswagen">Volkswagen</option>
<option value="Kia Motors">Kia</option>
<option value="GMC">GMC</option>
<option value="Isuzu">Isuzu</option>
<option value="Kenworth">Kenworth</option>
<option value="Chrysler">Chrysler</option>
<option value="Dacia">Dacia</option>
<option value="Mercedes-Benz">Merc</option>
<option value="General Motors">Gm</option>
<option value="Jeep">Jeep</option>
<option value="Dodge">Dodge</option>
<option value="RAM Trucks">RAM</option>
<option value="FAW">FAW</option>
<option value="Hyundai Motors">Hyundai</option>
<option value="Renault">Renault</option>
<option value="Volvo">Volvo</option>
<option value="Daihatsu">Daihatsu</option>
<option value="Cadillac">Cadillac</option>
<option value="Skoda">Skoda</option>
  
	</select> are in stock ?
	<input type="submit" name="c">
    </form>
    </div>
         
         <div class="col-xs-10 col-md-9">
         <form method=post action="query5.jsp">
         Which mode of payment is used by most customers?
         <input type="submit" name="d">
         </form>
     
    </div>
    <div class="col-xs-10 col-md-9">
         <form method=post action="query6.jsp">
         How many cars was rented on 
         <input type="date" name="date">?
         <input type="submit" name="e" >
         </form>
     
    </div>
     <div class="col-xs-10 col-md-9">
     <form method="post" action="query7.jsp">
        Which cars are  <select name="f"> 
  <option  value="most">Most</option>
  <option  value="least">Least</option>
	</select> rented between 
	<input type="date" name="date"> and <input type="date" name="date2"> ?
	<input type="submit" name="website_string">
    </form>
    </div>
    
    <div class="col-xs-10 col-md-9">
     <form method="post" action="query8.jsp">
        Which month of which year has the most rentals ? 
	<input type="submit" name="website_string">
    </form>
    </div>
    
    <div class="col-xs-10 col-md-9">
     <form method="post" action="query9.jsp">
        How many registered users that have booked a car have age below and above 22 ?
	<input type="submit" name="website_string">
    </form>
    </div>
    
  
    
        <div class="col-xs-10 col-md-9">
     <form method="post" action="query10.jsp">
        Number of cars rented in <select name="year">
  <option  value=2010>2010</option>
  <option  value=2011>2011</option>
  <option  value=2012>2012</option>
  <option  value=2013>2013</option>
  <option  value=2014>2014</option>
  <option  value=2015>2015</option>
  <option  value=2016>2016</option>
	</select> 
	<input type="submit" name="website_string">
    </form>
    </div>
    
    <div class="col-xs-10 col-md-9">
     <form method="post" action="query11.jsp">
        Type Of Cars rented in 
         <select name="mont">
  <option  value=01>Jan</option>
  <option  value=02>Feb</option>
  <option  value=03>Mar</option>
  <option  value=04>Apr</option>
  <option  value=05>May</option>
  <option  value=06>Jun</option>
  <option  value=07>July</option>
  <option  value=08>Aug</option>
  <option  value=09>Sep</option>
  <option  value=10>Oct</option>
  <option  value=11>Nov</option>
  <option  value=12>Dec</option>
	</select>  <select name="yer">
  <option  value=2010>2010</option>
  <option  value=2011>2011</option>
  <option  value=2012>2012</option>
  <option  value=2013>2013</option>
  <option  value=2014>2014</option>
  <option  value=2015>2015</option>
  <option  value=2016>2016</option>
	</select> 
	<input type="submit" name="website_string">
    </form>
    </div>
    
    <div class="col-xs-10 col-md-9">
     <form method="post" action="query12.jsp">
        Display top 5 customers having highest loyality points 
	<input type="submit" name="website_string">
    </form>
    </div>
    
    
        
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

