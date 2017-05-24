<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

<!-- jQuery library -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="resources/css/style.css">
<title>Registration Page</title>
<script type="text/javascript">
function validate(){  
	var num=document.registerform.mob.value;
	var x=document.registerform.email.value;
	var atposition=x.indexOf("@");  
	var dotposition=x.lastIndexOf(".");
	if (isNaN(num)){  
	 	alert("Enter only numeric value for mobile no.") 
	  return false;  
	}else{  
	  return true;  
	  }  
	if (atposition<1 || dotposition<atposition+2 || dotposition+2>=x.length){  
		  alert("Please enter a valid e-mail address \n atpostion:"+atposition+"\n dotposition:"+dotposition);  
		  return false;  
		  }  
	}  
</script>
</head>
<body>
<jsp:include page="Header.jsp"></jsp:include>
	<div class="container">
		<div class="row">
			<div class="col-md-6 col-md-offset-3">
				<div class="panel panel-primary">
					<div class="panel-heading">
						<h1 class="panel-title">
							<b><center>Register Here</center></b>
						</h1>
					</div>
					<div class="panel-body">
						<form:form action="registration" commandName="user" name="registerform" onsubmit="return validate()">
							<div class="form-group">
								<span
									class="glyphicon glyphicon-user"></span> UserName: <form:input type="text" path="name" class="form-control" required="true"/>
							</div>
							<div class="form-group">
								<span
									class="glyphicon glyphicon-earphone"></span> Contact Number:<form:input type="text" path="contact" id="mob" class="form-control" required="true"/>
							</div>
							<div class="form-group">
								<span
									class="glyphicon glyphicon-envelope"></span> Email: <form:input type="text" path="id" id="email" class="form-control" required="true"/>
							</div>
							<div class="form-group">
								<span class="glyphicon glyphicon-lock"></span> Password:
								 <form:input type="password" path="password" class="form-control" required="true"/>
							</div>
							<div class="form-group">
							Role:
							<form:input type="text" path="role" value="user" class="form-control"/>
							</div>
							<input type="submit" class="btn btn-primary" class="form-control"/>
						</form:form>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>