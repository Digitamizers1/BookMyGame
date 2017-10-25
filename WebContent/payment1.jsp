<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Payment</title>
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

footer {
	background-color: #f2f2f2;
	height: 100px;
	bottom: 0;
	width: 100%;
}

.heading {
	text-align: center;
}

.bottom {
	text-align: center;
}
</style>
<body>
	<%
	if(session.getAttribute("username")==null){
		response.sendRedirect("Login.jsp");
	}
	
	%>
	<div class="heading">
		<h1>BookMyGame</h1>
		<h3>Payment Details</h3>
	</div>
	<div class="container">
		<div class="row">
			<div class="col-lg-6 col-lg-offset-3">
				<div class="customDiv">
					<div class="panel panel-default credit-card-box">
						<div class="panel-heading display-table">
							<div class="row display-tr">

								<div class="display-td">
									<img class="img-responsive pull-right"
										src="http://i76.imgup.net/accepted_c22e0.png">
								</div>
							</div>
						</div>
						<div class="panel-body">
							<form role="form" id="payment-form" method="POST"
								action="PaymentController">
								<div class="row">
									<div class="col-xs-12">
										<div class="form-group">
											<label for="Name">NAME ON THE CARD</label>
											<div class="input-group">
												<input type="text" class="form-control" name="cardName"
													placeholder="Name on the card " autocomplete="on" required
													autofocus /> <span class="input-group-addon"><i
													class="fa fa-credit-card"></i></span>
											</div>
										</div>
									</div>
								</div>
								<div class="row">
									<div class="col-xs-12">
										<div class="form-group">
											<label for="cardNumber">CARD NUMBER</label>
											<div class="input-group">
												<input type="tel" class="form-control" name="cardNumber"
													placeholder="Valid Card Number" autocomplete="on" required
													autofocus /> <span class="input-group-addon"><i
													class="fa fa-credit-card"></i></span>
											</div>
										</div>
									</div>
								</div>
								<div class="row">
									<div class="col-xs-7 col-md-7">
										<div class="form-group">
											<label for="cardExpiry"><span class="hidden-xs">EXPIRATION</span><span
												class="visible-xs-inline">EXP</span> DATE</label> <input type="date"
												class="form-control" name="cardExpiry" autocomplete="on"
												required />
										</div>
									</div>
									<div class="col-xs-5 col-md-5 pull-right">
										<div class="form-group">
											<label for="cardCVC">CV CODE</label> <input type="tel"
												class="form-control" name="cardCVC" placeholder="CVC"
												autocomplete="on" required />
										</div>
									</div>
								</div>
								<div class="row">
									<div class="col-xs-12">
										<button class="subscribe btn btn-success btn-lg btn-block"
											type="submit">Pay Now</button>
									</div>
								</div>
							</form>
						</div>
					</div>
				</div>
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
			<label><a href="letushelpyou">let us help you </a></label>
		</div>
		<div class="col-md-4">
			<label><a href="aboutus.html">About us</a></label>
		</div>
	</footer>
</body>
</html>

