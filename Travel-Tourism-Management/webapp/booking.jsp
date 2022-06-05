<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.util.*"%>
	<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <title>WONDER TRAVELS</title>
        <meta name="description" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <!-- font awesome cdn -->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" integrity="sha512-iBBXm8fW90+nuLcSKlbmrPcLa0OT92xO1BIsZ+ywDWZCvqsWgccV3gFoRBv0z+8dLJgyAHIhR35VZc2oM/gI1w==" crossorigin="anonymous" referrerpolicy="no-referrer" />
        <!-- fonts -->
        <link rel = "stylesheet" href = "font/fonts.css">
        <!-- normalize css -->
        <link rel = "stylesheet" href = "css/normalize.css">
        <!-- custom css -->
        <link rel = "stylesheet" href = "css/utility.css">
        <link rel = "stylesheet" href = "css/style.css">
        <link rel = "stylesheet" href = "css/responsive.css">
        <style>
        table, th, td {
            border:2px solid black;
            
          }
        </style>
    </head>
    <body>
        <!-- navbar  -->
        <nav class = "navbar">
            <div class = "container flex">
                <a href = "index.html" class = "site-brand">Wonder<span>Travels</span></a>

                <button type = "button" id = "navbar-show-btn" class = "flex">
                    <i class = "fas fa-bars"></i>
                </button>
                <div id = "navbar-collapse">
                    <button type = "button" id = "navbar-close-btn" class = "flex">
                        <i class = "fas fa-times"></i>
                    </button>
                    <ul class = "navbar-nav">
                        <li class = "nav-item">
                            <a href = "index.html" class = "nav-link">Home</a>
                        </li>
                        <li class = "nav-item">
                            <a href = "gallery.html" class = "nav-link">Gallery</a>
                        </li>
                        <li class = "nav-item">
                            <a href = "blog.html" class = "nav-link">Blog</a>
                        </li>
                        <li class = "nav-item">
                            <a href = "booking.jsp" class = "nav-link">Booking</a>
                        </li>
                        <li class = "nav-item">
                            <a href = "contact.html" class = "nav-link">Contact</a>
                        </li>
                        <li class = "nav-item">
                            <a href = "about.html" class = "nav-link">About</a>
                        </li>
                        <li class = "nav-item">
                            <a href = "login.html" class = "nav-link">Login</a>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>
        <!-- end of navbar  -->

        <!-- header -->
        <header class = "flex">
            <div class = "container">
                <div class = "header-title">
                    <h1>Booking</h1>
                    <p>Book With Us And Book It Out Of Here!</p>
                </div>
            </div>
        </header>
        <!-- header -->

        <!-- about section -->
        <section id = "about" class = "py-4">
            <div class = "container">
                <div class = "title-wrap">
                    <!-- <span class = "sm-title">things to know about us</span> -->
                    <h2 class = "lg-title">Book your Destination</h2>
                </div>


                <div class = "blog-row">
                    <div class = "blog-item my-2 shadow">
                        <div class = "blog-item-top">
                            <img src = "image/bangalore palace.jpg" alt = "blog">
                            <!-- <button class = "blog-book" type="button"> Book Now! </button> -->
                           		<button onclick="nextPage()" class="blog-book" type="button"> BOOK NOW!</button>
                        </div>
                        <div class = "blog-item-bottom">
                            <span>BANGALORE PALACE</span>
                            <h2>Lorem ipsum dolor sit amet consectetur adipisicing elit.</h2>
                            <p class = "text">Lorem ipsum dolor sit amet consectetur adipisicing elit. Distinctio voluptatem nulla harum accusantium tempora dicta quas quod id, repellat temporibus illo libero explicabo laboriosam.</p>
                        </div>
                    </div>

                    <div class = "blog-item my-2 shadow">
                        <div class = "blog-item-top">
                            <img src = "image/devbagh beach.jpg" alt = "blog">
                            <!-- <button class = "blog-book" type="button"> Book Now! </button> -->
                           <button onclick="nextPage()" class="blog-book" type="button"> BOOK NOW!</button>
                        </div>
                        <div class = "blog-item-bottom">
                            <span>DEVBAGH BEACH</span>
                            <h2>Lorem ipsum dolor sit amet consectetur adipisicing elit.</h2>
                            <p class = "text">Lorem ipsum dolor sit amet consectetur adipisicing elit. Distinctio voluptatem nulla harum accusantium tempora dicta quas quod id, repellat temporibus illo libero explicabo laboriosam.</p>
                        </div>
                    </div>

                    <div class = "blog-item my-2 shadow">
                        <div class = "blog-item-top">
                            <img src = "image/bandipur national park-2.jpg" alt = "blog">
                            <!-- <button class = "blog-book" type="button"> Book Now! </button> -->
                            <button onclick="nextPage()" class="blog-book" type="button"> BOOK NOW!</button>
                        </div>
                        <div class = "blog-item-bottom">
                            <span>BANDIPUR NATIONAL PARK</span>
                            <h2>Lorem ipsum dolor sit amet consectetur adipisicing elit.</h2>
                            <p class = "text">Lorem ipsum dolor sit amet consectetur adipisicing elit. Distinctio voluptatem nulla harum accusantium tempora dicta quas quod id, repellat temporibus illo libero explicabo laboriosam.</p>
                        </div>
                    </div>

                    <div class = "blog-item my-2 shadow">
                        <div class = "blog-item-top">
                            <img src = "image/gokarna.jpg" alt = "blog">
                            <!-- <button class = "blog-book" type="button"> Book Now! </button> -->
                            <button onclick="nextPage()" class="blog-book" type="button"> BOOK NOW!</button>
                        </div>
                        <div class = "blog-item-bottom">
                            <span>GOKARNA BEACH</span>
                            <h2>Lorem ipsum dolor sit amet consectetur adipisicing elit.</h2>
                            <p class = "text">Lorem ipsum dolor sit amet consectetur adipisicing elit. Distinctio voluptatem nulla harum accusantium tempora dicta quas quod id, repellat temporibus illo libero explicabo laboriosam.</p>
                        </div>
                    </div>

                    <div class = "blog-item my-2 shadow">
                        <div class = "blog-item-top">
                            <img src = "image/mysore palace-2.jpg" alt = "blog">
                            <button class = "blog-book" type="button"> Book Now! </button>
                        </div>
                        <div class = "blog-item-bottom">
                            <span>MYSORE PALACE</span>
                            <h2>Lorem ipsum dolor sit amet consectetur adipisicing elit.</h2>
                            <p class = "text">Lorem ipsum dolor sit amet consectetur adipisicing elit. Distinctio voluptatem nulla harum accusantium tempora dicta quas quod id, repellat temporibus illo libero explicabo laboriosam.</p>
                        </div>
                    </div>

                    <div class = "blog-item my-2 shadow">
                        <div class = "blog-item-top">
                            <img src = "image/coorg.jpg" alt = "blog">
                            <!-- <button class = "blog-book" type="button"> Book Now! </button> -->
                            <button onclick="nextPage()" class="blog-book" type="button"> BOOK NOW!</button>
                        </div>
                        <div class = "blog-item-bottom">
                            <span>COORG</span>
                            <h2>Lorem ipsum dolor sit amet consectetur adipisicing elit.</h2>
                            <p class = "text">Lorem ipsum dolor sit amet consectetur adipisicing elit. Distinctio voluptatem nulla harum accusantium tempora dicta quas quod id, repellat temporibus illo libero explicabo laboriosam.</p>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <section>
            <h1 style="padding-left: 2em;color: grey;">Your Bookings</h1>
            <br><br>
            <table id="table" style="width:70%;margin-left: 30px;color:gray">
                <tr>
                  <th>Sl no.</th>
                  <th>Bus name</th>
                  <th>From</th>
                  <th>To</th>
                  <th>Arrival time</th>
                  <th>Departure time</th>
                  <th>Fare</th>
                  <th>Seats booked</th>
                  <th>Date</th>
                  <th>berth</th>
                </tr>
                <%
				String cid = String.valueOf(session.getAttribute("send"));
                
                String database_user = "ue6o2ben3u1qhfjk";
                String database_password = "Zvhxjen3NCOotNN7Srnf";
        		   try {
        	            Class.forName("com.mysql.cj.jdbc.Driver");
        	            Connection con = DriverManager.getConnection(
        	                "jdbc:mysql://ue6o2ben3u1qhfjk:Zvhxjen3NCOotNN7Srnf@bz8wovmihcju8lhzuqtm-mysql.services.clever-cloud.com:3306/bz8wovmihcju8lhzuqtm", database_user, database_password);
        	                Statement stmt2 = con.createStatement();
        	                ResultSet rs;
        	                rs = stmt2.executeQuery("select TP_id,bus_name,Pfrom,Pto,Arrival_time,Departure_time,Fare,Seat,Bdate from BusSchedule,place,TBooking where BusSchedule.place_id = place.place_id and TBooking.bid = BusSchedule.bus_id and TBooking.Cid ="+cid );
        	               
        	                while(rs.next()){
        	                	  
        	                	
        	                	out.print("<tr>");
        	                	
				                out.print("<td>"+rs.getInt(1)+"</td>");
				                out.print("<td>"+rs.getString(2)+"</td>");
				                out.print("<td>"+rs.getString(3)+"</td>");
				                out.print("<td>"+rs.getString(4)+"</td>");
				                out.print("<td>"+rs.getString(5)+"</td>");
				                out.print("<td>"+rs.getString(6)+"</td>");
				                out.print("<td>"+rs.getInt(7)+"</td>");
				                out.print("<td>"+rs.getInt(8)+"</td>");
				                out.print("<td>"+rs.getString(9)+"</td></tr>");
				                
				                
								
				                
				                
				                
				                
				            }
			            

			            
				      con.close();
			        } catch (Exception e) {
			            System.out.println(e);
			        }
        		   
                
                %>
              </table>
              <br>
              <br>
              <button onclick ="confirm()" style="margin-left:3em;border-radius:2em;width:100px;height:3em;">Cancel Booking</button>
              <br>
              <br>
        </section>
        <!-- end of about section -->

        
        <!-- footer -->
        <footer class = "py-4">
            <div class = "container footer-row">
                <div class = "footer-item">
                    <h1><b><i>WONDER</b> TRAVELS</i></h1>
                    <p class = "text">Let's plan the trip of your dreams. Meet the world. Great Faces Great Places. Creating memories you will want to revisit.</p>
                </div>

                <div class = "footer-item">
                    <h2>Follow us on: </h2>
                    <ul class = "social-links">
                        <li>
                            <a href = "https://www.facebook.com/">
                                <i class = "fab fa-facebook-f"></i>
                            </a>
                        </li>
                        <li>
                            <a href = "https://www.instagram.com/">
                                <i class = "fab fa-instagram"></i>
                            </a>
                        </li>
                        <li>
                            <a href = "https://www.twitter.com/">
                                <i class = "fab fa-twitter"></i>
                            </a>
                        </li>
                    </ul>
                </div>
				
                <div class = "footer-item">
                    <h2>Popular Places:</h2>
                    <ul>
                        <li>Gol Gumbaz</li>
                        <li>Aihole</li>
                        <li>Hampi</li>
                        <li>Devbagh Beach</li>
                        <li>Bangalore Palace</li>
                    </ul>
                </div>

                <div class = "xyz">
                    <h2>No matter where you're going from, we take you there.</h2>
                </div>
            </div>
        </footer>
        <!-- end of footer -->

        <!-- js -->
        <script src = "js/script.js"></script>
       
        <script>
          function nextPage(){
        	  allow = sessionStorage.getItem("allow");
        	  if(allow == "yes")
        		  location = "booking1.jsp";
        	  else
        		  location = "login.html";
          } 
          var table = document.getElementById('table');
          var rindex,content;
  	  	 for(var i=0;i<table.rows.length;i++)
  		  {
  	  		 table.rows[i].onclick =function(){
  	  			
			    	rindex = this.rowIndex;
			    	content = table.rows[rindex].cells[0].innerText;
			    	
			    	alert("Booking to be  canceled selected");
			    	//console.log(rindex);
		     }
		  }
  	  	 
 	  	function confirm(){
 	  		window.location.href = "booking.jsp?content="+content;
 			 <%
 			String tpid = request.getParameter("content");
 			 
 			 try {
 		            Class.forName("com.mysql.cj.jdbc.Driver");
 		            Connection con = DriverManager.getConnection("jdbc:mysql://ue6o2ben3u1qhfjk:Zvhxjen3NCOotNN7Srnf@bz8wovmihcju8lhzuqtm-mysql.services.clever-cloud.com:3306/bz8wovmihcju8lhzuqtm", database_user, database_password);
 		                
 				Statement stmt3 = con.createStatement();
 	        	
 	        	stmt3.executeUpdate("delete from TBooking where TP_id = "+tpid);
 			  
 	          

 	          
 			      con.close();
 		        } catch (Exception e) {
 		            System.out.println(e);
 		        }
 			   
 				 %> 
 				
 				 alert("booking canceled succcessfully !!!.....REFUND COMPLETE.....!!!!");
 				window.location.reload()

 		  }
 	  	
        </script>
    </body>
</html>