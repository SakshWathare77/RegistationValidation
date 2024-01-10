<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>registration</title>
<style>
.container
{
width:50%;
height:auto;
margin:auto;
border: 2px solid black;
background-color: lightblue;
padding:20px;
}

</style>

</head>
<body>
<div class="container">
  <h1 style='color:green'>registration done successfully</h1>

    <!-- Retrieve and display the form data -->
    <h2>First Name: <%= request.getAttribute("firstName") %></h2>
    <h2>Last Name: <%= request.getAttribute("lastName") %></h2>
    <h2>Address: <%= request.getAttribute("address") %></h2>
    <h2>Email: <%= request.getAttribute("email") %></h2>
    <h2>Contact: <%= request.getAttribute("contact") %></h2>
    
   
   </div>
</body>
</html>