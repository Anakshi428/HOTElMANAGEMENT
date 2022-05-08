<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


<html>
<head>
<title>Admin_Booking_List</title>
<script src='https://kit.fontawesome.com/a076d05399.js' crossorigin='anonymous'></script>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
	
<link rel="stylesheet" type="text/css"
	href="assets/css/Admin_Insert_Styles.css">
</head>
<body Style="background-image: url('assets/images/queen_room.jpg'); background-repeat: no-repeat; background-attachment: fixed; background-position: center center"" >
    
    
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
    
    

	<br>

	<div class="row">
		<!-- <div class="alert alert-success" *ngIf='message'>{{message}}</div>-->

		<div class="container" style="background-color:	#778899; max-width:1500px">
		    <br>
			<h3 class="text-center">List of Bookings</h3>
			<hr>
			<div style="margin-right:70%">
			<input style="float: right; padding: 6px 10px; margin-top: 0px; margin-right: 30px; background: #ddd; font-size: 17px; border: none;
  cursor: pointer" type="text" placeholder="Search..">
			</div>
			<div class="container text-left" style="margin-left:87%">
              <a href="<%=request.getContextPath()%>/newbooking"><button style="border: none;
  color: white;
  background-color:#6495ED;
  padding: 10px 27px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
  margin: 4px 2px;
  cursor: pointer" type="button">Add New</button></a>
			</div>
			<br>
			<table class="table table-bordered">
				<thead>
					<tr>
						<th>Booking ID</th>
						<th>First Name</th>
						<th>Last Name</th>
						<th>Phone</th>
						<th>Email</th>
						<th>Check-in-Date</th>
						<th>Check-out-Date</th>
						<th>Room Preference</th>
						<th>Adults</th>
						<th>Children</th>
						<th>Rooms</th>
						<th>Status</th>
						<th>Action</th>
					</tr>
				</thead>
				<tbody>
				          
				    	<!--   for (Todo todo: todos) {  -->
					<c:forEach var="booking" items="${listUser}">

					<tr>
							<td><c:out value="${booking.bookingID}" /></td>
							<td><c:out value="${booking.firstName}" /></td>
							<td><c:out value="${booking.lastName}" /></td>
							<td><c:out value="${booking.phone}" /></td>
							<td><c:out value="${booking.email}" /></td>
							<td><c:out value="${booking.checkIn}" /></td>
							<td><c:out value="${booking.checkOut}" /></td>
							<td><c:out value="${booking.roomPreference}" /></td>
							<td><c:out value="${booking.adults}" /></td>
							<td><c:out value="${booking.children}" /></td>
							<td><c:out value="${booking.rooms}" /></td>
							<td></td>
							<td>
							 <a href="editbooking?BookingID=<c:out value='${booking.bookingID}' />"><i style='font-size:18px; margin-right:14px; color:#3F2088' type="button"  class='fas'>&#xf044;</i></a>

                       <a href="deletebooking?BookingID=<c:out value='${booking.bookingID}' />">  
                       <i style='font-size:18px; color:brown' type="button" class='fas'>&#xf1f8;</i> </a>  </td>
							
							
						</tr>
					
					</c:forEach>
					<!-- } -->
					
				</tbody>

			</table>
			
			<br><br><br><br><br><br>
		</div>
	</div>
	
	
	<br>
	<br>


	<jsp:include page="/view/Footer.jsp"></jsp:include>
</body>
</html>