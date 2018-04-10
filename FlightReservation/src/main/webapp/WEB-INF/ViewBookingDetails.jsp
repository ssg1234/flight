<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<title>BookingDetails</title>

<style>

   td,tr{
   padding: 5px;
   font-family: sans-serif;
   
   }
   .bg{
 background-image: url("images/bg.jpg");
 background-repeat: no-repeat;
 background-size: 1500px;
 background-position: center;
 }
 p{
 font-weight: bold
 }
</style>
</head>
<body class="bg">


<section>
<div align="center">
<h2 align="center">Booking Details</h2>
    <table id="list">

	<tr>
		<td><p>Flight Id</p></td>
		<td>${book.schedule.flight.flightId}</td>
	</tr>
	<tr>
		<td><p>Flight Name</p></td>
		<td>${book.schedule.flight.flightName}</td>
	</tr>
	<tr>
		<td><p>Source</p></td>
		<td>${book.schedule.flight.src}</td>
	</tr>
	<tr>
		<td><p>Destination</p></td>
		<td>${book.schedule.flight.dest}</td>
	</tr>
	<tr>
		<td><p>Customer Name</p></td>
		<td>${book.customer.custName}</td>
	</tr>
	<tr>
		<td><p>Fare</p></td>
		<td>${book.schedule.flight.fare}</td>
	</tr>
	
</table>
</div>
</section>

</body>
</html>