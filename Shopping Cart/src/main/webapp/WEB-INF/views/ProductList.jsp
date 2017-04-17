<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="resources/css/bootstrap.css">
<link rel="stylesheet" href="resources/css/font-awesome.css">

<title>Product List</title>
<style type="text/css">
    h4{
    	font-weight: 600;
	}
	p{
		font-size: 12px;
		margin-top: 5px;
	}
	.price{
		font-size: 30px;
    	margin: 0 auto;
    	color: #333;
	}
	.right{
		float:right;
		border-bottom: 2px solid #4B8E4B;
	}
	.thumbnail{
		opacity:0.70;
		-webkit-transition: all 0.5s; 
		transition: all 0.5s;
	}
	.thumbnail:hover{
		opacity:1.00;
		box-shadow: 0px 0px 10px #4bc6ff;
	}
	.line{
		margin-bottom: 5px;
	}
	@media screen and (max-width: 770px) {
		.right{
			float:left;
			width: 100%;
		}
	}
</style>
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<script>
$ ( function() {
	var books= [
		"Twilight",
		"The Hunger Games",
		"Catching Fire",
		"Mocking Jay",
		"Eclipse",
		"The Inferno",		
	];
	$( '#searchbox').autocomplete({
		source : books
	});
	
});

</script>

</head>
<body>
<div class="container">
<div class="row">
<label for="search">Search</label>
<input type="text" id="searchbox">
</div>
	<div class="row"></div>
  		<div class="col-md-3 col-sm-6">
    		<span class="thumbnail">
      			<img src="resources/img/Twilight.jpg" alt="twilight">
      			<h4>Title</h4>
      			<div class="ratings">
                    <span class="glyphicon glyphicon-star"></span>
                    <span class="glyphicon glyphicon-star"></span>
                    <span class="glyphicon glyphicon-star"></span>
                    <span class="glyphicon glyphicon-star"></span>
                    <span class="glyphicon glyphicon-star-empty"></span>
                </div>
      			<p>Romance, Stephenie Meyer</p>
      			<hr class="line">
      			<div class="row">
      				<div class="col-md-6 col-sm-6">
      					<p class="price">250.00</p>
      				</div>
      				<div class="col-md-6 col-sm-6">
      					<button class="btn btn-success right" > ADD ITEM</button>
      				</div>
      				
      			</div>
    		</span>
  		</div>
  		<div class="col-md-3 col-sm-6">
    		<span class="thumbnail">
      			<img src="resources/img/The Hunger Games.jpg" alt="The Hunger Games">
      			<h4>The Hunger Games</h4>
      			<div class="ratings">
                    <span class="glyphicon glyphicon-star"></span>
                    <span class="glyphicon glyphicon-star"></span>
                    <span class="glyphicon glyphicon-star"></span>
                    <span class="glyphicon glyphicon-star"></span>
                    <span class="glyphicon glyphicon-star-empty"></span>
                </div>
      			<p>Adventure, Suzanne Collins</p>
      			<hr class="line">
      			<div class="row">
      				<div class="col-md-6 col-sm-6">
      					<p class="price">275.00</p>
      				</div>
      				<div class="col-md-6 col-sm-6">
      					<button class="btn btn-success right" > ADD ITEM</button>
      				</div>
      				
      			</div>
    		</span>
  		</div>
  		<div class="col-md-3 col-sm-6">
    		<span class="thumbnail">
      			<img src="resources/img/Mocking Jay.jpg" alt="Mocking Jay">
      			<h4>Mocking Jay</h4>
      			<div class="ratings">
                    <span class="glyphicon glyphicon-star"></span>
                    <span class="glyphicon glyphicon-star"></span>
                    <span class="glyphicon glyphicon-star"></span>
                    <span class="glyphicon glyphicon-star"></span>
                    <span class="glyphicon glyphicon-star-empty"></span>
                </div>
      			<p>Adventure, Suzanne Collins</p>
      			<hr class="line">
      			<div class="row">
      				<div class="col-md-6 col-sm-6">
      					<p class="price">350.00</p>
      				</div>
      				<div class="col-md-6 col-sm-6">
      					<button class="btn btn-success right" > ADD ITEM</button>
      				</div>
      				
      			</div>
    		</span>
  		</div>
  		<div class="col-md-3 col-sm-6">
    		<span class="thumbnail">
      			<img src="resources/img/The Inferno.jpg" alt="The Inferno">
      			<h4>The Inferno</h4>
      			<div class="ratings">
                    <span class="glyphicon glyphicon-star"></span>
                    <span class="glyphicon glyphicon-star"></span>
                    <span class="glyphicon glyphicon-star"></span>
                    <span class="glyphicon glyphicon-star"></span>
                    <span class="glyphicon glyphicon-star-empty"></span>
                </div>
      			<p>Adventure, Dan Brown</p>
      			<hr class="line">
      			<div class="row">
      				<div class="col-md-6 col-sm-6">
      					<p class="price">300.00</p>
      				</div>
      				<div class="col-md-6 col-sm-6">
      					<button class="btn btn-success right" > ADD ITEM</button>
      				</div>
      				
      			</div>
    		</span>
  		</div>
	</div>
</div>
</div>
</div>

</div>
</div>
</body>
</html>