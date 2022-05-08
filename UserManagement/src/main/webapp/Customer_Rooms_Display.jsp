<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">


<!DOCTYPE html>
<html lang="en">



<head>
<title>Rooms Displays</title>

<!-- Meta-Tags -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta charset="utf-8">
<meta name="keywords"
	content="Clear login Form a Responsive Web Template, Bootstrap Web Templates, Flat Web Templates, Android Compatible Web Template, Smartphone Compatible Web Template, Free Webdesigns for Nokia, Samsung, LG, Sony Ericsson, Motorola Web Design">
<style>
@font-face {
	font-family: 'FontAwesome';
	src: url('assets/webfonts/fontawesome-webfont.eot?v=4.7.0');
	src: url('assets/webfonts/fontawesome-webfont.eot?#iefix&v=4.7.0')
		format('embedded-opentype'),
		url('assets/webfonts/fontawesome-webfont.woff2?v=4.7.0')
		format('woff2'),
		url('assets/webfonts/fontawesome-webfont.woff?v=4.7.0') format('woff'),
		url('assets/webfonts/fontawesome-webfont.ttf?v=4.7.0')
		format('truetype'),
		url('assets/webfonts/fontawesome-webfont.svg?v=4.7.0#fontawesomeregular')
		format('svg');
	font-weight: normal;
	font-style: normal;
}
</style>



<!-- //Meta-Tags -->
<!-- Stylesheets -->
<link href="assets/css/font-awesome1.css" rel="stylesheet">
<link href="assets/css/login.css" rel='stylesheet' type='text/css' />
<link href="assets/css/RoomsDisplay.css" rel='stylesheet' type='text/css' />
<!--// Stylesheets -->
<!--fonts-->
<!-- title -->
<!-- body -->
<link
	href="assets/webfonts/fonts.googleapis.com/css?family=Poppins:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i&amp;subset=devanagari,latin-ext"
	rel="stylesheet">
<!--//fonts-->

<link rel="stylesheet" type="text/css"
	href="assets/css/style-starter.css">

<link rel="stylesheet" type="text/css"
	href="assets/css/Admin_Insert_Styles.css">



</head>




