<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="resources/css/bootstrap.css">
<link rel="stylesheet" href="resources/css/font-awesome.css">
<link rel="stylesheet" href="resources/css/ProductList.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
<script src="resources/js/bootstrap.js"></script>
<script src="resources/js/jquery.sieve.js"></script>
<title>Product List</title>
<script type="text/javascript">
	$(document).ready(function() {
		$("table.booklist").sieve();
	});
</script>
</head>
<body>
	<div class="container">
		<div class="product">
			<table class="booklist">
				<tr colspan="4">
					<th>Product List</th>
				</tr>
				<div class="col-md-6">
					<tr>
						<td><img src="resources/img/Twilight.jpg" alt="twilight">
						</td>
						<td class="col-md-6">
							<p>
								<strong>Twilight</strong><br> Romance,Stephenie Meyer<br>
								<span class="glyphicon glyphicon-star"></span> <span
									class="glyphicon glyphicon-star"></span> <span
									class="glyphicon glyphicon-star"></span> <span
									class="glyphicon glyphicon-star"></span> <span
									class="glyphicon glyphicon-star-empty"></span><br>
							<div class="col-md-6 col-sm-6">
								<button class="btn btn-success right">ADD ITEM</button>
							</div>
							<br>
						<br>
							<p class="price">Price:250.00</p>
						</td>
						<td><img src="resources/img/The Hunger Games.jpg"
							alt="HungerGames"></td>
						<td class="col-offset-2 col-md-6">
							<p>
								<strong>The Hunger Games</strong><br> Adventure,Suzanne
								Collins<br> <span class="glyphicon glyphicon-star"></span>
								<span class="glyphicon glyphicon-star"></span> <span
									class="glyphicon glyphicon-star"></span> <span
									class="glyphicon glyphicon-star"></span> <span
									class="glyphicon glyphicon-star-empty"></span><br>
							<div class="col-md-6 col-sm-6">
								<button class="btn btn-success right">ADD ITEM</button>
							</div>
							<br>
						<br>
							<div class="col-md-6 col-sm-6">
								<p class="price">Price:275.00</p>
							</div>
						</td>
					</tr>
					<td><img src="resources/img/Catching Fire.jpg"
						alt="Catching Fire"></td>
					<td class="col-md-6">
						<p>
							<strong>Catching Fire</strong><br> Adventure,Suzanne Collins<br>
							<span class="glyphicon glyphicon-star"></span> <span
								class="glyphicon glyphicon-star"></span> <span
								class="glyphicon glyphicon-star"></span> <span
								class="glyphicon glyphicon-star-empty"></span> <span
								class="glyphicon glyphicon-star-empty"></span><br>
						<div class="col-md-6 col-sm-6">
							<button class="btn btn-success right">ADD ITEM</button>
						</div>
						<br>
					<br>
						<div class="col-md-6 col-sm-6">
							<p class="price">Price:300.00</p>
						</div>
					</td>
									<td><img src="resources/img/Mocking Jay.jpg"
							alt="Mocking Jay"></td>
						<td class="col-offset-2 col-md-6">
							<p>
								<strong>Mocking Jay</strong><br> Adventure,Suzanne
								Collins<br> <span class="glyphicon glyphicon-star"></span>
								<span class="glyphicon glyphicon-star"></span> <span
									class="glyphicon glyphicon-star"></span> <span
									class="glyphicon glyphicon-star"></span> <span
									class="glyphicon glyphicon-star-empty"></span><br>
							<div class="col-md-6 col-sm-6">
								<button class="btn btn-success right">ADD ITEM</button>
							</div>
							<br>
						<br>
							<div class="col-md-6 col-sm-6">
								<p class="price">Price:325.00</p>
							</div>
						</td>
					</tr>
					<tr>
					<td><img src="resources/img/The Inferno.jpg" alt="Inferno">
						</td>
						<td class="col-md-6">
							<p>
								<strong>The Inferno</strong><br> Adventure, Dan Brown<br>
								<span class="glyphicon glyphicon-star"></span> <span
									class="glyphicon glyphicon-star"></span> <span
									class="glyphicon glyphicon-star"></span> <span
									class="glyphicon glyphicon-star"></span> <span
									class="glyphicon glyphicon-star-empty"></span><br>
							<div class="col-md-6 col-sm-6">
								<button class="btn btn-success right">ADD ITEM</button>
							</div>
							<br>
						<br>
							<p class="price">Price:375.00</p>
						</td>
				</div>
			</table>
		</div>
	</div>
</body>
</html>