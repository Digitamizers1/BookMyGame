<!DOCTYPE html>
<html lang="en">
<head>
<title>Forgot password</title>
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
		<h2>Having trouble in signing in?</h2>
		<p>Please provide additional information</p>
		<p>to aid in the recovery process</p>
	</div>

	<div class="container">
		<div class="row">
            <div class="col-lg-6 col-md-offset-3">
				<div class="customDiv">

					<div class="col-md-10">

						<form>
							<div class="form-group">
								<label>Enter any recovery email</label><label>
										associated with your account</label> <input type="email"
									class="form-control " name="email"
									placeholder="Enter registered mail "   data-error="Enter valid Email" required>
							</div>
							<a href="Setpassword.html">Send</a>
						</form>
					</div>

				</div>
			</div>
		</div>
	</div>
	<div class="bottom">
		<h2>New to BookMyGame?</h2>
		<label><a href="Register.jsp">Register</a></label>
	</div><br><br>
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