<body
	Style=" background-color:white; background-repeat: no-repeat; background-attachment: fixed; background-position: center center" >




	<header id="site-header" class="fixed-top">
		<div class="container">
			<nav class="navbar navbar-expand-lg stroke">
				<a class="navbar-brand" href="index.html"> <img
					src="assets/images/logo3.png" style="height: 70px" />
				</a>
				<button class="navbar-toggler collapsed bg-gradient" type="button"
					data-toggle="collapse" data-target="#navbarTogglerDemo02"
					aria-controls="navbarTogglerDemo02" aria-expanded="false"
					aria-label="Toggle navigation">
					<span class="navbar-toggler-icon fa icon-expand fa-bars"></span> <span
						class="navbar-toggler-icon fa icon-close fa-times"></span>
				</button>



				<div class="collapse navbar-collapse" id="navbarTogglerDemo02">
					<ul class="navbar-nav mr-auto">
						<li class="nav-item "><a class="nav-link" href="Home.jsp">Home
						</a></li>
						<li class="nav-item active"><a class="nav-link"
							href="about.html">Bookings</a></li>
						<li class="nav-item"><a class="nav-link" href="services.html">Payments</a>
						</li>
						<li class="nav-item"><a class="nav-link" href="services.html">Contact
								Us</a></li>
						<li class="nav-item"><a class="nav-link" href="services.html">About
								Us</a></li>




					</ul>
				</div>



				<!-- toggle switch for light and dark theme -->
				<div class="mobile-position">
					<nav class="navigation">
						<div class="theme-switch-wrapper">
							<label class="theme-switch" for="checkbox"> <input
								type="checkbox" id="checkbox">
								<div class="mode-container">
									<i class="gg-sun"></i> <i class="gg-moon"></i>
								</div>
							</label>
						</div>
					</nav>
				</div>
				<!-- //toggle switch for light and dark theme -->
	</header>
	<br><br><br><br><br>
	

	<div  class="room-list-container" style="margin-left:10%">
	
	 <h2 style="color:black">BOOK YOUR ROOM TODAY</h2><br>
	 

    <section style="margin:10px 0" class="rooms sec-width" id="rooms">
   
    <br>
    <div style=" margin-left: 0.5%; margin-right: 0.5%;  flex-direction: column" class="rooms-container">
    
      <!--single room-->
      <article style="display: flex; padding-bottom: 0; margin: 5px 0;  margin: 10px" class="room">
        <div class="room-image">
          <img width="2000px"  src="assets/images/queen_room.jpg" alt="room-image">
        </div>
        <div style="padding:5px 20px" class="room-text">
          <p></p>
          <h3 style="color:#00adad;">Single Room</h3><br>
          <p style="text-align: justify;">The Single Room is ideal for one traveler looking for a comfortable single room with a private full bathroom at the best price available at The Golden Beach Hotel. Standard Single Rooms provide a twin bed, a writing desk, television, complimentary wifi internet access and air conditioning.</p>
          <br>
          <p style="opacity:0.8" class="rate">
            <span style="  font-size: 40px;
  font-weight: 900;
  color:#00adad;">Rs.16,000/-</span> (24 hours) - Breakfast included
          </p>
          <br>
          <a href="<%=request.getContextPath()%>/Customer_Booking_Form.jsp"><button style="margin-right: 40px; margin-left: 100px" type="submit" class="btn btn-secondary">Book Now</button></a>


        </div>
       </article>
      <!--End of the single room-->

        <br><br>
       <!--double room-->
      <article style="flex-direction:row-reverse; display: flex; padding-bottom: 0; margin: 5px 0" class="room">
        <div class="room-image">
          <img width="2000px" src="assets/images/queen_room.jpg" alt="room-image">
        </div>
        <div style="padding:5px 20px" class="room-text">
          <p></p>
          <h3  style="color:#00adad;">Double Room</h3><br>
          <p style="text-align: justify;">The Standard Double Room with a full bathroom is ideal for one or two travelers looking for a comfortable stay at the best price. Standard Double Rooms provide a queen bed, a private full bathroom, a writing desk, an in-room safe, television, complimentary wifi internet access, daily housekeeping and air conditioning.</p>
          <br>
          <p style="opacity:0.8" class="rate">
            <span style="font-size: 40px; font-weight: 900; color:#00adad;">Rs.24,000/-</span> (24 hours) - Breakfast included
          </p>
          <br>
          <a href="<%=request.getContextPath()%>/Customer_Booking_Form.jsp"><button style="margin-right: 40px; margin-left: 100px" type="submit" class="btn btn-secondary">Book Now</button></a>

          
        </div>
       </article>
      <!--End of the double room-->
       <br><br>
       
      <!--triple room-->
      <article style="display: flex; padding-bottom: 0; margin: 5px 0" class="room">
        <div class="room-image">
          <img width="2000px" src="assets/images/queen_room.jpg" alt="room-image">
        </div>
        <div style="padding:5px 20px" class="room-text">
          <p></p>
          <h3 style="color:#00adad;">Triple Room</h3><br>
          <p style="text-align: justify;">The Standard Triple Room with full bathroom is ideal for four travelers looking for a comfortable stay at the best price. Standard Triple Rooms provide a double bed and a single bed or 3 single beds, a private full bathroom, a writing desk, an in-room safe, television, complimentary wifi internet access, daily housekeeping and air conditioning.</p>
          <br>
          <p  style="opacity:0.8" class="rate">
            <span style="font-size: 40px; font-weight: 900; color:#00adad;">Rs.30,000/-</span> (24 hours) - Breakfast included
          </p>
          <br>
         <a href="<%=request.getContextPath()%>/Customer_Booking_Form.jsp"><button style="margin-right: 40px; margin-left: 100px" type="submit" class="btn btn-secondary">Book Now</button></a>
          
        </div>
       </article>
      <!--End of the triple room-->
      <br><br>
        <!--quad room-->
      <article style="flex-direction:row-reverse; display: flex; padding-bottom: 0; margin: 5px 0" class="room">
        <div  class="room-image">
          <img width="2000px" src="assets/images/queen_room.jpg" alt="room-image">
        </div>
        <div style="padding:5px 20px" class="room-text">
          <p></p>
          <h3  style="color:#00adad;">Quad Room</h3><br>
          <p style="text-align: justify;">The Standard Quad Room with 2 full bathrooms is ideal for one or two travelers looking for a comfortable stay at the best price. Standard Quad Rooms provide 2 double beds or 3 single beds, 2 private full bathrooms, a kitchen, a sofa,a writing desk, a table, an in-room safe, television, complimentary wifi internet access, daily housekeeping and air conditioning.</p>

          <br>
          <p  style="opacity:0.8"  class="rate">
            <span style="font-size: 40px; font-weight: 900; color:#00adad;">Rs.40,000/-</span> (24 hours) - Breakfast included
          </p>
          <br>
         <a href="<%=request.getContextPath()%>/Customer_Booking_Form.jsp"><button style="margin-right: 40px; margin-left: 100px" type="submit" class="btn btn-secondary">Book Now</button></a>
       
        </div>
       </article>
      <!--End of the quad room-->
      <br><br>
       <!--queen room-->
      <article style="display: flex; padding-bottom: 0; margin: 5px 0" class="room">
        <div  class="room-image">
          <img height="100%" width="2000px" src="assets/images/queen_room.jpg" alt="room-image">
        </div>
        <div style="padding:5px 20px" class="room-text">
          <p></p>
          <h3  style="color:#00adad;">Queen Room</h3><br>
          <p style="text-align: justify;">The Standard Queen Room with 2 full bathrooms is ideal for 1 or 2 travellers looking for a luxury comfortable stay at the best price. Standard Queen Rooms provide 1 double bed, a private full bathrooms, a kitchen with luxury fridge and other facilities, a sofa, a large LED TV, a TV room, a dressing room, a lobby, a writing desk, a dining table, a large cuboard, an in-room safe, complimentary wifi internet access, daily housekeeping and air conditioning.</p>

          <br>
          <p style="opacity:0.8" class="rate">
            <span style="font-size: 40px; font-weight: 900; color:#00adad;">Rs.50,000/-</span> (24 hours) - Breakfast included
          </p>
          <br>
           <a href="<%=request.getContextPath()%>/Customer_Booking_Form.jsp"><button style="margin-right: 40px; margin-left: 100px" type="submit" class="btn btn-secondary">Book Now</button></a>
        </div>
       </article>
      <!--End of the queen room-->

      
      
	
	<div class=room-container>
	<br><br>
	</div>
	
      
	</div>

	</section>
	</div>
	
	
	<jsp:include page="/view/Footer.jsp"></jsp:include>
</body>



</html>




