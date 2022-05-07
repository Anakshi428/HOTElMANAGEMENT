<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<!DOCTYPE html><html lang="en"><head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>Document</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" crossorigin="anonymous">
<link rel="stylesheet" href="pdf.css" />
<script src="pdf.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/html2pdf.js/0.9.2/html2pdf.bundle.js"></script>
<script>
window.onload = function () {
document.getElementById("download")
.addEventListener("click", () => {
const invoice = this.document.getElementById("invoice");
console.log(invoice);
console.log(window);
var opt = {

filename: 'report.pdf',
image: { type: 'jpeg', quality: 0.98 },
html2canvas: { scale:1 },
jsPDF: { unit: 'in', format: 'letter', orientation: 'landscape' }
};
html2pdf().from(invoice).set(opt).save();
})
} </script>
</head><body>
<div class="container d-flex justify-content-center mt-50 mb-50">
<div class="row">
<div class="col-md-12 text-right mb-3">
<button class="btn btn-danger" id="download"> Download PDF</button>
</div>
<div class="col-md-12">
<div class="card" id="invoice">
<div class="card-header bg-transparent header-elements-inline">
<h6  class="text-danger">Monthly Submitted Packages</h6>
</div>
<div class="card-body">
<div class="row">
<div class="col-sm-6">
<div class="mb-4 pull-left"> <ul class="list list-unstyled mb-0 text-left">
<li>CEYLON PARADISE</li>
<li>SriLanka</li>
<li>+9411 2 404 878 </li>
</ul>
</div>
</div>
<div class="col-sm-6">
<div class="mb-4 ">
<div class="text-sm-right">
<h4 class="invoice-color mb-2 mt-md-2">Report #BBB1001</h4>
<ul class="list list-unstyled mb-0">
<li>Date: <span class="font-weight-semibold">May 12, 2022</span></li>
</ul>
</div>
</div>
</div>
</div>
<sql:setDataSource
var="myDS"
driver="com.mysql.jdbc.Driver"
url="jdbc:mysql://localhost:3306/hotel_management"
user="root" password="ana123"
/>
<sql:query var="listPackage" dataSource="${myDS}">
SELECT * FROM user ;
</sql:query>
<!--/package details table-->
<table border = '1' width = 100%>
<tr>

              <th>Traveler ID</th>
            <th>Traveler Name</th>
             <th>User Name</th>
            <th>Traveler Email</th>
             <th>Password</th>
            <th>Phone Number</th>
</tr>
<c:forEach var="user" items="${listPackage.rows}">
<tr>
<td><c:out value="${user.userid}" /></td>
 <td><c:out value="${user.name}" /></td>
  <td><c:out value="${user.email}" /></td>        
     <td><c:out value="${user.username}" /></td>      
    <td><c:out value="${user.password}" /></td>        
     <td><c:out value="${user.phoneno}" /></td>        
      
</tr>
</c:forEach>
</table> </div>
</div>
</div>
</div>
</div>

</body>
</html>