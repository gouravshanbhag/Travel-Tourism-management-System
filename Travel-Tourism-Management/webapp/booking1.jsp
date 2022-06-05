<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.util.*"%>
	<%@ page import="java.sql.*" %>
	
	
<!DOCTYPE html>
<html>
    <head>
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
        <link rel="stylesheet" href="place.css">
        <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
		<script src=https://code.jquery.com/jquery-1.12.4.js></script>
		<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
		<script src="js/weat.js" defer></script>
        <style>
            table, th, td {
              border:2px solid black;
              
            }
            </style>
      <script>
			  $(function() {
			    $("#datepicker").datepicker();
			  });
			  
			 
			 
			  
	</script>
    <script src="booking.js" defer></script>
    <style>
    .weather {
    display: grid;
    grid-template-columns: 1fr 1fr;
    grid-gap: 20px;
}
.searchit{
			background-color: #abe9cd;
			background-image: linear-gradient(315deg, #abe9cd 0%, #3eadcf 74%);
			}
    
    </style>
    </head>
    <body style = "background-image : G:/temp/src/main/webapp/image/bg.jpg">
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
                            <a href = "booking.jsp" onclick="nextPage()"class = "nav-link">Booking</a>
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
                    <p>Looking for something useful to read about travelling in Karnataka? You’ve come to the right place. Join the league of readers who find here detailed insights, interesting travel tips and ideas and daily inspiration.</p>
                </div>
            </div>
        </header>
        <!-- header -->

        <hr>

        <!-- INDIVIDUAL BOOKING SECTION -->
        <div class="weather" >
            <div class="search" style="padding-left:6em;padding-top:6em;">
            <form action="booking1.jsp" method="POST">
            <label>From :</label>
            <br><br>
            <select name="From"  placeholder="From" required style="width: 20em;border-radius : 2em;height:2em;padding-left : 2em;">
				    <option value=""></option>
				    <option value="Mysore">Mysore</option>
				    <option value="Dandeli">Dandeli</option>
				    <option value="Bangalore">Bangalore</option>
				    <option value="Belgaum">Belgaum</option>
				  </select>
				  <br><br>
				  <label>To :</label>
           		 <br><br>
				  <select name="To" class="search-button" placeholder="To" required style="width: 20em;border-radius : 2em;height:2em;padding-left : 2em;">
				    <option value=""></option>
				    <option value="Mysore">Mysore</option>
				    <option value="Belgaum">Belgaum</option>
				    <option value="Dandeli">Dandeli</option>
				    <option value="Mysore">Mysore</option>
				  </select>
                <!-- <input name ="From" type="text" class="input-field" placeholder="From" required style="width: 20em;">
                <input name = "To" type="text" class="input-field search-button"   placeholder="To" required  style="width: 20em;"> -->
                <!-- <input type="checkbox" class="check-box"><span>Remember password</span> -->
                <br><br><br>
                <button class="searchit" type = "button" style="border-radius:2em;border-color: white;height:3em;width:8em;">check weather</button>
                <br><br><br>
                <button class="searchit" type="submit" style="border-radius:2em;border-color: white;height:3em;width:8em;">Submit</button>
                
                </form>
                
            </div>
            
            
            
            <div class="card-content" style="padding-top:4em;margin-left:20em;">
                <div class="weather loading">
                <h1 id = "city1" class="city">Weather in Belgaum</h1>
                <br>
                <div style="padding-right:10em;"class="flex">
                <h2 class="temperature">51 &#176 C</h2>
                <img class="icon"src="https://openweathermap.org/img/wn/04n.png" alt="" style="width:70px" />
                <h4 class="description">Cloudy</h4>
                </div>
                <br>
                <h3 class="humidity">Humidity   : 60%</h3>
                 <br><br>
                <h3 class="windspeed">windspeed : 6 km/h</h3>
                </div>
            </div>
            </div>
        <!-- INDIVIDUAL BOOKING SECTION -->

        <br><br>

        <!-- GALLERY SECTION -->
                <!-- gallery section -->
                <div id = "gallery" class = "py-4">
                    <div class = "container">
                        <div class = "gallery-row">
                            <div class = "gallery-item shadow">
                                <img src = "image/aihole temple.jpg" alt = "gallery img">
                            </div>
                            <div class = "gallery-item shadow">
                                <img src = "image/badami.jpg" alt = "gallery img">
                            </div>
                            <div class = "gallery-item shadow">
                                <img src = "image/charminar hyderabad.jpg" alt = "gallery img">
                            </div>
                            <div class = "gallery-item shadow">
                                <img src = "image/jog falls.jpg" alt = "gallery img">
                            </div>
                            <div class = "gallery-item shadow">
                                <img src = "image/shimoga.jpg" alt = "gallery img">
                            </div>
                            <div class = "gallery-item shadow">
                                <img src = "image/mysore palace-2.jpg" alt = "gallery img">
                            </div>
                            <div class = "gallery-item shadow">
                                <img src = "image/gokarna.jpg" alt = "gallery img">
                            </div>
                            <div class = "gallery-item shadow">
                                <img src = "image/dandeli.jpg" alt = "gallery img">
                            </div>
                            <div class = "gallery-item shadow">
                                <img src = "image/bandipur national park-2.jpg" alt = "gallery img">
                            </div>
                        </div>
                    </div>
                </div>
                <!-- END OF GALLERY SECTION -->
                <HR>

        <section>
            <h1 style="padding-left:1em;color:grey">Bus Schedule</h1>
           <div id="content">
            <table id ="table" style="width:70%;margin-left: 30px;color:gray">
                <tr>
                  <th>Bus id</th>
                  <th>Bus name</th>
                  <th>Arrival time</th>
                  <th>Departure time</th>
                  <th>Fare</th>
                  <th>Seats available</th>
                </tr>
                <%
                String from = request.getParameter("From");
        		String to = request.getParameter("To");
        		String database_user = "ue6o2ben3u1qhfjk";
                String database_password = "Zvhxjen3NCOotNN7Srnf";
        		   try {
        	            Class.forName("com.mysql.cj.jdbc.Driver");
        	            Connection con = DriverManager.getConnection(
        	                "jdbc:mysql://ue6o2ben3u1qhfjk:Zvhxjen3NCOotNN7Srnf@bz8wovmihcju8lhzuqtm-mysql.services.clever-cloud.com:3306/bz8wovmihcju8lhzuqtm", database_user, database_password);
        	                Statement stmt = con.createStatement();
        	                ResultSet rs ;
        	                rs = stmt.executeQuery("select bus_id,bus_name,Arrival_time,Departure_time,Fare,seats_available from BusSchedule,place where BusSchedule.place_id = place.place_id and Pfrom = '"+from+"' and Pto = '"+to+"' ");
        	               
        	                while(rs.next()){
        	                	  
        	                	
				                out.print("<tr>");
				                out.print("<td>"+rs.getInt(1)+"</td>");
				                out.print("<td>"+rs.getString(2)+"</td>");
				                out.print("<td>"+rs.getString(3)+"</td>");
				                out.print("<td>"+rs.getString(4)+"</td>");
				                out.print("<td>"+rs.getInt(5)+"</td>");
				                out.print("<td>"+rs.getInt(6)+"</td></tr>");
								
				                
				                
				                
				                
				            }
			            

			            
				      con.close();
			        } catch (Exception e) {
			            System.out.println(e);
			        }
        		   
                
                %>
                
              </table>
             
              </div>
              <br>
              <br>
                
                <div style="padding-left: 2em;margin: 0;">
                <input id="seats" type="text" class="input-field search-button"   placeholder="Seats required" required  style="width: 20em;">
                <!-- <input type="checkbox" class="check-box"><span>Remember password</span> -->
                <br><br>
				<p style="color:grey;">Date: <input name="Bdate" required style="color : grey;border-radius:2em;padding-left:2em;height:2em;" type="text" id="datepicker"></p>
				<br><br>
                <button onclick="checking()" class="submit-btn" style="width: 100px;margin-left: 2em;">Book</button>
                </div>
                
        </section>
        <!-- end of blog section -->
        

        <!-- footer -->
        <footer class = "py-4" style="margin-top: 100px;">
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
      	  sessionStorage.setItem("allow","yes");
      }  
        var table = document.getElementById('table');
	  	 var rindex;
	  	 for(var i=0;i<table.rows.length;i++)
		  {
	  		 table.rows[i].onclick =function(){
					
			    	rindex = (this.rowIndex);
			    	content = table.rows[rindex].cells[0].innerText;
			    	sessionStorage.setItem("rindex",rindex);
			    	
			    	let successMsg = ['Bus Selected, Upper Berth', 'Bus Selected, Lower Berth', 'Bus Selected, Middle Berth'];
			    	

			    	alert(successMsg[Math.floor(Math.random() * successMsg.length)]);
			    	
			    	//console.log(rindex);
		     }
		  }
     	function checking(){
     		var seat = document.getElementById("seats").value;
			var date = document.getElementById("datepicker").value;
			
			if(seat.length == 0 || date.length == 0)
				{
				alert("both fields need to be filled")
				}
			else
			{
     		window.location.href='booking2.jsp?b_id='+content+'&seat='+seat+'&date='+date;
			}
     		
     	}
     	 
     		
	  	
    	  	
        </script>
       
        
    </body>
</html>