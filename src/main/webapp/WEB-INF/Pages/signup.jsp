<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!doctype html>
<html lang="en">
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css"
	integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2"
	crossorigin="anonymous">
<title>SignUp</title>
</head>
<body>
	<nav class="navbar navbar-expand-lg navbar-light"
		style="background-color: #318ce7;">
		<a class="navbar-brand" href="#">Online Delivary Management System</a>
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navbarSupportedContent"
			aria-controls="navbarSupportedContent" aria-expanded="false"
			aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>

		<div class="collapse navbar-collapse float-left"
			id="navbarSupportedContent">

			<ul class="navbar-nav mr-auto">
				<li class="nav-item active"><a class="nav-link" href="#">Home
				</a></li>
				<li class="nav-item active"><a class="nav-link"
					href="${pageContext.request.contextPath}/">Login</a></li>
			</ul>

		</div>
	</nav>


	<!--  Signup form -->
	<div class="container mt-5">
		<form action="userData" method="post"
			class="border-0 border-light shadow p-5">
			<div class="form-row">
				<div class="form-group col-md-6">
					<label for="inputEmail4">Email</label> <input type="email"
						class="form-control" id="inputEmail4" name="mail" required>
				</div>
				<div class="form-group col-md-6">
					<label for="inputPassword4">Password</label> <input type="password"
						class="form-control" id="inputPassword4" name="password" required>
				</div>
			</div>
			<div class="form-group">
				<label for="inputAddress">User Name</label> <input type="text"
					class="form-control" id="inputAddress" placeholder="Akshay kumar"
					name="username" required>
			</div>
			<div class="form-group">
				<label for="inputAddress2">Address</label> <input type="text"
					class="form-control" id="inputAddress2"
					placeholder="Apartment, studio, or floor" name="address" required>
			</div>
			<div class="form-row">
				<div class="form-group col-md-6">
					<label for="inputCity">City</label> <input type="text"
						class="form-control" id="inputCity" name="city" required>
				</div>
				<div class="form-group col-md-4">
					<label for="inputState">State</label> 
					<select id="inputState"
						class="form-control" name="type">
						<option selected value="Customer">Customer</option>
						<option value="shopkeeper">shopkeeper</option>
					</select>
				</div>
				<div class="form-group col-md-2">
					<label for="inputZip">Phone No</label> <input type="text"
						class="form-control" id="inputZip" name="phoneno" required>
				</div>
			</div>

			<div class="text-center mt-3">
				<button type="submit" class="btn btn-primary btn-sm btn-block">Sign
					in</button>
			</div>
		</form>
	</div>

</body>
</html>