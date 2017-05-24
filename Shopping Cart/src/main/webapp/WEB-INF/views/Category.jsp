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
<c:set var="rootContext" value="${pageContext.request.contextPath}"/>
</head>
<body>
<jsp:include page="Header.jsp"></jsp:include>
<div class="container">
<h2> Manage Categories</h2>
${message}
	<div class="panel panel-default">
		<div class="panel-heading">
			<h2>Create Category</h2>
		</div>
		<div class="panel-body">
			<form action="${rootContext}/manage_category_add">
				<div class="form-group">
					<label>Category ID</label> <input type="text" name="id" required/>
				</div>
				<div class="form-group">
					<label>Category Name</label> <input type="text" name="name" required/>
				</div>
				<div class="form-group">
					<label>Category description</label> <input type="text" name="description" required/>
				</div>
					<input type="submit" value="Create Category">
			</form>
		</div>
	</div>
	<c:if test="${isAdminClickedEdit=='true'}">
	<jsp:include page="UpdateCategory.jsp"></jsp:include>
	</c:if>
	<h2>Delete / Update the Categories</h2>
	<div id="ShowCategories">

		<table border="2">
			<thead>
				<tr>
					<td>Category ID</td>
					<td>Category Name</td>
					<td>Category Description</td>
					<td>Action</td>
				</tr>
			</thead>

			<c:forEach var="category" items="${categoryList}">

				<tr>
					<td>${category.id}</td>
					<td>${category.name}</td>
					<td>${category.description}</td>

					<td><a href="<c:url value='/manage_category_delete/${category.id}'/>">
							Delete  </a> | <a href="<c:url value='/manage_category_edit/${category.id}'/>"> Edit </a></td>
				</tr>
			</c:forEach>
		</table>
	</div>
	</div>
</body>
</html>