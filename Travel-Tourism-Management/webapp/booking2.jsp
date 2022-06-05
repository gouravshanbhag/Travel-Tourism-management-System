<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.util.*"%>
	<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
.row {
  display: -ms-flexbox; /* IE10 */
  display: flex;
  -ms-flex-wrap: wrap; /* IE10 */
  flex-wrap: wrap;
  margin: 0 -16px;
}

.col-25 {
  -ms-flex: 25%; /* IE10 */
  flex: 25%;
}

.col-50 {
  -ms-flex: 50%; /* IE10 */
  flex: 50%;
}

.col-75 {
  -ms-flex: 75%; /* IE10 */
  flex: 75%;
}

.col-25,
.col-50,
.col-75 {
  padding: 0 16px;
}

.container {
  background-color: #f2f2f2;
  padding: 5px 20px 15px 20px;
  border: 1px solid lightgrey;
  border-radius: 3px;
}

input[type=text] {
  width: 100%;
  margin-bottom: 20px;
  padding: 12px;
  border: 1px solid #ccc;
  border-radius: 3px;
}

label {
  margin-bottom: 10px;
  display: block;
}

.icon-container {
  margin-bottom: 20px;
  padding: 7px 0;
  font-size: 24px;
}

.btn {
  background-color: #04AA6D;
  color: white;
  padding: 12px;
  margin: 10px 0;
  border: none;
  width: 100%;
  border-radius: 3px;
  cursor: pointer;
  font-size: 17px;
}

.btn:hover {
  background-color: #45a049;
}

span.price {
  float: right;
  color: grey;
}
</style>
<script>
/* function leave()
{
	alert("Payment Successful");
	} */
</script>
</head>
<body>

<%
String date = request.getParameter("date");
session.setAttribute("dates",date);
String cid = String.valueOf(session.getAttribute("send"));
String ufname = String.valueOf(session.getAttribute("ufname"));
String ulname = String.valueOf(session.getAttribute("ulname"));
String uphone = String.valueOf(session.getAttribute("uphone"));
String uemail = String.valueOf(session.getAttribute("uemail"));
int seat = Integer.parseInt(request.getParameter("seat"));
int b_id = Integer.parseInt(request.getParameter("b_id"));
session.setAttribute("seatB",seat);
session.setAttribute("bid",b_id);
String database_user = "ue6o2ben3u1qhfjk";
String database_password = "Zvhxjen3NCOotNN7Srnf";
   try {
        Class.forName("com.mysql.cj.jdbc.Driver");
        Connection con = DriverManager.getConnection(
            "jdbc:mysql://ue6o2ben3u1qhfjk:Zvhxjen3NCOotNN7Srnf@bz8wovmihcju8lhzuqtm-mysql.services.clever-cloud.com:3306/bz8wovmihcju8lhzuqtm", database_user, database_password);
            Statement stmt = con.createStatement();
            
            ResultSet rs;
            rs = stmt.executeQuery("select bus_name,fare,seats_available from BusSchedule where bus_id="+b_id );
            
			while(rs.next())
			{
				String busname = rs.getString(1);
				
				int fare = rs.getInt(2);
				fare = fare*seat;
				session.setAttribute("fare",fare);
				int sea = rs.getInt(3);
				session.setAttribute("seat2",sea);
				if(sea<seat){
					out.println("<script type=\"text/javascript\">");
                	out.println("alert('sorry specified seats are not available!!');");
                	out.println("window.history.back();");
                	out.println("</script>");
				}
				else{
					 
					%>
					<div class="row">
						  <div class="col-75">
						    <div class="container">
						      <form action="checkout.jsp" method="POST">
						
						        <div class="row">
						          <div class="col-50">
						            <h2>Billing Info</h2>
						            <table style="width:50%;margin-left: 30px;color:black">
						            <tr>
						            <%out.print(" <td><h3>Full Name</h3></td>"); %>
						            <%out.print(" <td><h3> : </h3></td>"); %>
						            <%out.print(" <td><h3>"+ufname+" "+ulname+"</h3></td>"); %>
						            
						            <tr>
						            <tr>
						            <%out.print(" <td><h3>Phone NO.</h3></td>"); %>
						            <%out.print(" <td><h3> : </h3></td>"); %>
						            <%out.print(" <td><h3>"+uphone+"</h3></td>"); %>

						            <tr>
						            <tr>
						            <%out.print(" <td><h3>Email</h3></td>"); %>
						            <%out.print(" <td><h3> : </h3></td>"); %>
						            <%out.print(" <td><h3>"+uemail+"</h3></td>"); %>
						            <tr>
									</table>	
						
						          <div class="col-50">
						            <h3>Payment</h3>
						            
						            <label for="cname">Name on Card</label>
						            <input type="text" id="cname" name="cardname" placeholder="John More Doe" required>
						            <label for="ccnum">Credit card number</label>
						            <input type="text" id="ccnum" name="cardnumber" placeholder="1111-2222-3333-4444" required>
						            <label for="expmonth">Exp Month</label>
						            <input type="text" id="expmonth" name="expmonth" placeholder="September" required>
						
						            <div class="row">
						              <div class="col-50">
						                <label for="expyear">Exp Year</label>
						                <input type="text" id="expyear" name="expyear" placeholder="2018" required>
						              </div>
						              <div class="col-50">
						                <label for="cvv">CVV</label>
						                <input type="text" id="cvv" name="cvv" placeholder="352" required>
						              </div>
						              <%
						            
						            out.print("<div class='col-50'>");
						            out.print(" <h2 for='fare'>Total fare : Rs."+fare+"</h2>");
						            out.print("</div>");
						            %>
						              
						            </div>
						          </div>
						
						        </div>
						        
						        <input type="submit" value="Continue to checkout" class="btn">
						      </form>
						    </div>
						  </div>
						
						  
					
                	<% 
                	 
				}
					
			}
			
			
		      con.close();
	        } catch (Exception e) {
	            System.out.println(e);
	        }
		   





%>
<script type="text/javascript">



</script>
</body>
</html>