
<%@page import="com.model.User"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<title>Order details</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<style>

.heading {
	text-align: center;
}

.bottom {
	text-align: center;
}

footer {
    background-color: #f2f2f2;
    position: fixed;
    height: 100px;
    bottom: 0;
    width: 100%;
}
}
</style>
<body>
	<div class="heading">
		<h1>BookMyGame</h1>
		<h3>order details</h3>
	</div>
	<div class="row" style="height:80%">
		<div class="container">
			<h2>Order Id</h2>
			<div class="table-responsive">
				<table class="table">
					<thead>
						<tr>
							<th>#</th>
							<th>Ground Name</th>
							<th>Address</th>
							<th>Location</th>
							<th>Date</th>
						</tr>
					</thead>
					<tbody>
						<tr>
						
						<c:if test="${ground>0}" var="ground">
						    <td>1</td>
							<td>${ground.name}</td>
							<td>${ground.Address }</td>
							<td>${ground.Location }</td>
							<td><input type="date"> </td>
							</c:if>
						</tr>
					</tbody>
				</table>
			</div>
		</div>
	</div>
	<br>
	<br>
	<div class="bottom">
		<b>congratulations your slot is booked and enjoy the Game !!!!!!!!</b>
		<br>
		<br>
		<label><a href ="Logout.jsp">Return to home</a></label>
	</div>
	<br>
	<br>
	<footer class="container-fluid text-center">
		<p>@ bookMyGame Company 2017</p>
		<div class="col-md-4">
			<label><a href="ContactUs.jsp">contact us</a></label>
		</div>
		<div class="col-md-4">
			<label><a href="LetusHelpYou.jsp">let us help you </a></label>
		</div>
		<div class="col-md-4">
			<a href="Aboutus.jsp"><label>About us</label></a>
		</div>
	</footer>


</body>
</html>