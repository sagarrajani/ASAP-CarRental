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
String carid=(String)session.getAttribute("car_id");
String custid=(String)session.getAttribute("cust_id");
String fromdate=(String)session.getAttribute("fromdate");
String todate=(String)session.getAttribute("todate");
String bill_amt=(String)session.getAttribute("bill_amt");
String nod=(String)session.getAttribute("nod");
String bs="available";
String b_id;
String ptype=request.getParameter("ptype");
String name=request.getParameter("name");
String emonth=request.getParameter("month");
String eyear=request.getParameter("year");
String cvv=request.getParameter("cvv");
String cnumber=request.getParameter("card");
int final_bill=(Integer.parseInt(bill_amt))+100;
String to;

//System.out.println("jdhdhdhds"+todate);
		
		

	Class.forName("oracle.jdbc.driver.OracleDriver");
	Connection con=DriverManager.getConnection("jdbc:oracle:thin:hr/hr@oracle.cise.ufl.edu:1521:orcl",
            "srajani", "S35969932r$"); 
	String sql="insert into booking_details (cust_id,car_id,booking_status,booking_date,from_date,no_of_days,security_deposit,to_date,amount) values ('"+custid+"','"+carid+"','"+bs+"',sysdate,'"+fromdate+"','"+nod+"','"+100+"','"+todate+"','"+bill_amt+"')";
	Statement stmt=con.createStatement();
	int i=stmt.executeUpdate(sql);

	String sql1="select * from booking_details where cust_id='"+custid+"' and car_id='"+carid+"'";
	Statement stmtt=con.createStatement();
	ResultSet rs=stmtt.executeQuery(sql1);

	if(i!=0)
	{
		
		while(rs.next())
		{
			b_id=rs.getString("booking_id");

			session.setAttribute("b_id",b_id);

		}

	}
	
	String sqll="update car_type set from_date='"+todate+"' where car_id='"+carid+"'";
	Statement st=con.createStatement();
	int ii=st.executeUpdate(sqll);
	
	String bls="paid";
	//String bil_id;
	String book_id=(String)session.getAttribute("b_id");
	System.out.println(book_id);
	String sql2="insert into billing_details (booking_id,bill_date,bill_amount,bill_status) values ('"+book_id+"',sysdate,'"+final_bill+"','"+bls+"')";
	Statement stmtmt=con.createStatement();
	int j=stmtmt.executeUpdate(sql2);
	String sql3="select * from billing_details where booking_id='"+book_id+"'";
	Statement s=con.createStatement();
	ResultSet rs1=s.executeQuery(sql3);
	if(j!=0)
	{
		while(rs1.next())
		{
			String bil_id=rs1.getString("bill_id");
			session.setAttribute("bill_id",bil_id);
		}
		
		
	}
	double loyalty=final_bill*0.05;
	String bill_id=(String)session.getAttribute("bill_id");
	String sql4="insert into payment_details(booking_id,bill_id,bill_amt,p_type,e_month,e_year,card_number) values ('"+book_id+"','"+bill_id+"','"+final_bill+"','"+ptype+"','"+emonth+"','"+eyear+"','"+cnumber+"')";
	Statement stt=con.createStatement();
	int k=stt.executeUpdate(sql4);
	if(k!=0)
	{
		
		String sql5="insert into account (booking_id,points) values ('"+book_id+"','"+loyalty+"')";
		Statement stm=con.createStatement();
		int x=stm.executeUpdate(sql5);
		if(x!=0)
		{
			response.sendRedirect("confirmed.jsp");
		}
		else
		{
			response.sendRedirect("confirmation.jsp");
		}
		
	}

	
	
	
	
	
	
	con.close();
	
	
	
	

   
	
%>
		


</body>
</html>