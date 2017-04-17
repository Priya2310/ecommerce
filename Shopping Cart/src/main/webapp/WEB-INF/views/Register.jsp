<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
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
</head>
<body>
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
						<form>
							<div class="form-group">
								<label for="Name">Name:</label> <input type="text"
									class="form-control" id="name" />
							</div>
							<div class="form-group">
								<label for="Email"><span
									class="glyphicon glyphicon-envelope"></span>Email: </label> <input
									type="email" class="form-control" id="Email" />
							</div>
							<div class="form-group">
								<label for="uname"><span
									class="glyphicon glyphicon-user"></span>UserName:</label> <input
									type="text" class="form-control" id="uname" />
							</div>
							<div class="form-group">
								<label for="Pwd"><span class="halflings-lock"></span>Password:
								</label> <input type="password" class="form-control" id="Pwd" />
							</div>
							<div class="form-group">
								<label for="Confpwd"><span class="halflings-lock"></span>Confirm
									Password: </label> <input type="password" class="form-control"
									id="Confpwd" />
							</div>
							<div class="form-group">
								<label for="dob"><span
									class="glyphicon glyphicon-calendar"></span>Date Of Birth: </label> <input
									type="date" class="form-control" id="dob" />
							</div>
							<div class="form-group">
								<label for="gender">Gender: </label>
								<div class="radio-inline">
									<label><input type="radio" name="male">Male</label>
								</div>
								<div class="radio-inline">
									<label><input type="radio" name="female">Female</label>
								</div>
							</div>
							<div class="form-group">
								<label for="address">Address: </label>
								<textarea class="form-control" rows="4" id="address"></textarea>
							</div>
							<div class="form-group">
								<label for="country">Country: </label> <select
									class="form-control" id="country">
									<option>India</option>
									<option>USA</option>
									<option>China</option>
									<option>UK</option>
									<option>Russia</option>
									<option>Germany</option>
								</select>
							</div>
							<button class="btn btn-primary">Submit</button>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>