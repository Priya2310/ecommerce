<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="rootContext" value="${pageContext.request.contextPath}"/>
<title>Insert title here</title>
<link rel="stylesheet" href="resources/css/bootstrap.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
<script src="resources/js/bootstrap.js"></script>
</head>
<body>
<jsp:include page="Header.jsp"></jsp:include>
<div class="container">
	<table>
		<tr>
			<th align="left" width="80">Cart ID</th>
			<th align="left" width="120">Product Name</th>
			<th align="left" width="200">Date Added</th>
			<th align="left" width="80">Price</th>
			<th colspan="2" align="center" width="60">Action</th>

		</tr>
		<c:forEach items="${cartList}" var="cart">
			<tr>
				<td align="left">${cart.id}</td>
				<td align="left">${cart.product_name}</td>
				<td align="left">${cart.date_added}</td>
				<td align="left">${cart.price}</td>
				<td align="left"><a
					href="<c:url value='/myCart/delete/${cart.id}'  />">Delete</a></td>
					
			</tr>
		</c:forEach>

	</table>

	<h2>Total cost : ${totalAmount}</h2>
	<br>
	<a href="${rootContext}/checkout"><input type="button" class="btn-btn default" value="Checkout" /></a>
	<br>
	<br>
</div>
</body>
</html>