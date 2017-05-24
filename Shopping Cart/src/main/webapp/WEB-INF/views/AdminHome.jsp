<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="resources/css/bootstrap.css">
<title>Insert title here</title>
<c:set var="rootContext" value="${pageContext.request.contextPath}"/> 
</head>
<body>
<nav class="navbar navbar-inverse">
<div class="container">
<ul class="nav navbar-nav">
<li><a  href="${rootContext}/manageCategories"> Manage Categories</a></li>
<li><a  href="${rootContext}/manageSupplier"> Manage Suppliers</a></li>   
<li><a  href="${rootContext}/manageProducts"> Manage Products</a></li>
</ul>
<script	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
<script src="resources/js/bootstrap.js"></script>
</body>
</html>