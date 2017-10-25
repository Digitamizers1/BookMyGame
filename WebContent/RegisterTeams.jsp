<!DOCTYPE html>
<html lang="en">
<head>
<title>Register teams</title>
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
	padding: 25px;
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
									name="email address" class="form-control " id="email"
									placeholder="Enter your mail-id">
							</div>
							<div class="form-group">
								<label for="pwd">Password</label> <input type="password"
									name="password" class="form-control" id="pwd"
									placeholder="Enter password">
							</div>
							<button type="submit" class="btn btn-primary">Sign-In</button>
							<a href ="Forgotpassword.html">forgot
								Password?</a>
						</form>
					</div>

				</div>
			</div>

		</div>
	</div>
	<div class="bottom">
		<label><a href="Register.html">New to BookMyGame?</a></label>
	</div>
	<br>
	<br>
	<footer class="container-fluid text-center">
		<p>@ bookMyGame Company 2017</p>
		<div class="col-md-4">
			<label><a href="contactus.html">contact us</a></label>
		</div>
		<div class="col-md-4">
			<label><a href="letushelpyou">let us help you </a></label>
		</div>
		<div class="col-md-4">
			<label><a href="aboutus.html">About us</a></label>
		</div>
	</footer>

</body>
</html>
