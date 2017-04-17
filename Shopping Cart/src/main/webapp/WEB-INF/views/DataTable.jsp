<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="WEB-INF/resources/css/bootstrap.min.css" rel="stylesheet">
<link href="css/dataTables.bootstrap.min.css" rel="stylesheet">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="WEB-INF/resources/js/bootstrap.min.js"></script>
<title>Insert title here</title>
</head>
<body>
	<div class="container">
		<h1>Data Table</h1>
		<table class="table table-bordered" id="BookTable">

			<thead>
				<tr>
					<th>Book ID</th>
					<th>Book Name</th>
					<th>Author Name</th>
					<th>Genre</th>
					<th>Price</th>
					<th>Image</th>
				</tr>
			</thead>
		</table>

		<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
		<script src="js/jquery.js"></script>
		<!-- Include all compiled plugins (below), or include individual files as needed -->
		<script src="js/bootstrap.min.js"></script>
		<script src="js/dataTables.bootstrap.min.js"></script>
		<script src="js/jquery.dataTables.min.js"></script>
		<script>
			$('#BookTable')
					.dataTable(
							{
								ajax : {
									url : 'WEB-INF/views/data.js',
									dataSrc : ''
								},
								columns : [
										{
											data : 'bookId'
										},
										{
											data : 'name'
										},
										{
											data : 'author'
										},
										{
											data : 'genre'
										},
										{
											data : 'cost'
										},
										{
											data : 'name',
											mRender : function(data, type, row) {
												return '<img src = "'+data+'.jpg" width="160px" height = "200px">';
											}
										} ]
							});
		</script>
</body>
</html>
</body>
</html>