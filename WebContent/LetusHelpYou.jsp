<!DOCTYPE html>
<html lang="en">
<head>
<title>Let us help you</title>
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
.heading {
	text-align: center;
}

.bottom {
	text-align: center;
}

/* Add a gray background color and some padding to the footer */
footer {
    background-color: #f2f2f2;
    height: 100px;
    bottom: 0;
    width: 100%;
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
				<h3>Let us help you</h3>
			</div>
		</div>
	</div>
	<br>
	<br>
	
	<div class="container">
		<div class="box">
			<div class="row">
				<form role="form" id="feedback-form" method="POST" action="FeedbackServlet" >
					<div class="row">
						<div class="form-group col-lg-4">
							<label>Name</label> <input type="text" class="form-control" name ="name">
						</div>
						<div class="form-group col-lg-4">
							<label>Email</label> <input type="text" class="form-control" name="email">
						</div>
						<div class="form-group col-lg-4">
							<label>Phone Number</label> <input type="text" class="form-control" name="phonenumber">
						</div>
						<div class="form-group col-lg-12">
							<label>Message</label> <textarea   class="form-control" rows="6" name="message"></textarea>
						</div>
						<div class="form-group col-lg-12">
							
							 <button type ="submit" class ="btn btn-primary">submit</button>
						</div>
					</div>
				</form>
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

</html>