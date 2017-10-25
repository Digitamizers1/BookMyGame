<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>DisplayGames</title>
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
					
					String name=(String)session.getAttribute("user");
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
			<c:forEach items="${groundsList}" var="groundsList">
				<div class="col-md-4">
					<div class="name">
						<h3>${groundsList.groundname}</h3>
						<h4>${groundsList.location}</h4>
						<h5>${groundsList.address}</h5>
						<h6>${groundsList.price}</h6>
					</div>
					<br>
					<div class="thumbnail">
						<img src="Images/${groundsList.g_imagepath}" alt="img">
					</div>
					<div class="name">
					<h3>
						<label><a
							href="Booknow?groundid=<c:out value="${groundsList.gid}"/>& groundname=<c:out value="${groundsList.groundname}"/>">Book Now</a></label>
					</h3>
					</div>
				</div>
			</c:forEach>
		</div>
	</div>
	<br>
	<br>


</body>
</html>
