<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>your payment details</title>
<!-- meta tags -->
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta name="keywords" content="Art Sign Up Form Responsive Widget, Audio and Video players, Login Form Web Template, Flat Pricing Tables, Flat Drop-Downs, Sign-Up Web Templates, 
		Flat Web Templates, Login Sign-up Responsive Web Template, Smartphone Compatible Web Template, Free Web Designs for Nokia, Samsung, LG, Sony Ericsson, Motorola Web Design"
    />

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


<jsp:include page="/WEB-INF/view//Header.jsp"></jsp:include>
     
     <br>
	 
     <br>
 
     <br>
   <div style="background-image: url('assets/images/cover10.jpg');background-repeat:no-repeat; background-attachment: fixed;
  background-position: center center ;border-radius: 50px;" ><br><br>
   <h1 class="h1" style="text-align: center"> User Details</h1>
 
 
 

<table>

<tbody>

<!-- retrive data from the database to display in jsp page  -->

 <c:forEach  var="details" items="${payDetails}">
 
    <c:set var="id" value="${details.id}"/>
    <c:set var="firstname" value="${details.firstname}"/>
	<c:set var="lastname" value="${details.lastname}"/>
	<c:set var="cardnumber" value="${details.cardnumber}"/>
	<c:set var="email" value="${details.email}"/>
	<c:set var="cardtype" value="${details.cardtype}"/>
	<c:set var="securitycode" value="${details.securitycode}"/>
	<c:set var="date" value="${details.date}"/>
	<c:set var="amount" value="${details.amount}"/>

  
  
  
    <tr>
      <th scope="row">ID</th>
      <td class="bg-danger"style="border-radius: 25px 25px;">${details.id}</td>
    </tr>
    
    <tr>
      <th scope="row">First name</th>
      <td class="bg-danger"style="border-radius: 25px 25px;">${details.firstname}</td>
     
    </tr>
    
    <tr>
      <th scope="row">Last name</th> 
      <td class="bg-danger"style="border-radius: 25px 25px;">${details.lastname}</td>
    </tr>
    
    <tr>
      <th scope="row">Card Number</th> 
      <td class="bg-danger"style="border-radius: 25px 25px;">${details.cardnumber}</td>
    </tr>
    
    
    <tr>
      <th scope="row">Email</th> 
      <td class="bg-danger"style="border-radius: 25px 25px;">${details.email}</td>
    </tr>
    
    
    
    <tr>
      <th scope="row">Card Type</th> 
      <td class="bg-danger"style="border-radius: 25px 25px;">${details.cardtype}</td>
    </tr>
    
    
    
     <tr>
      <th scope="row">Security Code</th> 
      <td class="bg-danger"style="border-radius: 25px 25px;">${details.securitycode}</td>
    </tr>
    
    
    
    <tr>
      <th scope="row">Date</th> 
      <td class="bg-danger"style="border-radius: 25px 25px;">${details.date}</td>
    </tr>
    
    
    
    <tr>
      <th scope="row">Amount</th> 
      <td class="bg-danger"style="border-radius: 25px 25px;">${details.amount}</td>
    </tr>
 
 </c:forEach>
 </tbody>
</table>


<!-- pass the data through the url  -->

<c:url value="updatePaymentDetails.jsp" var="payupdate">
       
        <c:param name="id" value="${id}"/>
		<c:param name="firstname" value="${firstname}"/>
		<c:param name="lastname" value="${lastname}"/>
		<c:param name="cardnumber" value="${cardnumber}"/>
		<c:param name="email" value="${email}"/>
		<c:param name="securitycode" value="${securitycode}"/>
		<c:param name="date" value="${date}"/>
		<c:param name="amount" value="${amount}"/>
		
	</c:url>
	
	<a href="${payupdate}"class="animated-button1" style="margin: 12px 350px;padding: 6px 6px;width: 50%; border-radius:25px">
	
	<span></span>
  <span></span>
  <span></span>
  <span></span>
  Update my data 
	</a>



<c:url value="deletePaymentDetails.jsp" var="paydelete">
       
        <c:param name="id" value="${id}"/>
		<c:param name="firstname" value="${firstname}"/>
		<c:param name="lastname" value="${lastname}"/>
		<c:param name="cardnumber" value="${cardnumber}"/>
		<c:param name="email" value="${email}"/>
		<c:param name="securitycode" value="${securitycode}"/>
		<c:param name="date" value="${date}"/>
		<c:param name="amount" value="${amount}"/>
		
	</c:url>






<a href="${cusdelete}">
	<input type="button" name="delete" value="Delete My Details">
	</a>
	


</body>
</html>