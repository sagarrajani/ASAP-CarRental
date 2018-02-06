<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>
<%@ page import="java.text.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Login</title>
</head>
<body>
<% 
String car_id=request.getParameter("carid");
String fromdate=request.getParameter("fromdate");
String todate=request.getParameter("todate");
String custid=request.getParameter("cust_id");
int cost=Integer.parseInt(request.getParameter("cost"));



	Class.forName("oracle.jdbc.driver.OracleDriver");
	Connection con=DriverManager.getConnection("jdbc:oracle:thin:hr/hr@oracle.cise.ufl.edu:1521:orcl",
            "srajani", "S35969932r$"); 
	String sql="insert into temp values('"+car_id+"','"+custid+"','"+0+"','"+fromdate+"','"+todate+"','"+0+"')";
	String sql1="update temp set no_of_days=todate-fromdate+1 where car_id='"+car_id+"' and cust_id='"+custid+"'";
	Statement stmt=con.createStatement();
	Statement stmtt=con.createStatement();
	Statement sttmt=con.createStatement();
	int i=stmt.executeUpdate(sql);
	int j=stmtt.executeUpdate(sql1);
	String sql2="update temp set bill_amt='"+cost+"'*no_of_days where car_id='"+car_id+"' and cust_id='"+custid+"'";
	int k=sttmt.executeUpdate(sql2);
	if(i!=0&&j!=0)
	{
		
		session.setAttribute("car_id", car_id);
		//session.setAttribute("cust_id", custid);
		session.setAttribute("fromdate",fromdate);
		session.setAttribute("todate",todate);
		response.sendRedirect("confirm_booking.jsp");
	}
	
	
	
	

   con.close();
	
%>
		


</body>
</html>