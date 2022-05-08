
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">
<!DOCTYPE html>
<html lang="en">
<head>
<title>Payment Information</title>
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
	href="assets/css/PaymentInformation.css">
</head>
<body
	Style="background-image: url('assets/images/pay1.jpg'); background-repeat: no-repeat; background-attachment: fixed; background-position: center center">
	<header id="site-header" class="fixed-top">

		<!-- Validate the form -->
		<script type="text/javascript">
function validate(){
var firstname = document.forms["insertPdetails"]["firstname"].value;
var lastname = document.forms["insertPdetails"]["lastname"].value;
var cardnumber = document.forms["insertPdetails"]["cardnumber"].value;
var email = document.forms["insertPdetails"]["email"].value;
var cardtype = document.forms["insertPdetails"]["flexRadioDefault"].value;


<!--Last name validation-->

<!-- //Check whether character or digit-->
if(!isNaN(lastname)){
alert("Name should be in characters.");
return false;
}

<!--cardnumber validation-->
if(isNaN(cardnumber)){
alert("card number should be in digit.");
return false;
}

if(cardnumber.length!=12){
alert("cardnumber must be a 12 digit number.");
return false;
}


<!-- Radio validation-->
if(cardtype==""){
alert("Please select a cardtype.");
return false;
}

<!-- email validation -->
if (/^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/.test(insertPdetails.email.value))
{
  return (true)
}
  alert("You have entered an invalid email address!")
  return (false)
 
  
  
  <!-- name validation -->
  var letters = /^[A-Za-z]+$/;
   if(firstname.value.match(letters))
     {
      return true;
     }
   else
     {
     alert("message");
     return false;
     }
  
}

</script>


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
						class="navbar-toggler-icon fa icon-close fa-times"></span> </span>
				</button>
				<div class="collapse navbar-collapse" id="navbarTogglerDemo02">
					<ul class="navbar-nav mr-auto">
						<li class="nav-item "><a class="nav-link" href="Home.jsp">Home
						</a></li>
						<li class="nav-item "><a class="nav-link" href="about.html">Bookings</a>
						</li>
						<li class="nav-item active"><a class="nav-link"
							href="PaymentInformation.jsp">Payments</a></li>
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
	<h1>Payment Information</h1>
	<form action="paymentinsert" method="post" onsubmit="required()"
		name="insertPdetails">
		<div class="form_container">
			<ul Style="background-color: rgba(128, 128, 128)"
				class="form-style-1">

				<li><label>Full Name <span class="required">*</span></label> <input
					type="text" name="firstname" class="field-divided"
					placeholder="First Name" /> <input type="text" name="lastname"
					class="field-divided" placeholder="last name" /><br></li>

				<li><label for="phone">Card Number <span
						class="required">*</span></label> <input type="text" id="card"
					name="cardnumber" value="" class="field-divided"
					placeholder="Card Number"><br></li>
				<li><label>Email <span class="required">*</span></label> <input
					type="email" name="email" class="field-divided" placeholder="Email" /><br></li>
				<li>
				<li><label>Select Card Type <span class="required">*</span></label>
					<br>
					<div class="form-check">
						<input class="form-check-input" type="radio"
							name="flexRadioDefault" id="flexRadioDefault1"> <label
							class="form-check-label" for="flexRadioDefault1"> Visa </label>
					</div>
					<div class="form-check">
						<input class="form-check-input" type="radio"
							name="flexRadioDefault" id="flexRadioDefault2" checked> <label
							class="form-check-label" for="flexRadioDefault2"> Master
							Card </label>
					</div> <br>
					<table>
						<tr class="field-divided" Style="">
							<th><label>Security Code <span class="required">*</span></label></th>

							<th><label for="check_out_date"> Date <span
									class="required">*</span></label></th>
						</tr>
						<tr class="field-divided">
							<td class="field-divided-cont" Style="color: #3A3B3C"><input
								type="text" id="securityCode" placeholder="Security Code"
								name="securitycode" Style="width: 140px">Ex:123</td>

							<td class="field-divided-cont-1"><input
								type="date" id="check_out_date" name="date" Style="margin-right:100px"></td>
						</tr>
					</table></li>
				<li><label>Amount <span class="required">*</span></label> <input
					type="text" name="amount" class="field-divided"
					placeholder="Amount" /><br></li>

				<li><input type="submit" value="Submit"
					Style="border-radius: 4px; background-color: #2B547E; border: 2px solid #151B54"
					onclick="validate()" /></li>
					 
					</a>
			</ul>
		</div>
	</form>
	
	</div>
	<br>
	<br>


	<jsp:include page="/WEB-INF/view//Footer.jsp"></jsp:include>
</body>
</html>

