<%@page import="java.util.Arrays"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css"
	integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2"
	crossorigin="anonymous">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.6.0/css/all.min.css"
	integrity="sha512-Kc323vGBEqzTmouAECnVceyQqyqdsSiqLQISBL29aUW4U/M7pSPA/gEUZQqv1cwx4OnYxTxve5UMg5GT6L4JJg=="
	crossorigin="anonymous" referrerpolicy="no-referrer" />
<title>ORDERS</title>
<style>
.header {
	width: 100%;
	height: 100vh;
	padding: 0px 08px;
	position: relative;
	background-image: linear-gradient(to top, rgba(0, 0, 0, 0.8) 0,
		rgba(0, 0, 0, 0) 60%, rgba(0, 0, 0, 0.8) 100%),
		url("https://wallpapercave.com/wp/wp3631309.jpg");
	background-size: cover;
	background-position: center;
}

.font-style {
	font-family: "Gill Sans Extrabold", sans-serif;
	color: #3399ff;
}
</style>
</head>
<body>
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
									Order</a> <a class="dropdown-item"
									href="${pageContext.request.contextPath}/showorders">See
									Order</a>
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

		<div class="container mt-3">
			<div style="background-color: #FAFBFB" class="shadow">
				<table class="table table-striped">
					<thead>
						<tr>
							<th scope="col">Order ID</th>
							<th scope="col">First Name</th>
							<th scope="col">Last Name</th>
							<th scope="col">Address</th>
							<th scope="col">Order List</th>
							<th scope="col">Action</th>

						</tr>
					</thead>
					<tbody>
						<c:forEach items="${ data }" var="o">
							<tr>
								<td>${ o.orderid }</td>
								<td>${ o.firstname }</td>
								<td>${ o.lastname }</td>
								<td>${o.address }</td>
								<td><c:forEach items="${o.list}" var="list">
										<p>${list}</p>
									</c:forEach></td>
								<td><a href="${pageContext.request.contextPath}/delete/${ o.orderid }"><i
										class="fa-solid fa-trash text-danger mr-1 fs-2"></i></a><a href="#"><i
										class="fa-solid fa-pen-to-square text-success fs-2"	></i></a></td>
								</td>
							</tr>
						</c:forEach>

					</tbody>
				</table>
			</div>
		</div>
	</div>


	<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"
		integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx"
		crossorigin="anonymous"></script>

</body>
</html>