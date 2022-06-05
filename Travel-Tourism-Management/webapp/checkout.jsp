<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.util.*"%>
	<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
 
 <%
 String cid = String.valueOf(session.getAttribute("send"));
 String date = String.valueOf(session.getAttribute("dates"));
 String b_id = String.valueOf(session.getAttribute("bid"));
 String seat = String.valueOf(session.getAttribute("seatB"));
 String sea = String.valueOf(session.getAttribute("seat2"));
 String fare1 = String.valueOf(session.getAttribute("fare"));
 int fare = Integer.parseInt(fare1);
 int seat1 = Integer.parseInt(seat);
 int seat2 =  Integer.parseInt(sea);
 String database_user = "ue6o2ben3u1qhfjk";
 String database_password = "Zvhxjen3NCOotNN7Srnf";
    try {
         Class.forName("com.mysql.cj.jdbc.Driver");
         Connection con = DriverManager.getConnection(
             "jdbc:mysql://ue6o2ben3u1qhfjk:Zvhxjen3NCOotNN7Srnf@bz8wovmihcju8lhzuqtm-mysql.services.clever-cloud.com:3306/bz8wovmihcju8lhzuqtm", database_user, database_password);
             Statement stmt = con.createStatement();
             Statement stmt1 = con.createStatement();
             Statement stmt2 = con.createStatement();
             ResultSet rs,rs1 ;
             
 					
             
									 
									 
									
									 
									 String cname= request.getParameter("cardname");
								     String ccnum= request.getParameter("cardnumber");
								     String expmonth= request.getParameter("expmonth");
								     String expyear= request.getParameter("expyear");
								     String cvv= request.getParameter("cvv");
								     if(cname.length() == 0 || ccnum.length()!= 16 || expmonth.length() == 0 || cvv.length() !=3 ){%>
								    	 <script>
								    	 alert('fields not filled properly');
								    	 window.history.back();
								    	 </script>
								    	 
								    	 <%}
								     	 
								     else{
								    	 String query1 = String.format("insert into TBooking(Cid,bid,seat,Bdate) values("+cid+","+b_id+","+seat+",'"+date+"')");
										 stmt1.executeUpdate(query1);
										 /*String query2 = String.format("insert into TPayment(cid,fare) values("+cid+","+fare+")");
										 stmt.executeUpdate(query2);*/
										 String query3 = String.format("update BusSchedule set Seats_available="+(seat2 - seat1)+" where bus_id= "+b_id);
										 stmt2.executeUpdate(query3);
								     
								     %>
								    	 
								    	 <script>
								    	 alert('Payment successful');
								    	 window.location.href ="booking1.jsp";
								    	 </script>
								    	 <%
								     	
								     	}
									 con.close();
			
     } catch (Exception e) {
         System.out.println(e);
     }
	   
		 %> 
								
								
								
						 
</body>
</html>