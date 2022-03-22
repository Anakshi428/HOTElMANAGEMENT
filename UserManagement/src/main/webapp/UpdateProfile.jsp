<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Update Profile</title>
	
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
	String userid = request.getParameter("userid");
	String name = request.getParameter("name");
	String email = request.getParameter("email");
	String password = request.getParameter("password");
	String areacode = request.getParameter("areacode");
	String number = request.getParameter("number");
	String travellertype = request.getParameter("type");
	String country = request.getParameter("country");
	String passportno = request.getParameter("passport");
	%>
	
	<jsp:include page="/WEB-INF/view//Header.jsp"></jsp:include>
	<div style="background-image: url('assets/images/cover9.jpg');background-repeat:no-repeat; background-attachment: fixed;
  background-position: center center ;border-radius: 50px 50px;" ><br><br>
	<h1 class="h1" style="text-align: center">  Update Profile</h1>
	
	<form action="update" method="post">
	<table class="table table-hover table-dark" style="height:50%; width:50%; margin-left: auto;
  margin-right: auto;border-radius: 25px 25px;">
		<tr>
		<th scope="row">USER ID</th>
		<td style="border-radius: 25px 25px;"><input class="form-control" type="text" name="userid" value="<%=userid%>"></td>
	</tr>
	<tr>
		 <th scope="row">NAME</th>
		<td style="border-radius: 25px 25px;"><input class="form-control" type="text" name="name" value="<%=name%>" ></td>
	</tr>
	<tr>
		 <th scope="row">EMAIL</th> 
		<td style="border-radius: 25px 25px;"><input class="form-control"type="text" name="email" value="<%=email%>" ></td>
	</tr>
	<tr>
		<th scope="row">PASSWORD</th> 
		<td style="border-radius: 25px 25px;"><input class="form-control"type="text" name="password" value="<%=password%>" ></td>
	</tr>
	<tr>
		<th scope="row">AREA CODE</th> 
		<td style="border-radius: 25px 25px;"><input class="form-control"type="text" name="areacode" value="<%=areacode%>" ></td>
	</tr>
	<tr>
		 <th scope="row">NUMBER</th> 
		<td style="border-radius: 25px 25px;"><input class="form-control"type="text" name="number" value="<%=number%>" ></td>
	</tr>
	<tr>
		<th scope="row">TRAVELLER TYPE</th> 
		<td style="border-radius: 25px 25px;"><input class="form-control"type="text" name="type" value="<%=travellertype%>" ></td>
	</tr>
	<tr>
		<th scope="row">COUNTRY</th> 
		<td style="border-radius: 25px 25px;"><input class="form-control"type="text" name="country" value="<%=country%>" ></td>
	</tr>
	<tr>
		<th scope="row">PASSPORT NO</th> 
		<td style="border-radius: 25px 25px;"><input class="form-control"type="text" name="passport" value="<%=passportno%>" ></td>
	</tr>

	</table>
	
	

	<input type="submit" class="button button1"  name="submit" value="Update" style="margin: 12px 350px;padding: 12px 12px;width: 50%;">
	</form></div><br>
<jsp:include page="/WEB-INF/view//Footer.jsp"></jsp:include>
</body>
</html>