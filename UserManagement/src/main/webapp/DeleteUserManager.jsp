<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	
	<meta charset="ISO-8859-1">
	<title>Remove User</title>
	
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
  *{
    box-sizing: border-box;
    -webkit-box-sizing: border-box;
    -moz-box-sizing: border-box;
}
body{
    font-family: Helvetica;
    -webkit-font-smoothing: antialiased;
    background: rgba( 71, 147, 227, 1);
}
h2{
    text-align: center;
    font-size: 18px;
    text-transform: uppercase;
    letter-spacing: 1px;
    color: white;
    padding: 30px 0;
}

/* Table Styles */

.table-wrapper{
    margin: 10px 70px 70px;
    box-shadow: 0px 35px 50px rgba( 0, 0, 0, 0.2 );
}

.fl-table {
    border-radius: 5px;
    font-size: 12px;
    font-weight: normal;
    border: none;
    border-collapse: collapse;
    width: 100%;
    max-width: 100%;
    white-space: nowrap;
    background-color: white;
}

.fl-table td, .fl-table th {
    text-align: center;
    padding: 8px;
}

.fl-table td {
    border-right: 1px solid #f8f8f8;
    font-size: 12px;
}

.fl-table thead th {
    color: #ffffff;
    background: #4FC3A1;
}


.fl-table thead th:nth-child(odd) {
    color: #ffffff;
    background: #324960;
}

.fl-table tr:nth-child(even) {
    background: #F8F8F8;
}

/* Responsive */

@media (max-width: 767px) {
    .fl-table {
        display: block;
        width: 100%;
    }
    .table-wrapper:before{
        content: "Scroll horizontally >";
        display: block;
        text-align: right;
        font-size: 30px;
        color: white;
        padding: 0 0 10px;
    }
    .fl-table thead, .fl-table tbody, .fl-table thead th {
        display: block;
    }
    .fl-table thead th:last-child{
        border-bottom: none;
    }
    .fl-table thead {
        float: left;
    }
    .fl-table tbody {
        width: auto;
        position: relative;
        overflow-x: auto;
    }
    .fl-table td, .fl-table th {
        padding: 20px .625em .625em .625em;
        height: 60px;
        vertical-align: middle;
        box-sizing: border-box;
        overflow-x: hidden;
        overflow-y: auto;
        width: 120px;
        font-size: 35px;
        text-overflow: ellipsis;
    }
    .fl-table thead th {
        text-align: left;
        border-bottom: 1px solid #f7f7f9;
    }
    .fl-table tbody tr {
        display: table-cell;
    }
    .fl-table tbody tr:nth-child(odd) {
        background: none;
    }
    .fl-table tr:nth-child(even) {
        background: transparent;
    }
    .fl-table tr td:nth-child(odd) {
        background: #F8F8F8;
        border-right: 1px solid #E6E4E4;
    }
    .fl-table tr td:nth-child(even) {
        border-right: 1px solid #E6E4E4;
    }
    .fl-table tbody td {
        display: block;
        text-align: center;
    }
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
<jsp:include page="/WEB-INF/view//adminheader.jsp"></jsp:include><br><br>
	<%
	String userid = request.getParameter("userid");
	String name = request.getParameter("name");
	String email = request.getParameter("email");
	String username = request.getParameter("username");
	String password = request.getParameter("password");
	String phoneno = request.getParameter("phoneno");
	
	%>
	
	<h1 style="color:#fc3955;text-align:center;">Remove Traveler Account</h1><br>
	<form action="ManagerDelete" method="post">
	<table class="fl-table"style="height:50%; width:50%; margin-left: auto;
  margin-right: auto;">
		
	
	
	
	
     <thead>     <tr>  <th>Traveler ID</th> </tr></thead>
      <tbody>  <tr> <td><input class="form-control"type="text" name="userid" value="<%=userid%>"readonly></td></tr> </tbody>
           <thead>     <tr> <th>Traveler Name</th></tr></thead>
           <tbody>  <tr> <td><input class="form-control"type="text" name="name" value="<%=name%>" readonly></td></tr> </tbody>
            <thead>     <tr><th>Traveler Email</th></tr></thead>
            <tbody>  <tr> <td><input class="form-control"type="text" name="email" value="<%=email%>" readonly></td></tr> </tbody>
            <thead>     <tr><th>User Name</th></tr></thead>
            <tbody>  <tr><td><input class="form-control"type="password" name="password" value="<%=username%>" readonly></td></tr> </tbody>
            <thead>     <tr><th>Password</th></tr></thead>
            <tbody>  <tr><td><input class="form-control" type="text" name="areacode" value="<%=password%>" readonly></td></tr> </tbody>
            <thead>     <tr><th>Phone Number</th></tr></thead>
            <tbody>  <tr><td><input class="form-control"type="text" name="number" value="<%=phoneno%>" readonly></td></tr> </tbody>
            
        
    </table>
	<br>
	<input type="submit" class="btn btn-danger"  name="submit" value="Delete" style="margin: 12px 340px;padding: 5px 5px;width:10%;">
	</form>
<jsp:include page="/WEB-INF/view//Footer.jsp"></jsp:include>
</body>
</html>