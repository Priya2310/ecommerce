<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="resources/css/bootstrap.css">
<link rel="stylesheet" href="resources/css/ProductList.css">
<script src="resources/js/jquery.js"></script>
<script src="resources/js/bootstrap.js"></script>
<script src="resources/js/custom.modernizr.js"></script>
<title>ProductList</title>
<script type="text/javascript">
	$(document).ready(function() {
		var $container = $('.item-container')

		$container.isotope({
			itemSelector : '.item',
			layoutMode : 'fitRows'
		}).isotopeSearchFilter();

	})
</script>
</head>
<body>
	<jsp:include page="Header.jsp"></jsp:include>
	<div class="container">
	<h2><center>Product List</center></h2>
		<input class="search-input" autofocus placeholder='Search here'
			type="text" id="search-term" /><br><br>
	<div class="item-container">
		<c:forEach var="product" items="${productList}">
			<div class="item">
				<div class="col-md-12">
					<span class="thumbnail"> <img
						src="resources/img/${product.name}.jpg" alt="${product.name}">
						<h4>${product.name}</h4>
						<p>${product.description}</p>
						<hr class="line">
						<div class="row">
							<div class="col-md-6 col-sm-6">
								Price:<p class="price">${product.price}</p>
							</div>
							<div class="col-md-6 col-sm-4">
								<a href="myCart/add/${product.id}"><button class="btn btn-success right">ADD TO CART</button></a>
							</div>
						</div>
					</span>
				</div>
			</div>
		</c:forEach>
	</div>
	<script src="resources/js/isotope.pkgd.js"></script>
	<script src="resources/js/isotopeSearchFilter.jquery.js"></script>
</body>
</html>