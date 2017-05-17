<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Shipping Address</title>
</head>
<body>
<div class="container">
<h4>Enter the Shipping Address</h4>
<form action="addAddress">
<label>Address Line 1</label><input type="text" name="line1"><br>
<label>Address Line 2</label><input type="text" name="line2"><br>
<label>City</label><input type="text" name="city"><br>
<label>Pincode</label><input type="text" name="pincode"><br>
<input type="submit">
</form>
</div>
</body>
</html>