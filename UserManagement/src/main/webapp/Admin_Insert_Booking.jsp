<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<title>Admin_Booking</title>
<script src='https://kit.fontawesome.com/a076d05399.js' crossorigin='anonymous'></script>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
	
<link rel="stylesheet" type="text/css"
	href="assets/css/Admin_Insert_Styles.css">
</head>
<body Style="background-image: url('assets/images/queen_room.jpg'); background-repeat: no-repeat; background-attachment: fixed; background-position: center center"">

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








<br/><br/><br/><br/>
<!--<center>-->



	<h2 style="text-align: center; color: white; text-shadow: 2px 2px 4px #000000">
	
	<c:if test="${user != null}">
            			Edit Booking
            		</c:if>
						<c:if test="${user == null}">
            			Add New Booking
            		</c:if>
		</h2>
		
		<c:if test="${user != null}">
				
	<form  action="updatebooking" method="post" name="admin_insert_form" onSubmit="validate()">
	</c:if>
	
	<c:if test="${user == null}">
	<form action="insertbooking" method="post" name="admin_insert_form" onSubmit="validate()">
	</c:if>
	
	
		<div class="form_container" >

			<ul style="background-color: rgba(112, 128, 144); height: 630px"
				class="form-style-1">
				<h5 style="text-align: center"> Booking Entry</h5>
				<li >
				<label for="bookID">Booking ID <span class="required">*</span></label> 
				<input type="text" id="bookId" name="BookingID" value="<c:out value='${user.bookingID}' />"   class="field-divided" maxlength="5"><br>
				</li>

				<li>
				<label>Full Name <span class="required">*</span></label> 
				<input type="text" name="FirstName" class="field-divided" placeholder="First" value="<c:out value='${user.firstName}' />" maxlength="30" required /> 
				<input type="text" name="LastName" class="field-divided" placeholder="Last" value="<c:out value='${user.lastName}' />"  maxlength="30" required /><br>
				</li>

				<li><label for="phone">Phone <span class="required">*</span></label>
					<input type="text" id="Phone" name="Phone" value="<c:out value='${user.phone}' />" class="field-divided" required><br>
				</li>

				<li>
				<label>Email <span class="required">*</span></label> 
				<input type="Email" name="Email" class="field-divided" value="<c:out value='${user.email}' />"  maxlength="100" required /><br>
				</li>

				<li>
					<table>
						<tr class="field-divided">
							<th><label style="font-size:13px" for="check_in_date">Check-in Date <span class="required">*</span></label></th>
							<th><label style="font-size:13px" for="check_out_date">Check-out Date <span class="required">*</span></label></th>
						</tr>
						<tr class="field-divided">
							<td class="field-divided-cont-date">
							  <input style="font-size:13px; width:279px;" name="CheckIn" style="width: 278px" type="datetime-local" value="<c:out value='${user.checkIn}' />"  id="check_in_date"  required></td>
							<td class="field-divided-cont-date">
							<input  style="font-size:13px; width:279px;" name="CheckOut" style="width: 278px" type="datetime-local" value="<c:out value='${user.checkOut}' />"  id="check_out_date"  required></td>
						</tr>
					</table>
				</li>

				<li>
				<label>Room Preference (Standard/Deluxe/Suite) <span class="required">*</span></label> 
				<input type="text" name="RoomPreference" class="field-divided" value="<c:out value='${user.roomPreference}' />"  maxlength="100" required /><br>
				</li>
					
					

				<li>
					<table>
						<tr class="field-divided2">
							<th><label style="font-size:13px" for="noOfAdults">Adults <span
									class="required">*</span></label></th>
							<th><label style="font-size:13px" for="noOfChildren">Children <span
									class="required">*</span></label></th>
							<th><label style="font-size:13px" for="noOfRooms">Rooms <span
									class="required">*</span></label></th>
						</tr>
						<tr class="field-divided2">
							<td class="field-divided-cont2"><input type="number"
								id="adults" name="Adults" value="<c:out value='${user.adults}' />"  class="field-divided"></td>
							<td class="field-divided-cont2"><input type="number"
								id="children" name="Children" value="<c:out value='${user.children}' />"  class="field-divided"></td>
							<td class="field-divided-cont2"><input type="number"
								id="rooms" name="Rooms" value="<c:out value='${user.rooms}' />"  class="field-divided"></td>
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


</center>



	<br>
	<br>


	<jsp:include page="/view/Footer.jsp"></jsp:include>
















</body>
</html>
