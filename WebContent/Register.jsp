<!DOCTYPE html>
<html lang="en">
<head>
<title>Register</title>
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
		<h2>Register</h2>
	</div>
	<div class="container">
		<div class="row">
			<div class="col-lg-6 col-lg-offset-3">
				<div class="customDiv">
					<div class="col-md-10">
						<form action="UserServlet" method="Post">
							<div class="form-group">
								<div class="form-group">
									<label for="FirstName">Your First Name</label><input
										type="text" name="firstname" class="form-control" id="firstname"
										placeholder="Enter your First Name">
								</div>
								<div class="form-group">
									<label for="Last Name">Your Last Name</label><input
										type="text" name="lastName" class="form-control" id="Last Name"
										placeholder="Enter your Last Name">
								</div>
								<label for="email">Email</label> <input type="email" name="email address"
									class="form-control " id="email"
									placeholder="Enter your mail-id">
							</div>
							<div class="form-group">
								<label for="pwd">Password</label> <input type="password" name="password"
									class="form-control" id="pwd"
									placeholder="Atleast 6 characters">
							</div>
							<div class="form-group">
								<label for="pwd">Re-Type Password</label> <input type="password" name="password"
									class="form-control" id="pwd" placeholder="Re-Enter password">
							</div>
							<div class="form-group">
								<label for="phonenumber">Phone Number</label> <input
									type="number" name="mobilenumber" class="form-control" id="phonenumber"
									placeholder="Enter your phone number">
							</div>
							<div class="form-group">
								<label for="Gender">Gender</label>
								<div class="radio">
									<label><input type="radio" name="gender" value="male">Male</label>
									<label><input type="radio" name="gender" value="female">Female</label>
								</div>
							</div>
							<div class="form-group">
								<label for="Location">Location</label><input type="text"
									class="form-control" id="Location" name="location"
									placeholder="Enter your Location">
							</div>
							<button type="submit"  name="submit" class="btn btn-primary">Sign-Up</button>

						</form>
					</div>

				</div>
			</div>
		</div>
	</div>
	<div class="bottom">
		<h2>Already have an account?</h2>
		<label><a href="Login.jsp">sign-In</a></label>
        
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

