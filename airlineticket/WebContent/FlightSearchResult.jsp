<%@page import="org.airlineticket.FlightSearchResult"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

    <head>

        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Flight Book</title>
		
		<link rel="icon" href="https://www-turkishairlines.akamaized.net/theme/img/icons/favicon.ico">

        <!-- CSS -->        
        <link rel="stylesheet" href="http://fonts.googleapis.com/css?family=Roboto:400,100,300,500">
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css" integrity="sha384-/Y6pD6FV/Vv2HJnA6t+vslU6fwYXjCFtcEpHbNJ0lyAFsXTsjBbfaDjzALeQsN6M" crossorigin="anonymous">
        <link rel="stylesheet" href="assets/font-awesome/css/font-awesome.min.css">
		<link rel="stylesheet" href="assets/css/form-elements.css">
        <link rel="stylesheet" href="assets/css/style.css">
		
    </head>
	
	

  <body style="background: -webkit-radial-gradient(rgb(136, 15, 159), rgb(6, 19, 31));  background: radial-gradient(rgb(136, 15, 159), rgb(6, 19, 31)); background:url('./assets/img/main.jpg');">  

      <jsp:include page="CustomerHeader.jsp"/>
      

                <!-- Top content -->
        <div class="top-content">
            <div class="inner-bg" style="padding:0px 0px 80px 0;">
                <div class="container">
                    <div class="row" style="margin-left:17%; margin-right:17%;">
                        
                        <div>
                        	<div class="form-box">
	                        	<div class="form-top">
	                        		<div class="form-top-left">
	                        			<h3 style ="color:white;">Available Flights</h3>
	                        		</div>
	                        		<div class="form-top-right">
	                        			<i class="fa fa-plane"></i>
	                        		</div>
	                            </div>
	                            <div class="form-bottom" style="color:white;">
	                            <%if(request.getAttribute("data") != null) {  %>
	                            <form action="BookSelctedTicket" method="post" class="flight-search-form">
				                    <table class="table">
									  <thead>
									    <tr>
									      <th scope="col">Flight ID</th>
									      <th scope="col">Airlines Name</th>
									      <th scope="col">From Location</th>
									      <th scope="col">To Location</th>
									      <th scope="col">Departure Date</th>
									      <th scope="col">Price</th>
									    </tr>
									  </thead>
									  <tbody>
									   <%-- Fetching the attributes of the request object which was previously set by the servlet 
							              "FlightSearchResult.java"
							        --%> 
							        <%ArrayList<FlightSearchResult> ftd = (ArrayList<FlightSearchResult>)request.getAttribute("data");
							        for(FlightSearchResult f:ftd){%>
							            <tr>
							            	<td><input type="radio" name="selected_flight" value="<%=f.getFlight_id()%>"><%=f.getFlight_id()%></td>
							            	<td><%=f.getAirlines_id()%></td>
							                <td><%=f.getFrom_location()%></td>
							                <td><%=f.getTo_location()%></td>
							                <td><%=f.getDeparture_date()%></td>
							                <td><%=f.getPrice()%></td>
							            </tr>
							            <%}%>
									  </tbody>
									</table>
									<div style="text-align:center;">
									<button style="margin-top:5%;" type="submit" style="" class="btn col-xs-5 col-md-5">Select Flights</button>
									</div>
								</form>
								<% } else { %>
									<div class="form-top-left">
	                        			<h3 style ="color:white;">Sorry! No result found...</h3>
	                        		</div>
								<% } %>
			                    </div>
		                    </div>
		            
                        </div>

                    </div>
                    
                </div>
            </div>
            
        </div>

        <jsp:include page="Footer.jsp"/>

   <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js" integrity="sha384-b/U6ypiBEHpOf/4+1nzFpr53nxSS+GLCkfwBdFNTxtclqqenISfwAzpKaMNFNmj4" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/js/bootstrap.min.js" integrity="sha384-h0AbiXch4ZDo7tp9hKZ4TsHbi047NrKGLO3SEJAg45jXxnGIfYzk4Si90RDIqNm1" crossorigin="anonymous"></script>
  
    <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
    <link rel="stylesheet" href="/resources/demos/style.css">
    <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
    <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
    <script src="assets/autocompleter.js"></script>
     
  </body>

</html>


