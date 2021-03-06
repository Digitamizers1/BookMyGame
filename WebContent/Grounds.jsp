<!DOCTYPE html>
<html lang="en">
<head>
<title>Grounds</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<style>
.customDiv {
	margin: 5px;
	text-align: center;
	background-color: silver;
	min-height: 250px;
}

.name {
	text-align: center;
}


.button {
	background-color: rgb(90, 90, 90);
	border: none;
	color: white;
	padding: 15px 32px;
	text-align: center;
	text-decoration: none;
	display: inline-block;
	font-size: 16px;
	margin: 2px 1px;
	cursor: pointer;
}

.button {
	border-radius: 8px;
}

.header {
	text-align: center;
}

footer {
	background-color: #f2f2f2;
	padding: 25px;
}
</style>
<body>
	<nav class="navbar navbar-inverse">
		<div class="container-fluid">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse"
					data-target="#myNavbar">
					<span class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="#">BookMyGame</a>
			</div>
			<div class="collapse navbar-collapse" id="myNavbar">
				<ul class="nav navbar-nav">
					<li class="active"><a href="#">Home</a></li>

					<li><a href="#">Sports</a></li>
					<li><a href="#"><span class="glyphicon glyphicon-earphone"></span>Contact</a></li>
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
	<div class="header">
		<h1>Grounds</h1>
	</div>
	<br>
	<br>
	<div class="container">
		<div class="row">
			<div class="col-md-4">
				<div class="name">
					<b>Gachibowli</b>
				</div>
				<div class="customDiv"></div>
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				<div class="button button">7:00 AM</div>
				<div class="button button">3:00 PM</div>
			</div>
			<div class="col-md-4">
				<div class="name">
					<b>Gachibowli</b>
				</div>
				<div class="customDiv"></div>
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				
					<div class="button button">7:00 AM</div>
					<div class="button button">3:00 PM</div>
				
			</div>
			<div class="col-md-4">
				<div class="name">
					<b>Gachibowli</b>
				</div>
				<div class="customDiv"></div>
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				<div class="button button">7:00 AM</div>
				<div class="button button">3:00 PM</div>
			</div>
		</div>
	</div>
	<br>
	<br>
	<div class="container">
		<div class="row">
			<div class="col-md-4 col-md-offset-2">
				<div class="name">
					<b>Gachibowli</b>
				</div>
				<div class="customDiv"></div>
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				<div class="button button">7:00 AM</div>
				<div class="button button">3:00 PM</div>
			</div>
			<div class="col-md-4">
				<div class="name">
					<b>Gachibowli</b>
				</div>
				<div class="customDiv"></div>
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				<div class="button button">7:00 AM</div>
				<div class="button button">3:00 PM</div>
			</div>

		</div>
	</div>
	<br>
	<br>
	<footer class="container-fluid text-center">
		<p>@ Company 2017</p>
		<div class="col-md-4">
			<label><a href="contactus.html">contact us</a></label>
		</div>
		<div class="col-md-4">
			<label><a href="letushelpyou">let us help you
				</a></label>
		</div>
		<div class="col-md-4">
			<label><a href="aboutus.html">About us</a></label>
		</div>
	</footer>
</body>
</html>