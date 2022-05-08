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
<title>Customer Booking Form</title>

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




<body Style="background-image: url('assets/images/queen_room.jpg'); background-repeat: no-repeat; background-attachment: fixed; background-position: center center"" >

 <!-- Validate the form -->
   <script type="text/javascript">
     function validate(){
    	 
    	
    	 
    	var bookID = document.forms["admin_insert_form"]["bookID"].value;
    	var fname = document.forms["admin_insert_form"]["field1"].value;
    	var lname = document.forms["admin_insert_form"]["field2"].value;
    	var phone = document.forms["admin_insert_form"]["phone"].value;
   	    var checkInDate = document.forms["admin_insert_form"]["checkInDate"].value;
   	    var checkOutDate = document.forms["admin_insert_form"]["checkOutDate"].value;
   	    var roomPref = document.forms["admin_insert_form"]["flexRadioDefault"].value;
   	    var rooms = document.forms["admin_insert_form"]["rooms"].value;
    	
    	<!--Book ID validation--> 
   	    if(bookID == ""){
   		 alert("Enter a valid ID");
   		 return false;
   	    }
   	    
   	    <!--First name validation--> 

	    <!-- //Check whether character or digit-->
	    if(!isNaN(fname)){
		 alert("Name should be in characters.");
		 return false;
	    }
	    
	    <!--Last name validation--> 

   	    <!-- //Check whether character or digit-->
   	    if(!isNaN(lname)){
   		 alert("Name should be in characters.");
   		 return false;
   	    }
   	    
   	    <!--Phone validation--> 
   	    if(isNaN(phone)){
		 alert("Phone number should be in digit.");
		 return false;
	    }
   	    
   	    if(phone.length!=10){
		 alert("Phone number must be a 10 digit number.");
		 return false;
	    }
   	    
   	    if(checkInDate>checkOutDate){
		 alert("Invalid dates of booking");
		 return false;
	    }
   	     
   	   <!--Room Preference Radio validation-->
	   if(roomPref==""){
		 alert("Please select a room preference.");
		 return false;
	   }
	   
	   <!--No of rooms validation-->
	   if(rooms<1){
		   alert("Please select the no.of rooms needed");
		   return false;
	   }
   	 
    	 
    	 
    }
   
   </script>


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
	<br>
	<br>
	<br>
	<br>

	<h2 style="text-align: center; color: white; text-shadow: 2px 2px 4px #000000">
		Hotel Booking Form</h2>
	<form action="AdminInsert" method="POST" name="admin_insert_form" onSubmit="validate()">
		<div class="form_container">

			<ul style="background-color: rgba(112, 128, 144); height: 630px"
				class="form-style-1">
				<h5 style="text-align: center">Booking Details</h5>
				<li>
				<label for="bookID">Booking ID <span class="required">*</span></label> 
				<input type="text" id="bookId" name="bookID" value="" class="field-divided" maxlength="5"><br>
				</li>

				<li>
				<label>Full Name <span class="required">*</span></label> 
				<input type="text" name="field1" class="field-divided" placeholder="First" maxlength="30" required /> 
				<input type="text" name="field2" class="field-divided" placeholder="Last"  maxlength="30" required /><br>
				</li>

				<li><label for="phone">Phone <span class="required">*</span></label>
					<input type="text" id="phone" name="phone" value="" class="field-divided" required><br>
				</li>

				<li>
				<label>Email <span class="required">*</span></label> 
				<input type="email" name="email" class="field-divided" maxlength="100" required /><br>
				</li>

				<li>
					<table>
						<tr class="field-divided">
							<th><label for="check_in_date">Check-in Date <span class="required">*</span></label></th>
							<th><label for="check_out_date">Check-out Date <span class="required">*</span></label></th>
						</tr>
						<tr class="field-divided">
							<td class="field-divided-cont-date">
							  <input style="width: 278px" type="datetime-local" id="check_in_date" name="checkInDate" required></td>
							<td class="field-divided-cont-date">
							<input style="width: 278px" type="datetime-local" id="check_out_date" name="checkOutDate" required></td>
						</tr>
					</table>
				</li>

				<li><label class="labelish">Room Preference <span
						class="required">*</span></label><br>
					<div class="form-check">
						<input class="form-check-input" type="radio"
							name="flexRadioDefault" id="flexRadioDefault1" value="Standard" required>
						<label class="form-check-label" for="flexRadioDefault1">
							Standard </label>
					</div>
					<div class="form-check">
						<input class="form-check-input" type="radio"
							name="flexRadioDefault" id="flexRadioDefault2" value="Deluxe" checked required>
						<label class="form-check-label" for="flexRadioDefault2">
							Deluxe </label>
					</div>
					<div class="form-check">
						<input class="form-check-input" type="radio"
							name="flexRadioDefault" id="flexRadioDefault1" value="Suite" required>
						<label class="form-check-label" for="flexRadioDefault1">
							Suite </label>
					</div></li>

				<li>
					<table>
						<tr class="field-divided2">
							<th><label for="noOfAdults">Adults <span
									class="required">*</span></label></th>
							<th><label for="noOfChildren">Children <span
									class="required">*</span></label></th>
							<th><label for="noOfRooms">Rooms <span
									class="required">*</span></label></th>
						</tr>
						<tr class="field-divided2">
							<td class="field-divided-cont2"><input type="number"
								id="adults" name="adults" value="" class="field-divided"></td>
							<td class="field-divided-cont2"><input type="number"
								id="children" name="children" value="" class="field-divided"></td>
							<td class="field-divided-cont2"><input type="number"
								id="rooms" name="rooms" value="" class="field-divided"></td>
						</tr>
					</table>
				</li>
				<br>
				<br>

				<center>
					<div>
						<button style="margin-right: 40px; margin-left: 100px"
							type="submit" class="btn btn-secondary">Submit</button>
						<a href="Admin_Booking_List.jsp"><button type="button" class="btn btn-secondary">Back</button></a>
					</div>
				</center>



			</ul>
		</div>
	</form>


  



	<br>
	<br>


	<jsp:include page="/view/Footer.jsp"></jsp:include>
</body>



</html>