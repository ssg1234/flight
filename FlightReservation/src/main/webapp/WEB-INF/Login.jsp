<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<head>
<style>
.bg{
 background-image: url("images/frontPage.jpg");
 background-repeat: no-repeat;
 background-size: 1500px;
 background-position: center;
 }

</style>

<title>Login page</title>
</head>

<body class="bg" >

	<h1 align="center">FLIGHT RESERVATION SYSTEM</h1>
 	<section>
 	
 	<br>
 	<h2 align="center">LOGIN PAGE</h2>
 
 	<div align ="center"  id="log">
 		<form action="checkLogin" method=post >
 			Username:<input type="text" name="uname"/><br><br>
 			
 			Password:<input type="password" name="pwd"/><br><br>
 			<input type="submit" value="Login" class="btn btn-primary"/>
 		</form>
 	</div>
 	</section>
 	
</body>
</html>