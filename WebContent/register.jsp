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
String name=request.getParameter("name");
String email=request.getParameter("email");
String pass=request.getParameter("password");
String dob=request.getParameter("dob");
String gender=request.getParameter("gender");
String pno=request.getParameter("pno");
String dl=request.getParameter("dl");
String ssn=request.getParameter("ssn");
String st=request.getParameter("st");
String city=request.getParameter("city");
String zip=request.getParameter("zip");
System.out.println(dob);
String[] a=dob.split("-");
String[] b=dob.split("-");

System.out.println(a[0]+" "+a[1]+" "+a[2]);
if(a[1].equals("01"))
{
	a[1]="JAN";
	
}
else if(a[1].equals("02"))
{
	a[1]="FEB";
	
}
else if(a[1].equals("03"))
{
	a[1]="MAR";
	
}
else if(a[1].equals("04"))
{
	a[1]="APR";
	
}
else if(a[1].equals("05"))
{
	a[1]="MAY";
	
}
else if(a[1].equals("06"))
{
	a[1]="JUN";
	
}
else if(a[1].equals("07"))
{
	a[1]="JUL";

}
else if(a[1].equals("08"))
{
	a[1]="AUG";
	
}
else if(a[1].equals("09"))
{
	a[1]="SEP";
	
}
else if(a[1].equals("10"))
{
	a[1]="OCT";

}
else if(a[1].equals("11"))
{
	a[1]="NOV";

}
else if(a[1].equals("12"))
{
	a[1]="DEC";
	
}
String datee=a[2]+"-"+a[1]+"-"+a[0];

	Class.forName("oracle.jdbc.driver.OracleDriver");
	Connection con=DriverManager.getConnection("jdbc:oracle:thin:hr/hr@oracle.cise.ufl.edu:1521:orcl",
            "srajani", "S35969932r$"); 
	String sql="insert into customer values ('"+ssn+"','"+pass+"','"+dl+"','"+st+"','"+city+"','"+zip+"')";
	String sql2="insert into user1 values ('"+ssn+"','"+name+"','"+email+"','"+pno+"','"+gender+"','"+datee+"')";
	Statement stmt=con.createStatement();
	Statement stmtt=con.createStatement();
	int i=stmt.executeUpdate(sql);
	int j=stmtt.executeUpdate(sql2);
	if(i!=0&&j!=0)
	{
		
		
		 response.sendRedirect("index.jsp");
		 
	}
	else
	{
		
		response.sendRedirect("registration.jsp");
	}
	
	con.close();
%>
		


</body>
</html>