<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>

<title>Home Page</title>
<style>
#hbar{
margin-left:200px;
 }
.bg{
 background-image: url("images/home3.jpg");
 background-repeat: no-repeat;
 background-size: 1500px;
 background-position: center;
 }
#lbar{
margin-left:300px;
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
 
<body class="bg" >

  
	<section id="home">
		<h2 align="center" id="hbar">HOME</h2>
		<div align="center" id="lbar">
			<nav>
				<table>
					<tr>
						<td> <a href="bookfrm">Book Flights</a></td>
					</tr>
					<tr>
						<td> <a href="pnrForm">View Booking Details</a></td>
					</tr>
					<tr>
						<td> <a href="viewflights">Display Flight Details</a></td>	
					</tr>
					<tr>					
						<td> <a href="logOut">LogOut</a></td>
					</tr>
				</table>
				
			</nav>
		</div>

	</section>

</body>
</html>