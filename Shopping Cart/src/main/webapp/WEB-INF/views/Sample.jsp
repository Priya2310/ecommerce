<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="resources/css/bootstrap.css">
<link rel="stylesheet" href="resources/css/font-awesome.css">
<style type="text/css">
#myCarousel
{
background: url("resources/img/book.jpg");
height:450px;
width:1200px;
}
.shopNow
{
margin-top: 200px;
}
</style>
</head>
<body>
<div class="container">
	<h1>
		<center>Shopping Cart</center>
	</h1>
		<div id="myCarousel" class="carousel slide" data-ride="carousel">
  
  <ol class="carousel-indicators">
    <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
    <li data-target="#myCarousel" data-slide-to="1"></li>
    </ol>
    
    <div class="carousel-inner" role="listbox">
    <div class="item active">
      <img src="resources/img/book1.jpg" alt="Books">
    </div>

    <div class="item">
    <div class="shopNow">
      <div class="col-lg-offset-3 col-lg-4">
      <button class="btn btn-lg btn-primary" id="button1">Shop Now</button>
      </div>
      </div> 
    </div>
    </div>
    <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
    <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
    <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
    <span class="sr-only">Next</span>
  </a>
</div>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
<script	src="resources/js/bootstrap.js"></script>
    
    </div>
</body>
</html>