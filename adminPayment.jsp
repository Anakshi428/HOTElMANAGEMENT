<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>admin payment</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
</head>
<body>

<script src="https://cdnjs.cloudflare.com/ajax/libs/html2pdf.js/0.9.2/html2pdf.bundle.js"></script>


<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

<br> 

<center>
<h1> Payment Details </h1>
</center>



<br>
<br>


<div id = "content">

     <form class="d-flex" method="post" action="adminPaySearch.jsp">
        <input name="email" class="form-control me-2" type="search" placeholder="Search with Email" aria-label="Search" Style="width:180px; margin-right:80px">
        <button class="btn btn-outline-success" type="submit">Search</button>
      </form>




<br>
<br>

<table id="table" class="table table-striped">
  <thead>
    <tr>
      <th scope="col">BookID</th>
      <th scope="col">Customer Name</th>
      <th scope="col">Card Number</th>
      <th scope="col">Amount</th>
      <th scope="col">Email</th>
      <th scope="col">status</th>
      
    </tr>
  </thead>
  <tbody>
    <tr>
      <th scope="row">1</th>
      <td>senuri liyanage</td>
      <td>123678912323</td>
      <td>1100</td>
      <td>senuriliyanage1999@gmail.com</td>
      <td>
     
      <button type="button" class="btn btn-success">Delete</button>
      </td>
      
    </tr>
    
    <tr>
      <th scope="row">2</th>
      <td>kasuntha liyanage</td>
      <td>123654789690</td>
      <td>1500</td>
      <td>kasunthaliyanage@gmail.com</td>
      <td>
   
      <button type="button" class="btn btn-success">Delete</button>
      </td>
      
    </tr>
    
    <tr>
      <th scope="row">3</th>
      <td>kamal silva</td>
      <td>125469873215</td>
      <td>9000</td>
      <td>kamalsilva@gmail.com</td>
      <td>
    
      <button type="button" class="btn btn-success">Delete</button>
      </td>
      
    </tr>
    
     <tr>
      <th scope="row">4</th>
      <td>sunil perera</td>
      <td>541236987256</td>
      <td>6000</td>
      <td>sunilperera@gmail.com</td>
      <td>
      
      <button type="button" class="btn btn-success">Delete</button>
      </td>
      
    </tr>
    
     <tr>
      <th scope="row">5</th>
      <td>Layantha perera</td>
      <td>654239874152</td>
      <td>2500</td>
      <td>layanthaperera@gmail.com</td>
      <td>
      
      <button type="button" class="btn btn-success">Delete</button>
      </td>
      
    </tr>
    
     <tr>
      <th scope="row">6</th>
      <td>harsha adikari</td>
      <td>968547236541</td>
      <td>6800</td>
      <td>harshaadikari@gmail.com</td>
      <td>
      
     <button type="button" class="btn btn-success">Delete</button>
      </td>
      
    </tr>
    
    
  </tbody>
</table>


</div>

<script>
    // delete the row datat 
            var index, table = document.getElementById('table');
            for(var i = 1; i < table.rows.length; i++)
            {
                table.rows[i].cells[5].onclick = function()
                {
                    var c = confirm("do you want to delete this row");
                    if(c === true)
                    {
                        index = this.parentElement.rowIndex;
                        table.deleteRow(index);
                    }
                    
                    //console.log(index);
                };
                
            }
            
            
   
      
</script>




<br>
<br>

<div class="d-grid gap-2 col-6 mx-auto">
  <button onclick="document.location='paymentReport.jsp'"  class="btn btn-primary" type="button">Download Report</button>
 
</div>

<br>
<br>







</body>
</html>