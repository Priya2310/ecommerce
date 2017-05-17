<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Manage Supplier</title>
<link rel="stylesheet" href="resources/css/bootstrap.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
<script src="resources/js/bootstrap.js"></script>
</head>
<body>
<div class="container">
<h2> Manage Supplier</h2>
${message}
	<div class="panel panel-default">
		<div class="panel-heading">
			<h2>Create Supplier</h2>
		</div>
		<div class="panel-body">
			<form action="manage_supplier_add">
				<div class="form-group">
					<label>Supplier ID</label> <input type="text" name="id" required/>
				</div>
				<div class="form-group">
					<label>Supplier Name</label> <input type="text" name="name" required/>
				</div>
				<div class="form-group">
					<label>Supplier Address</label> <input type="text" name="address" required/>
				</div>
					<input type="submit" value="Create Supplier">
			</form>
		</div>
	</div>
	<c:if test="${isAdminClickedEdit=='true'}">
	<jsp:include page="UpdateSupplier.jsp"></jsp:include>
	</c:if>
	<h2>Delete / Update the Suppliers</h2>
	<div id="ShowSuppliers">

		<table border="2">
			<thead>
				<tr>
					<td>Supplier ID</td>
					<td>Supplier Name</td>
					<td>Supplier Description</td>
					<td>Action</td>
				</tr>
			</thead>

			<c:forEach var="supplier" items="${supplierList}">

				<tr>
					<td>${supplier.id}</td>
					<td>${supplier.name}</td>
					<td>${supplier.address}</td>

					<td><a href="<c:url value='manage_supplier_delete/${supplier.id}'/>">
							Delete  </a> | <a href="<c:url value='manage_supplier_edit/${supplier.id}'/>"> Edit </a></td>
				</tr>
			</c:forEach>
		</table>
	</div>
	</div>
</body>
</html>