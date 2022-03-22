<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>User Profile</title>
	
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
<jsp:include page="/WEB-INF/view//adminheader.jsp"></jsp:include>
	<br><br><br>
	<h1 style="color:#fc3955;text-align:center;">Traveler Details</h1><br>
	<table class="fl-table"style="height:70%; width:70%; margin-left: auto;
  margin-right: auto;">
	<c:forEach var="user" items="${UserInformation}">
	
	<c:set var="userid" value="${user.userid}"/>
	<c:set var="name" value="${user.name}"/>
	<c:set var="email" value="${user.email}"/>
	<c:set var="password" value="${user.password}"/>
	<c:set var="areacode" value="${user.areacode}"/>
	<c:set var="number" value="${user.number}"/>
	<c:set var="type" value="${user.travellertype}"/>
	<c:set var="country" value="${user.country}"/>
	<c:set var="passport" value="${user.passportno}"/>
        <thead>
        <tr>
            <th>Traveler ID</th>
            <th>Traveler Name</th>
            <th>Traveler Email</th>
            <th>Password</th>
            <th>Area code</th>
            <th>Number</th>
            <th>Traveler Type</th>
            <th>Country</th>
             <th>Passport No</th>
        </tr>
        </thead>
        <tbody>
        <tr>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
             <td></td>
              <td></td>
               <td></td>
                <td></td>
        </tr>
        <tr>
            <td>${user.userid}</td>
            <td>${user.name}</td>
            <td>${user.email}</td>
            <td>.........</td>
            <td>${user.areacode}</td>
             <td>${user.number}</td>
              <td>${user.travellertype}</td>
               <td>${user.country}</td>
                <td>${user.passportno}</td>
        </tr>
       <tr>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
             <td></td>
              <td></td>
               <td></td>
                <td></td>
        </tr>
        <tbody>
        </c:forEach>
    </table>

	
	<br>
	<c:url value="DeleteUserManager.jsp" var="userdelete">
		<c:param name="userid" value="${userid}"/>
		<c:param name="name" value="${name}"/>
		<c:param name="email" value="${email}"/>
		<c:param name="password" value="${password}"/>
		<c:param name="areacode" value="${areacode}"/>
		<c:param name="number" value="${number}"/>
		<c:param name="type" value="${type}"/>
		<c:param name="country" value="${country}"/>
		<c:param name="passport" value="${passport}"/>
	</c:url>
	<a href="${userdelete}">
	
	<input type="submit"  class="btn btn-danger"   name="submit"value="Delete" style="margin: 12px 250px;padding: 2px 2px;width: 10%;">
	</a>
	
	<a href="test.jsp">
	<input type="submit" class="btn btn-warning"  name="submit"value="Generate Report" style="margin: 12px 250px;padding: 2px 2px;width: 10%;">
	</a><br><br>
	
<jsp:include page="/WEB-INF/view//Footer.jsp"></jsp:include>
</body>
</html>