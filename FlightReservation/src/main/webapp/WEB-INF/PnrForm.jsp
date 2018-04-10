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

<title>Booking Form</title>
<style>
div{
margin-top: 50px;
}
p{
font-weight: bold;
font-size: 20px;
}
.bg{
 background-image: url("images/bg.jpg");
 background-repeat: no-repeat;
 background-size: 1500px;
 background-position: center;
 }
</style>
</head>
<body class="bg">


<section>
<h2 align="center">View BookingDetails</h2>
	<div align="center">
		<form action="viewBookingDetails">
		<p>Enter PNRNO :</p><input type="text" name="pno"><br><br>
		<input type="submit" value="Show Details" class="btn btn-primary">
	</div>
	</form>
	</section>

</body>
</html>