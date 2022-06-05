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
//session.invalidate();
		//response.sendRedirect("login.html");
		
		String id = request.getParameter("uid");
		String name = request.getParameter("fname");
		String lname = request.getParameter("lname");
		String email = request.getParameter("email");
		String phoneno = request.getParameter("phoneno");
		String password = request.getParameter("passw");
		String database_user = "ue6o2ben3u1qhfjk";
      String database_password = "Zvhxjen3NCOotNN7Srnf";
		   try {
	            Class.forName("com.mysql.cj.jdbc.Driver");
	            Connection con = DriverManager.getConnection(
	                "jdbc:mysql://ue6o2ben3u1qhfjk:Zvhxjen3NCOotNN7Srnf@bz8wovmihcju8lhzuqtm-mysql.services.clever-cloud.com:3306/bz8wovmihcju8lhzuqtm", database_user, database_password);
	                Statement stmt = con.createStatement();
	                String query = String.format("insert into TLogin(CUser,CPass,CName,CLName,CPhone,CEmail) values('"+id+"','"+password+"','"+name+"','"+lname+"','"+phoneno+"','"+email+"')");
	                //System.out.println(query);
	                stmt.executeUpdate(query);
	                out.println("<script type=\"text/javascript\">");
		            out.println("alert('User registered successfully !!');");
		            out.println("</script>");

	                con.close();
	            } catch (Exception e) {
	               out.println(e);
	            }

	            out.println("<script type=\"text/javascript\">");
	            out.println("location='login.html';");
	            out.println("</script>");
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
%>
</body>
</html>