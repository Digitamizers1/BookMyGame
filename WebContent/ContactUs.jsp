<!DOCTYPE html>
<html lang="en">
<head>
<title>contact us</title>
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
.navbar {
	margin-bottom: 0;
	border-radius: 0;
}

.customDiv {
	margin: 1px;
	text-align: center;
	background-color: white;
	min-height: 300px;
	font-size: large;
	text-align: center;
	padding-left: 15%;
	padding-top: 13%;
}

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
				<a class="navbar-brand" href="home.jsp" class="active">bookMyGame</a>
			</div>
			<div class="collapse navbar-collapse" id="myNavbar">
				<ul class="nav navbar-nav">
					<li><a href="home.jsp">Home</a></li>
					<li><a href="sports.jsp">Sports</a></li>
					<li><a href="ContactUs.jsp"><span class="glyphicon glyphicon-earphone"></span>Contact</a></li>
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
	<div class="heading">

		<div class="row">
			<div class="col-lg-12">
				<h1>bookMyGame</h1>
			</div>
			<div class="col-lg-12">
				<h3>contact us</h3>
			</div>
		</div>
	</div>

	<br>
	<br>
	<div class="container">
		<div class="box">
			<div class="row">
				<div class="col-md-8">
					<iframe
						src="https://www.google.com/maps/embed?pb=!1m1
				8!1m12!1m3!1d7612.642148263534!2d78.34595363531146!3d17.
				444340064176856!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.
				1!3m3!1m2!1s0x0%3A0x202f02db1f2e21c5!2s
				TalentSprint!5e0!3m2!1sen!2sin!4v1490549488256"
						width="70%" height="300" style="border: 0"> </iframe>
				</div>
				<div class="col-md-4">
					<br>
					<p>
						phone : <Strong>123.456.789</Strong>
					</p>
					<p>
						Email : <strong>bookmygame5@gmail.com</strong>
					</p>
					<p>
						Address : <strong>PSR Prime Tower, </strong>
					</p>
					<p>
						<strong>Survey no: 126(P) Beside Gate No:1,</strong>
					</p>
					<p>
						<strong>DLF Cyber City, Indira Nagar, Gachibowli,
							Hyderabad, Telangana 500032 </strong>
					</p>
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