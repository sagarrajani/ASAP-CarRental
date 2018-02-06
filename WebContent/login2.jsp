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
String email=(String)session.getAttribute("email_id");
String pass=(String)session.getAttribute("password");

	Class.forName("oracle.jdbc.driver.OracleDriver");
	Connection con=DriverManager.getConnection("jdbc:oracle:thin:hr/hr@oracle.cise.ufl.edu:1521:orcl",
            "srajani", "S35969932r$"); 
	
	//String sql="select * from user_login where user_name='"+email+"' and password='"+pass+"'";
	
	//String adminsql="select * from user1 inner join admin on user1.ssn=admin.admin_id AND user1.email_id='"+email+"' and admin.password='"+pass+"'";
	String sql="select * from user1 inner join employee on user1.ssn=employee.emp_id AND user1.email_id='"+email+"' and employee.password='"+pass+"'";
	//String admin="select * from user1 inner join admin on user1.ssn=admin.admin_id";
	Statement stmtt=con.createStatement();
	ResultSet rs=stmtt.executeQuery(sql);


	if(rs.next())
	{

				System.out.println("2");
				String name=rs.getString("NAME");
				 //System.out.println(name);
				 session.setAttribute("name", name);
				 response.sendRedirect("employee.jsp");
				 
		
	}
	else
	{
		response.sendRedirect("index.jsp");
	}
	
	
	
%>
		


</body>
</html>