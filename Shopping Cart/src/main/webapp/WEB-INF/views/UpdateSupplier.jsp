<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Manage Supplier</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	<c:set var="rootContext" value="${pageContext.request.contextPath}"/>
</head>
<body>
<div class="panel panel-default">
		<div class="panel-heading">
			<h2>Update Supplier</h2>
		</div>
		<div class="panel-body">
			<form action="${rootContext}/manage_supplier_update">
				<div class="form-group">
					<label>Supplier ID</label> <input type="text" name="id" value="${selectedValue.id}">
				</div>
				<div class="form-group">
					<label>Supplier Name</label> <input type="text" name="name" value="${selectedValue.name}">
				</div>
				<div class="form-group">
					<label>Supplier Address</label> <input type="text" name="address" value="${selectedValue.address}">
				</div>
				<input type="submit" value="Update Supplier">
			</form>
		</div>
	</div>
</body>
</html>