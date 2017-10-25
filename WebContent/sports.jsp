<%@page import="com.model.User"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    

<!DOCTYPE html>
<html lang="en">
<head>
<title>Sports</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<style>
/* Remove the navbar's default margin-bottom and rounded borders */
.navbar {
	margin-bottom: 0;
	border-radius: 0;
}

footer {
	background-color: #f2f2f2;
	height: 100px;
	bottom: 0;
	width: 100%;
}

.customDiv {
	margin: 5px;
	text-align: center;
	background-color: silver;
	min-height: 250px;
}

.name {
	text-align: center;
}
</style>
</head>
<body>

	<nav class="navbar navbar-inverse">
		<div class="container-fluid">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse"
					data-target="#myNavbar">
					<span class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="index.jsp" class="active">bookMyGame</a>
			</div>
			<div class="collapse navbar-collapse" id="myNavbar">
				<ul class="nav navbar-nav">
					<li><a href="index.jsp">Home</a></li>
					<li><a href="sports.jsp">Sports</a></li>
					<li><a href="ContactUs.jsp"><span
							class="glyphicon glyphicon-earphone"></span>Contact</a></li>
				</ul>
				<ul class="nav navbar-nav navbar-right">
			
					<%
					HttpSession session1=request.getSession();
					
					String name=(String) session.getAttribute("user");
					if(name!=null){%>
						<li><a href="LogoutServlet">Log out</a></li>
						<%}else{ %>
						<li><a href="Login.jsp">Login</a></li>
					
						<%} %>
						
				</ul>
			</div>
		</div>
	</nav>
	<br>
	<br>
	<div class="container">
		<div class="row">
			<div class="col-md-4">
				<div class="thumbnail">
					<a href='DisplayGrounds?id=1'> <img
						src="Images/sport1.jpg" alt="Lights">
					</a>
				</div>
			</div>
			<div class="col-md-4">
				<div class="thumbnail">
					<a href='DisplayGrounds?id=2'> <img
						src="Images/sport2.jpg" alt="Nature">
					</a>
				</div>
			</div>
			<div class="col-md-4">
				<div class="thumbnail">
					<a href='DisplayGrounds?id=3' > <img
						src="Images/sport3.jpg" alt="Fjords">
					</a>
				</div>
			</div>
		</div>
	</div>
	<br>
	<br>
	<div class="container">

		<div class="col-md-4">
			<div class="thumbnail">
				<a href='DisplayGrounds?id=4' > <img
					src="Images/sport4.jpg" alt="Fjords">
				</a>
			</div>
		</div>
		<div class="col-md-4">
			<div class="thumbnail">
				<a href='DisplayGrounds?id=5' > <img
					src="Images/sport5.jpg" alt="Fjords">
				</a>
			</div>
		</div>
		<div class="col-md-4">
			<div class="thumbnail">
				<a href='DisplayGrounds?id=6' > <img
					src="Images/sport6.jpg" alt="Fjords">
				</a>
			</div>
		</div>
	</div>
	<br>
	<br>
	<div class ="container">
	<div class="row">
		<div class="col-md-4 col-md-offset-2">
			<div class="thumbnail">
				<a href='DisplayGrounds?id=7'> <img
					src="Images/sport7.jpg" alt="Fjords">
				</a>
			</div>

		</div>
		<div class="col-md-4">
			<div class="thumbnail">
				<a href='DisplayGrounds?id=8'> <img
					src="Images/sport8.jpg" alt="Fjords">
				</a>
			</div>
		</div>

	</div>
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
