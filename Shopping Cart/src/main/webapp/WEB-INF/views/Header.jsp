<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="resources/css/bootstrap.css">
<c:set var="rootContext" value="${pageContext.request.contextPath}"/>
<title>Insert title here</title>
</head>
<body>
	<nav class="navbar navbar-inverse">
	<div class="container">
		<ul class="nav navbar-nav">
			<li><a href="${rootContext}/Home" class="menu"><b>Home</b></a></li>
			<li><a href="${rootContext}/Products" class="menu"><b>Products</b></a></li>
			<%-- <li class="dropdown"><a class="dropdown-toggle"
				data-toggle="dropdown" href="#"><b>Categories</b><span
					class="caret"></span></a>
				<ul class="dropdown-menu">
					<c:forEach var="category" items="${categoryList}">
						<li><a href="#">${category.name }</a></li>
					</c:forEach>
				</ul></li> --%>
		</ul>
		<ul class="nav navbar-nav navbar-right">
			<sec:authorize access="hasAuthority('user')">
			<li><a href="${rootContext}/logout" class="menu"><b>Logout</b></a>
			<li><a href="${rootContext}/myCart" class="menu"><b>My Cart</b></a>
			</sec:authorize>
			<sec:authorize access="hasAuthority('admin')">
			<li><a href="${rootContext}/logout" class="menu"><b>Logout</b></a>
			</sec:authorize>
			<li><a href="${rootContext}/Login" class="menu"><b> Login</b></a></li>
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
	<div class="container">
		<div class="admin menu">
			<sec:authorize access="hasAuthority('admin')">

				<jsp:include page="AdminHome.jsp"></jsp:include>

			</sec:authorize>
		</div>
	</div>
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
	<script src="resources/js/bootstrap.js"></script>
</body>
</html>