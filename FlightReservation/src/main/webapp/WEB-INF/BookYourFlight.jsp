<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<head>
<title>Flight Reservation</title>
<style>
th{
   padding: 10px;
   font-family: sans-serif;
   font-weight: bold;
   }
   td,tr{
   padding: 20px;
   font-family: sans-serif;
   
   }
   .bg{
 background-image: url("images/bg.jpg");
 background-repeat: no-repeat;
 background-size: 1500px;
 background-position: center;
 }
 a:link, a:visited {
    background-color: #2070E8;
    color: white;
    padding: 14px 25px;
    text-align: right;
    text-decoration: none;
    display: inline-block;
}


a:hover, a:active {
    background-color:white;
     color: black;
}
   
</style>
</head>
<body class="bg">


<section>
			<h2 align="center">Booking Schedule</h2>
		<div align="center">
			<table id="list" style="margin:0 auto";>
				<tr>
				<th>Flight Id</th>
				<th>Flight Name</th>
				<th>Schedule Id</th>
				<th>Schedule Date</th>
				<th>Seats Available</th>
				<th>Fare</th>
				
				
				
				</tr>
				
				<c:forEach items="${blist}" var="b">
				<tr>
					<td>${b.flight.flightId}</td>
					<td>${b.flight.flightName}</td>
					<td>${b.schId}</td>
					<td>${b.schDate}</td>
					<td>${b.seats}</td>
					<td>${b.flight.fare}</td>
					
					
					
					<td>
					<a href="insertBooking?sid=${b.schId}&psgnr=${param.psgnr}&fare=${b.flight.fare}
					   ">Book</a>
					</td>
					
					
					
				    
				</tr>
				
				</c:forEach>
				

				</table>
				
				</div>
				</section>
				
			
</body>
</html>