<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Manage Categories</title>
<link rel="stylesheet" href="resources/css/bootstrap.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
<script src="resources/js/bootstrap.js"></script>
</head>
<body>
<div class="panel panel-default">
		<div class="panel-heading">
			<h2>Update Category</h2>
		</div>
		<div class="panel-body">
			<form action="manage_category_update">
				<div class="form-group">
					<label>Category ID</label> <input type="text" name="id" value="${selectedCategory.id}">
				</div>
				<div class="form-group">
					<label>Category Name</label> <input type="text" name="name" value="${selectedCategory.name}">
				</div>
				<div class="form-group">
					<label>Category description</label> <input type="text" name="description" value="${selectedCategory.description}">
				</div>
				<input type="submit" value="Update Category">
			</form>
		</div>
	</div>
</body>
</html>