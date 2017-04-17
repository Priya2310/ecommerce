<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="resources/css/bootstrap.css">
<link rel="stylesheet" href="resources/css/font-awesome.css">

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<title>Home Page</title>
<link rel="stylesheet" href="resources/css/style.css">
</head>
<body>

	<div class="container">
		<nav class="navbar navbar-inverse">
		<ul class="nav navbar-nav">
			<li><a href="Home" class="menu"><b>Home</b></a></li>
			<li><a href="Products" class="menu"><b>Products</b></a></li>
			<li><a href="#" class="menu"><b>Categories</b></a></li>
		</ul>
		<ul class="nav navbar-nav navbar-right">
			<li><a href="Login" class="menu"><b> Login</b></a></li>
			<li><a href="Register" class="menu"><b>Register</b></a></li>
		</ul>
		</nav>
		<div class="jumbotron">
			<h1>
				<center>
					<b>Welcome To Shopping Cart</b>
				</center>
			</h1>
		</div>

		<c:if test="${isLoginClicked=='true'}">
			<jsp:include page="Login.jsp"></jsp:include>
		</c:if>

		<c:if test="${isRegisterClicked=='true'}">
			<jsp:include page="Register.jsp"></jsp:include>
		</c:if>

		<div id="myCarousel" class="carousel slide" data-ride="carousel">

			<ol class="carousel-indicators">
				<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
				<li data-target="#myCarousel" data-slide-to="1"></li>
				<li data-target="#myCarousel" data-slide-to="2"></li>
				<li data-target="#myCarousel" data-slide-to="3"></li>
			</ol>


			<div class="carousel-inner" role="listbox">
				<div class="item active">
					<img src="resources/img/book1.jpg" alt="Books">
				</div>

				<div class="item">
					<img src="resources/img/book2.jpg" alt="Books">
				</div>
				<div class="item">
					<img src="resources/img/book3.jpg" alt="Books">
				</div>
				<div class="item">
					<img src="resources/img/book4.jpg" alt="Books">
				</div>
				<a class="left carousel-control" href="#myCarousel" role="button"
					data-slide="prev"> <span
					class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
					<span class="sr-only">Previous</span>
				</a> <a class="right carousel-control" href="#myCarousel" role="button"
					data-slide="next"> <span
					class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
					<span class="sr-only">Next</span>
				</a>
			</div>
			<script
				src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
			<script src="resources/js/bootstrap.js"></script>


		</div>
</body>
</html>