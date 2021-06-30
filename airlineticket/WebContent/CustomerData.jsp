<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

    <head>

        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Fill Customer Detail</title>
		
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
	                            <form action="CustomerData" method="post" class="flight-search-form">
				                      <p>Please fill in this form to book ticket.</p>
									  <hr>
									 <label for="fName" style="width:40%"><b>First Name</b></label>
									  <input type="text" style="width:50%" placeholder="Enter First Name" name="fname" id="fName" required><br><br>
									  
									  <label for="lName" style="width:40%"><b>Last Name</b></label>
									  <input type="text" style="width:50%" placeholder="Enter Last Name" name="lname" id="lName" required></br><br>
									
									  <label for="password" style="width:40%"><b>Password</b></label>
									  <input type="password" style="width:50%" placeholder="Enter Password" name="password" id="password" required></br><br>
									 
									 <label for="Address" style="width:40%"><b>Address</b></label>
									  <input type="text" style="width:50%" placeholder="Enter Address" name="address" id="Address" required></br><br>
									 
									 <label for="telno" style="width:40%" ><b>Phone Number</b></label>
									  <input type="text" style="width:50%" placeholder="Enter Phone number" name="telno" id="phoneNo" required></br><br>
									 
									  <label for="email" style="width:40%"><b>Email</b></label>
									  <input type="text" style="width:50%" placeholder="Enter Email" name="email" id="email" required></br><br>
									  
									 <input type="hidden" id="selected_flight" name="selected_flight" value="<%=request.getAttribute("data")%>">
									
									<div style="text-align:center;">
									<button style="margin-top:5%;" type="submit" style="" class="btn col-xs-5 col-md-5">Book Flights</button>
									</div>
									
									</form>
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


