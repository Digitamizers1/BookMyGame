<!DOCTYPE html>
<html lang="en">
<head>
<title>Add Grounds</title>
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
		<h2>Add your grounds</h2>
	</div>
	<div class="container">
		<div class="row">
			<div class="col-lg-6 col-lg-offset-3">
				<div class="customDiv">
					<form role="form"  method="POST"
						action="GroundServlet">
						<div class="col-md-10">
							<div class="form-group">
								<label for="GroundName">Your Ground Name</label><input
									type="text" name="groundname" class="form-control"
									id="groundname" placeholder="Enter your Ground Name">
							</div>


							<div class="form-group">
								<label for="Location">Location</label><input type="text"
									class="form-control" id="Location" name="location"
									placeholder="Enter your Location">
							</div>

							<div class="form-group">
								<label for="Address">Address</label><input type="text"
									class="form-control" id="address" name="address"
									placeholder="Enter address">
							</div>


							<div class="form-group">
								<label for="phonenumber">Phone Number</label> <input
									type="number" name="phonenumber" class="form-control"
									id="phonenumber" placeholder="Enter your phone number">
							</div>
							<div class="form-group">
								<label for="email">Email</label> <input type="email"
									name="email" class="form-control " id="email"
									placeholder="Enter your mail-id">
							</div>
							<button type="submit" name="submit" class="btn btn-primary">ADD</button>
						</div>
					</form>
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
