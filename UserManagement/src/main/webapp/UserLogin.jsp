<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html lang="en">

<head>
    <title>User Login</title>
    
	<!-- Meta-Tags -->
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta charset="utf-8">
	<meta name="keywords" content="Clear login Form a Responsive Web Template, Bootstrap Web Templates, Flat Web Templates, Android Compatible Web Template, Smartphone Compatible Web Template, Free Webdesigns for Nokia, Samsung, LG, Sony Ericsson, Motorola Web Design">
	<style>@font-face {
  font-family: 'FontAwesome';
  src: url('assets/webfonts/fontawesome-webfont.eot?v=4.7.0');
  src: url('assets/webfonts/fontawesome-webfont.eot?#iefix&v=4.7.0') format('embedded-opentype'), url('assets/webfonts/fontawesome-webfont.woff2?v=4.7.0') format('woff2'), url('assets/webfonts/fontawesome-webfont.woff?v=4.7.0') format('woff'), url('assets/webfonts/fontawesome-webfont.ttf?v=4.7.0') format('truetype'), url('assets/webfonts/fontawesome-webfont.svg?v=4.7.0#fontawesomeregular') format('svg');
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
	<link href="assets/webfonts/fonts.googleapis.com/css?family=Poppins:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i&amp;subset=devanagari,latin-ext" rel="stylesheet">
	<!--//fonts-->
    
<link rel="stylesheet" type="text/css" href="assets/css/style-starter.css">

</head>


<body>
<jsp:include page="/WEB-INF/view//Header.jsp"></jsp:include>


<div Style="background-image:url('assets/images/d1.jpg'); background-repeat:no-repeat;
  background-position: center center" ><br><br>
<h1>Sign In</h1>
	<div class="w3ls-login box box--big">
		<!-- form starts here -->
		<form action="log" method="post">
			<div class="agile-field-txt">
				<label>
					<i class="fa fa-user" aria-hidden="true"></i> UserName</label>
				<input type="text" name="username" placeholder="Enter your username "  id="myInput" required/>
			</div>
			<div class="agile-field-txt">
				<label>
					<i class="fa fa-envelope" aria-hidden="true"></i> password </label>
				<input type="password" name="password" placeholder="Enter your password "  id="myInput" required/>
				
			</div>
			
			<div class="w3ls-bot">
				<div class="switch-agileits">
					
				</div>
				<div class="form-end">
					<input type="submit" value="Sign in">
				</div>
				<div class="clearfix"></div>
			</div>
		</form>
	</div>
<br>

<br>


</div>



<br>
<br>














<jsp:include page="/WEB-INF/view//Footer.jsp"></jsp:include>
</body>

</html>