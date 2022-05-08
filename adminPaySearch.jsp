<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%
String driver = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/";
String database = "hotelmanagment";
String userid = "root";
String password = "9928";
String email=request.getParameter("email");
try {
Class.forName(driver);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}
Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
%>
   
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Search</title>
</head>
<body>
<h1>Search Data</h1>
<table border="1">
<tr>
        
            <th>first Name</th>
            <th>last Name</th>
            <th>card number</th>
            <th>email</th>
            <th>card type</th>
            <th>security code</th>
            <th>date</th>
             <th>amount</th>

</tr>
<%
try{
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String sql ="select * from paymentdetails where email='"+email+"'";
resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
<tr>
<td><%=resultSet.getString("firstname") %></td>
<td><%=resultSet.getString("lastname") %></td>
<td><%=resultSet.getString("cardnumber") %></td>
<td><%=resultSet.getString("email") %></td>
<td><%=resultSet.getString("cardtype") %></td>
<td><%=resultSet.getString("securitycode") %></td>
<td><%=resultSet.getString("date") %></td>
<td><%=resultSet.getString("amount") %></td>
</tr>
<%
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>





</body>
</html>