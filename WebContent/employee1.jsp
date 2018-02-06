<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Login</title>
</head>
<body>
<% 
String booking_id=request.getParameter("bid");
String status=request.getParameter("status");



	Class.forName("oracle.jdbc.driver.OracleDriver");
	Connection con=DriverManager.getConnection("jdbc:oracle:thin:hr/hr@oracle.cise.ufl.edu:1521:orcl",
            "srajani", "S35969932r$"); 
	
	//String sql="select * from user_login where user_name='"+email+"' and password='"+pass+"'";
	//System.out.println(email);
	//System.out.println(pass);
	//String adminsql="select * from user1 inner join admin on user1.ssn=admin.admin_id AND user1.email_id='"+email+"' and admin.password='"+pass+"'";
	//String custsql="select * from user1 inner join customer on user1.ssn=customer.cust_id AND user1.email_id='"+email+"' and customer.password='"+pass+"'";
	//String empsql="select * from user1 inner join employee on user1.ssn=employee.emp_id AND user1.email_id='"+email+"' and employee.password='"+pass+"'";
	//String admin="select * from user1 inner join admin on user1.ssn=admin.admin_id";
	//Statement stmtt=con.createStatement();
	//ResultSet rs1=stmtt.executeQuery(adminsql);
	String sql="update booking_details set booking_status='"+status+"' where booking_id='"+booking_id+"'";
	Statement stmt=con.createStatement();
	int i=stmt.executeUpdate(sql);
	//Statement stmttt=con.createStatement();
	//ResultSet rs2=stmttt.executeQuery(empsql);

	if(i!=0)
	{

				session.setAttribute("booking_id",booking_id);
			    response.sendRedirect("employeeupdated.jsp");
				 
		
	}
	else 
	{
		response.sendRedirect("employeenotupdated.jsp");
		
		
	}
		
	
	

   
	
%>
		


</body>
</html>