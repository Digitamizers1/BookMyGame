<!DOCTYPE html>
<html lang="en">
<head>
<title>Login</title>
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
    height: 100px;
    bottom: 0;
    width: 100%;
}


</style>
<body>
	<div class="heading">
		<h1>BookMyGame</h1>
		<h2>Login</h2>
	</div>

	<div class="container">
		<div class="row">
			<div class="col-lg-6 col-md-offset-3">
				<div class="customDiv">


					<div class="col-md-10">

						<form action="LoginServlet" method="Post">
							<div class="form-group">
								<label for="email">Email</label> <input type="email"
									name="email" class="form-control " id="email"
									placeholder="Enter your mail-id">
							</div>
							<div class="form-group">
								<label for="pwd">Password</label> <input type="password"
									name="password" class="form-control" id="pwd"
									placeholder="Enter password">
							</div>
							<div class ="form-group">
							<button type="submit" class="btn btn-primary">Sign-In</button>
							</div>
							
							<label>
							<a href ="Forgotpassword.jsp">forgot
								Password?</a></label>
						</form>
					</div>

				</div>
			</div>

		</div>
	</div>
	<br>
	<br>
	<div class="bottom">
		<label><a href="Register.jsp">New to BookMyGame?</a></label>
		<br>
		<br>
		<label><a href="groundadmin.html">Ground admin</a></label>
	</div>
	<br>
	<br><br>
	<br><br>
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

