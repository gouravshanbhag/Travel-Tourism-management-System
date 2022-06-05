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
		
		String id = request.getParameter("id");
		String password = request.getParameter("Input_p");
		String database_user = "ue6o2ben3u1qhfjk";
        String database_password = "Zvhxjen3NCOotNN7Srnf";
		   try {
	            Class.forName("com.mysql.cj.jdbc.Driver");
	            Connection con = DriverManager.getConnection(
	                "jdbc:mysql://ue6o2ben3u1qhfjk:Zvhxjen3NCOotNN7Srnf@bz8wovmihcju8lhzuqtm-mysql.services.clever-cloud.com:3306/bz8wovmihcju8lhzuqtm", database_user, database_password);
	                Statement stmt = con.createStatement();
	                ResultSet rs,rs1 ;
	                rs = stmt.executeQuery("select * from TLogin");
	                    
	                String u_id,ufname,ulname,uemail;
	                String u_password,uphone;
	                int cid;
	                Boolean is_correct;
	                is_correct = false;
	                
	                while (rs.next()) {
	                    u_id = rs.getString(2);
	                    u_password = rs.getString(3);
	                    
	                    if (u_id.equals(id)) {
	                        if (u_password.equals(password)) {
	                           
	                                is_correct = true;
	                         
	                                break;
	                            } else {
	                            	
	                                is_correct = false;
	                                break;
	                            }
	                        }
	                    }
	                    if (!is_correct) {
	                    	
	                    	out.println("<script type=\"text/javascript\">");
	                    	out.println("alert('InCorrect ID!!');");
	                    	out.println("location='login.html';");
	                    	out.println("</script>");
	                    }
	                    else{
	                    	rs1 = stmt.executeQuery("select * from TLogin where CUser='"+id+"' and CPass="+password);
	                    	while(rs1.next()){
	                    	cid = rs1.getInt(1);
	                    	session.setAttribute("send",cid);
	                    	ufname = rs1.getString(4);
	    	                ulname = rs1.getString(5);
	    	                uphone = rs1.getString(6);
	    	                uemail = rs1.getString(7);
	    	                session.setAttribute("ufname", ufname);
	    	                session.setAttribute("ulname", ulname);
	    	                session.setAttribute("uphone", uphone);
	    	                session.setAttribute("uemail", uemail);
	    	                if(id.length() == 4)
	                    	{
	                    		response.sendRedirect("https://console.clever-cloud.com/users/me/addons/addon_0817a050-d1b8-4a4c-aa04-9150933b3e26");
	                    	}
	                    	response.sendRedirect("booking1.jsp");
	                    	}
	                    }
	                    
	                    
	                    con.close();
	                } catch (Exception e) {
	                   out.println(e);
	                }
	                // scan.close();
	           
	            
	%>
</body>
</html>