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
<title>Add Order</title>
<style>
.header {
	width: 100%;
	height: 92vh;
	padding: 0px 08px;
	position: relative;
	background-image: linear-gradient(to top, rgba(0, 0, 0, 0.8) 0,
		rgba(0, 0, 0, 0) 60%, rgba(0, 0, 0, 0.8) 100%),
		url("https://wallpapercave.com/wp/wp3631309.jpg");
	background-size: cover;
	background-position: center;
}
</style>
</head>
<body class="">
	<div class="header">
		<div>
			<nav class="navbar navbar-expand-lg navbar-light shadow"
				style="background-color: #48adf9;">
				<a class="navbar-brand" href="#"><svg
						xmlns="http://www.w3.org/2000/svg" width="25" height="25"
						fill="currentColor" class="bi bi-explicit-fill text-danger"
						viewBox="0 0 16 16">
  <path
							d="M2.5 0A2.5 2.5 0 0 0 0 2.5v11A2.5 2.5 0 0 0 2.5 16h11a2.5 2.5 0 0 0 2.5-2.5v-11A2.5 2.5 0 0 0 13.5 0zm4.326 10.88H10.5V12h-5V4.002h5v1.12H6.826V7.4h3.457v1.073H6.826z" />
</svg> </i>Online Delivery App</a>
				<button class="navbar-toggler" type="button" data-toggle="collapse"
					data-target="#navbarText" aria-controls="navbarText"
					aria-expanded="false" aria-label="Toggle navigation">
					<span class="navbar-toggler-icon"></span>
				</button>
				<div class="my-2 my-lg-0 d-flex flex-row-reverse bd-highlight">
					<ul class="navbar-nav mr-auto">
						<li class="nav-item dropdown"><a
							class="nav-link dropdown-toggle" href="#" id="navbarDropdown"
							role="button" data-toggle="dropdown" aria-haspopup="true"
							aria-expanded="false"> Order </a>
							<div class="dropdown-menu" aria-labelledby="navbarDropdown">
								<a class="dropdown-item"
									href="${pageContext.request.contextPath}/addorder">Add
									Product</a> <a class="dropdown-item" href="#">See Order</a>
								<div class="dropdown-divider"></div>
								<a class="dropdown-item" href="#">History</a>
							</div>
						<li class="nav-item"><a class="nav-link" href="#">Details</a>
						</li>
						<li class="nav-item"><a class="nav-link" href="#">Pricing</a></li>
					</ul>
				</div>
			</nav>
		</div>


	</div>
	<!-- Option 1: jQuery and Bootstrap Bundle (includes Popper) -->
	<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"
		integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx"
		crossorigin="anonymous"></script>

</body>
</html>