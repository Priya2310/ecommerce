<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="resources/css/bootstrap.css">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<title>Home Page</title>
<link rel="stylesheet" href="resources/css/style.css">
</head>
<body>
	<jsp:include page="Header.jsp"></jsp:include>

	
		<div class="container">
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
					<img src="resources/img/book.jpg" alt="Books">
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
		</div>
		<script
			src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
		<script src="resources/js/bootstrap.js"></script>
</body>
<br>
<footer align="right">
	<h4>Contact Us at:</h4>
	<h6>admin@shoppingcart.com</h6>
</footer>
</html>