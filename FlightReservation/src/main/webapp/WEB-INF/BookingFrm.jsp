<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE >
<html>
<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<head>
<title>Booking Form</title>
<style>

.bg{
 background-image: url("images/bg.jpg");
 background-repeat: no-repeat;
 background-size: 1500px;
 background-position: center;
 }
 
 tr, td{
   padding: 20px;
   font-family: sans-serif;
   font-weight: bold;
 }
 </style>
</head>
<body class="bg" >


<section>
<h2 align="center">Book Your Flight</h2>
<div class="col-md-4"></div>
<div class="col-md-4">
<form action="bookticket" align="center">
<table>
<tr>
	<td>Source: </td>
	<td><input type="text" name="src"/></td>
</tr>
<tr>
	<td>Destination:</td>
	<td> <input type="text" name="dest"/></td>
</tr>
<tr>
	<td>Date: </td>
	<td><input type="text" name="date"/></td>
</tr>
<tr>
	<td>No Of Passengers: </td>
	<td><input type="text" name="psgnr"/></td>
</tr>
	</table>
	
	<input type="submit" value="search" class="btn btn-primary"/>
	
</form>
</div>
<div class="col-md-4" style="height:300px"></div>
</section>

</body>

</html>



