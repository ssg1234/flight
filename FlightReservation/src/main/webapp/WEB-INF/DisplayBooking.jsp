<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>

<title>Display Booking Details</title>
<style>

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
 p{
 font-weight: bold;
 }
 
   
</style>
</head>
<body class="bg">


   <section>
			<h2 align="center">Booking Details</h2>
		<div align="center">
			<h2>Your seat is confirmed</h2>
			<table>
			<tr>
				<td><p>PNRNO:</p></td>
				<td>${pnrno.pnrId}</td>
			</tr>
			<tr>
				<td><p>No Of Passengers:</p></td>
				<td>${param.psgnr}</td>
			</tr>
			<tr>
				<td><p>Fare:</p></td>
				<td> ${param.fare}</td>
			</tr>
			<tr>
				<td><p>Price:</p></td>
				<td> ${param.psgnr * param.fare}</td>
				</tr>
			</table>			
		</div>
		</section>
			
 </body>
</html>