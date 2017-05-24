<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<title>Product Page</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<c:set var="rootContext" value="${pageContext.request.contextPath}" />

</head>
<body>

	<div class="container">
		<h2>Manage Products</h2>
		<div class="panel panel-default">
			<div class="panel panel-heading">
				<h4>Add Product</h4>
			</div>
			<div class="panel panel-body">
				<%-- <c:url var="addAction"
					value="${rootContext}/manage_product_edit/manage_product_update?${_csrf.parameterName}=${_csrf.token}"></c:url> --%>

				<form:form
					action="${rootContext}/manage_product_edit/manage_product_update?${_csrf.parameterName}=${_csrf.token}"
					commandName="product" enctype="multipart/form-data" method="post">
					<table>
						<tr>
							<td><form:label path="id">
									<spring:message text="ID" />
								</form:label></td>
							<td><form:input path="id" value="${selectedProduct.id}"
									required="true" /></td>
						<tr>

							<td><form:label path="name">
									<spring:message text="Name" />
								</form:label></td>
							<td><form:input path="name" value="${selectedProduct.name}"
									required="true" /></td>
						</tr>


						<tr>
							<td>Price</td>
							<td><form:input path="price"
									value="${selectedProduct.price}" required="true" /></td>
						</tr>

						<tr>
							<td>Description</td>
							<td><form:input path="description"
									value="${selectedProduct.description}" required="true" /></td>
						</tr>

						<tr>
							<td>Supplier</td>
							<td><form:select path="supplier.name"
									items="${supplierList}" itemValue="name" itemLabel="name" /></td>
						</tr>
						<tr>
							<td>Category</td>
							<td><form:select path="category.name"
									items="${categoryList}" itemValue="name" itemLabel="name" /></td>
						</tr>
						<tr>
							<td align="left"><form:label path="image">
									<spring:message text=" Image" />
								</form:label></td>
							<td align="left"><form:input type="file" name="image"
									path="image" /></td>
						</tr>
						<tr>
							<td colspan="2"><input type="submit"
								value="<spring:message text="Update Product"/>" /></td>
						</tr>
					</table>

					<input type="hidden" name="${_csrf.parameterName}"
						value="${_csrf.token}" />
				</form:form>
				<br>
			</div>
		</div>
	</div>
</body>
</html>