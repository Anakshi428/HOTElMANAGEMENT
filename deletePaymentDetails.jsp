<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
	<title>Delete Details</title>
	<!-- meta tags -->
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta name="keywords" content="Art Sign Up Form Responsive Widget, Audio and Video players, Login Form Web Template, Flat Pricing Tables, Flat Drop-Downs, Sign-Up Web Templates, 
		Flat Web Templates, Login Sign-up Responsive Web Template, Smartphone Compatible Web Template, Free Web Designs for Nokia, Samsung, LG, Sony Ericsson, Motorola Web Design"
    />
   

<style> @font-face {
  font-family: 'FontAwesome';
  src: url('assets/webfonts/fontawesome-webfont.eot?v=4.7.0');
  src: url('assets/webfonts/fontawesome-webfont.eot?#iefix&v=4.7.0') format('embedded-opentype'), url('assets/webfonts/fontawesome-webfont.woff2?v=4.7.0') format('woff2'), url('assets/webfonts/fontawesome-webfont.woff?v=4.7.0') format('woff'), url('assets/webfonts/fontawesome-webfont.ttf?v=4.7.0') format('truetype'), url('assets/webfonts/fontawesome-webfont.svg?v=4.7.0#fontawesomeregular') format('svg');
  font-weight: normal;
  font-style: normal;
  }
  
  
  </style>
<!-- Custom Theme files -->
<link href="assets/css/search.css" rel="stylesheet" type="text/css" media="all"/>
<link href="assets/css/user.css" rel="stylesheet" type="text/css" media="all"/>
<!-- Custom Theme files -->
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" /> 
<meta name="keywords" content="Flat Search Box Responsive, Login form web template, Sign up Web Templates, Flat Web Templates, Login signup Responsive web template, Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
<!--Google Fonts-->
<link href='http://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800' rel='stylesheet' type='text/css'>
<!--Google Fonts-->
</head>
<body>

	<%
	String id = request.getParameter("id");
	String firstname = request.getParameter("firstname");
	String lastname = request.getParameter("lastname");
	String cardnumber = request.getParameter("cardnumber");
	String email = request.getParameter("email");
	String securitycode = request.getParameter("securitycode");
	String amount = request.getParameter("amount");
	%>
	
	<jsp:include page="/WEB-INF/view//Header.jsp"></jsp:include>
	<div style="background-image: url('assets/images/cover8.jpg');background-repeat:no-repeat; background-attachment: fixed;
  background-position: center center ;border-radius: 50px 50px;" ><br><br>
	<h1 class="h1" style="text-align: center">  Delete Profile</h1>
	<form action="deletepay" method="post">
	<table class="table table-hover table-dark" style="height:50%; width:50%; margin-left: auto;
  margin-right: auto;border-radius: 25px 25px;">
		<tr>
		<th scope="row">USER ID</th>
		<td style="border-radius: 25px 25px;"><input class="form-control" type="text" name="id" value="<%=id%>" readonly></td>
	</tr>
	<tr>
		 <th scope="row">First Name</th>
		<td style="border-radius: 25px 25px;"><input class="form-control" type="text" name="firstname" value="<%=firstname%>" readonly ></td>
	</tr>
	<tr>
		 <th scope="row">Last Name</th> 
		<td style="border-radius: 25px 25px;"><input class="form-control" type="text" name="lastname" value="<%=lastname%>" readonly ></td>
	</tr>
	<tr>
		<th scope="row">Card Number</th> 
		<td style="border-radius: 25px 25px;"><input class="form-control" type="text" name="cardnumber" value="<%=cardnumber%>" readonly ></td>
	</tr>
	<tr>
		<th scope="row">Email</th> 
		<td style="border-radius: 25px 25px;"><input class="form-control" type="text" name="email" value="<%=email%>"  readonly></td>
	</tr>
	<tr>
		 <th scope="row">Security Code</th> 
		<td style="border-radius: 25px 25px;"><input class="form-control" type="text" name="securitycode" value="<%=securitycode%>" readonly ></td>
	</tr>
	<tr>
		<th scope="row">Amount</th> 
		<td style="border-radius: 25px 25px;"><input class="form-control" type="text" name="amount" value="<%=amount%>" readonly ></td>
	</tr>

	</table>
	<br>
	<input type="submit" class="button button1"  name="submit" value="Delete" style="margin: 12px 350px;padding: 12px 12px;width: 50%;">
	</form></div><br>
<jsp:include page="/WEB-INF/view//Footer.jsp"></jsp:include>
</body>
</html>