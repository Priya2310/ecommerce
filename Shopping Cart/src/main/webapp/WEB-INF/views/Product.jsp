<html>
<head>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<title>Product Page</title>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="resources/css/bootstrap.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
<script src="resources/js/bootstrap.js"></script>
<c:set var="rootContext" value="${pageContext.request.contextPath}"/>
<script type="text/javascript">
function validate(){  
	var num=document.productform.price.value;  
	if (isNaN(num)){  
	  /* document.getElementById("price").innerHTML="Enter Numeric value only"; */  
	  alert("Enter only numeric value for price");
	  return false;  
	}else{  
	  return true;  
	  }  
	}  
</script>
</head>
<body>
<jsp:include page="Header.jsp"></jsp:include>
<div class="container">
	<h2>Manage Products</h2>
	<div class="panel panel-default">
	<div class="panel panel-heading">
	<h4>Add Product</h4>
	</div>
	<div class="panel panel-body">
	${message}
	<c:url var="addAction" value="manage_product_add?${_csrf.parameterName}=${_csrf.token}"></c:url>

	<form:form action="${addAction}" commandName="product" name="productform"
		enctype="multipart/form-data" method="post" onsubmit="return validate()">
		<table>
			<tr>
				<td><form:label path="id">
						<spring:message text="ID" />
					</form:label></td>
				
						<td><form:input path="id" pattern=".{5,20}" required="true"
								title="id should contains 5 to 20 characters" /></td>
			<tr>
				<form:input path="id" hidden="true" />
				
				
				<td><form:label path="name">
						<spring:message text="Name" />
					</form:label></td>
				<td><form:input path="name" required="true" /></td>
			</tr>


			<tr>
				<td> Price </td>
				<td><form:input path="price" id="price" required="true" /></td>
			</tr>

			<tr>
				<td>Description</td>
				<td><form:input path="description" required="true" /></td>
			</tr>

			<tr>
				<td>Supplier</td>
				<td><form:select path="supplier.name" items="${supplierList}"
						itemValue="name" itemLabel="name" /></td>
			</tr>
			<tr>
				<td>Category</td>
				<td><form:select path="category.name" items="${categoryList}"
						itemValue="name" itemLabel="name" /></td>
			</tr>
			<tr>
				<td align="left"><form:label path="image">
						<spring:message text=" Image" />
					</form:label></td>
				<td align="left"><form:input type="file" name="image" path="image" /></td>
			</tr>
			<tr>
				<td colspan="2">
						<input type="submit" value="<spring:message text="Add Product"/>" />
				</td>
			</tr>
		</table>
		
		<input type="hidden" 
             name="${_csrf.parameterName}" 
             value="${_csrf.token}" />
	</form:form>
	<br>
	</div>
	</div>
	<c:if test="${isAdminClickedEdit=='true'}">
	<jsp:include page="UpdateProduct.jsp"></jsp:include>
	</c:if>
	<h3>Product List</h3>
	<c:if test="${!empty productList}">
		<table class="table table-bordered">
			<tr>
				<th width="80">Product ID</th>
				<th width="120">Product Name</th>
				<th width="200">Product Description</th>
				<th width="80">Price</th>
				<th width="80">Product Category</th>
				<th width="80">Product Supplier</th>
				<th width="60">Edit</th>
				<th width="60">Delete</th>
			</tr>
			<c:forEach items="${productList}" var="product">
				<tr>
					<td>${product.id}</td>
					<td>${product.name}</td>
					<td>${product.description}</td>
					<td>${product.price}</td>
					<td>${product.category.name}</td>
					<td>${product.supplier.name}</td>
					<td><a href="${rootContext}/manage_product_edit/${product.id}">Edit</a></td>
					<td><a href="${rootContext}/manage_product_remove/${product.id}">Delete</a></td>
				</tr>
			</c:forEach>
		</table>
	</c:if>
	</div>
</body>
</html>