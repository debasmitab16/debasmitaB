<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
<title>Insert title here</title>
</head>
<body>
  <nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="#">WebSiteName</a>
    </div>
    <ul class="nav navbar-nav">
      <li class="active"><a href="#">Home</a></li>
            <li><a href="#">About us</a></li>
      <li class="dropdown">
        <a class="dropdown-toggle" data-toggle="dropdown" href="#">Category
        <span class="caret"></span></a>
        <ul class="dropdown-menu">
          <li><a href="product">Category1</a></li>
          <li><a href="#">Page 1-2</a></li>
          <li><a href="#">Page 1-3</a></li>
        </ul>
      </li>
      <li><a href="product">Product</a></li>
      <span class="caret"></span>
      
    </ul>
    
    <ul class="nav navbar-nav navbar-right">
     <li><a href="#">Sign In</a></li>
     </ul>
    <ul class="nav navbar-nav navbar-right">
              
              <form class="navbar-form" role="search" method="get" id="search-form" name="search-form">
              <div class="input-group">
                
                  <input type="text" class="form-control" id="query" name="query" value="" width="5">
                   <div class="input-group-btn">
                  <button type="submit" class="btn btn-success"><span class="glyphicon glyphicon-search"></span></button>
                  </div>
              </div>
             </form>
            </div>
            
            
                 
     </ul>
     
    
  </div>
</nav>
<div id="myCarousel" class="carousel slide" data-ride="carousel">
  <!-- Indicators -->
  <ol class="carousel-indicators">
    <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
    <li data-target="#myCarousel" data-slide-to="1"></li>
    <li data-target="#myCarousel" data-slide-to="2"></li>
    <li data-target="#myCarousel" data-slide-to="3"></li>
  </ol>

  <!-- Wrapper for slides -->
  <div class="carousel-inner" role="listbox">
    <div class="item active">
      <img src="/img-carosal/pizza.jpg" alt="Pizza">
    </div>

    <div class="item">
      <img src="/img-carosal/burger.jpg" alt="Burger">
    </div>

    

    <div class="item">
      <img src="/img-carosal/hotdogs.jpg" alt="Hotdogs">
    </div>
  </div>

  <!-- Left and right controls -->
  <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
    <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
    <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
    <span class="sr-only">Next</span>
  </a>
</div>
<div  align="right">
   <iframe width="500" height="400" src="https://www.youtube.com/embed/rdC7cgBnpoE" frameborder="0" allowfullscreen></iframe>
   </iframe>
</div>


  
  <div class="navbar navbar-inverse">
    <div class="panel-heading">Panel Heading</div>
  
</div>
</body>
</html>