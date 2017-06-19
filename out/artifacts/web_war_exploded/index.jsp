<!DOCTYPE html>
<html lang="en">
<head>
  <title>Burger Flip</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="css/bootstrap.css">
  <!-- main stylesheet -->
  <link rel="stylesheet" href="css/main.css">
  <!-- slide show stylesheet -->
  <link rel="stylesheet" href="css/slide-show.css">

</head>
<body id="myPage" data-spy="scroll" data-target=".navbar" data-offset="60">

<nav class="navbar navbar-default navbar-fixed-top">
  <div class="container">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>                        
      </button>
      <a class="navbar-brand" href="#myPage">Burger Flip</a>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav navbar-right">
        <li><a data-toggle="modal" data-target="#loginModal">Order</a></li>
        <!-- modal for login -->
		<!-- Modal -->
		<div id="loginModal" class="modal fade" role="dialog">
		  <div class="modal-dialog">

		    <!-- Modal content-->
		    <div class="modal-content">
		      <div class="modal-header">
		        <button type="button" class="close" data-dismiss="modal">&times;</button>
		        <h4 class="modal-title">Login</h4>
		      </div>
		      <div class="modal-body">
		        <form action="login.jsp" method="POST">
				  <div class="form-group">
				    <label for="email">Email address:</label>
				    <input type="email" class="form-control" name="email" required autofocus>
				  </div>
				  <div class="form-group">
				    <label for="pwd">Password:</label>
				    <input type="password" class="form-control" name="pwd" required>
				  </div>

				  <button type="submit" class="btn btn-block btn-primary">Submit</button>
				</form>
		      </div>
		      <div class="modal-footer">
		        <button type="button" class="btn btn-default btn-primary" data-dismiss="modal">Close</button>
		      </div>
		    </div>

		  </div>
		</div>

        <li><a data-toggle="modal" data-target="#regModal">Register</a></li>
		  <!-- modal for Register -->
		  <!-- Modal -->
		  <div id="regModal" class="modal fade" role="dialog">
			  <div class="modal-dialog">

				  <!-- Modal content-->
				  <div class="modal-content">
					  <div class="modal-header">
						  <button type="button" class="close" data-dismiss="modal">&times;</button>
						  <h4 class="modal-title">Login</h4>
					  </div>
					  <div class="modal-body">
						  <form action="register.jsp" method="POST">
							  <div class="form-group">
								  <label for="name">Name:</label>
								  <input type="text" class="form-control" name="name" required autofocus>
							  </div>
							  <div class="form-group">
								  <label for="email">Email address:</label>
								  <input type="email" class="form-control" name="email" required autofocus>
							  </div>
							  <div class="form-group">
								  <label for="pwd">Password:</label>
								  <input type="password" class="form-control" name="pwd" required>
							  </div>
							  <button type="submit" class="btn btn-block btn-danger">Submit</button>
						  </form>
					  </div>
					  <div class="modal-footer">
						  <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
					  </div>
				  </div>

			  </div>
		  </div>

        <li><a href="#contact">Contact Us</a></li>
        <!-- <li><a href="#contact">CONTACT</a></li> -->
      </ul>
    </div>
  </div>
</nav>
<div class="jumbotron text-center" id="myPage">
  <h1>Burger Flip</h1> 
  <p>Order Your Burger and have it delivered to your door step</p> 
</div>

<!-- picture slide show -->
<div class="container">
	<div class="slideshow-container">
	  <div class="mySlides fade">
	    <img src="img/img1.jpg" style="width:100%" height="200px" class="img-responsive">
	  </div>

	  <div class="mySlides fade">
	    <img src="img/img2.jpg" style="width:100%" height="200px" class="img-responsive">
	  </div>

	  <div class="mySlides fade">
	    <img src="img/img3.jpg" style="width:100%" height="200px" class="img-responsive">
	  </div>

	  <a class="prev" onclick="plusSlides(-1)">&#10094;</a>
	  <a class="next" onclick="plusSlides(1)">&#10095;</a>
	</div>
	<br>

	<div style="text-align:center">
	  <span class="dot" onclick="currentSlide(1)"></span> 
	  <span class="dot" onclick="currentSlide(2)"></span> 
	  <span class="dot" onclick="currentSlide(3)"></span> 
	</div>
</div>

<!-- Container (Contact Section) -->
<div id="contact" class="container-fluid" style="background-color: #434956;color: white !important;">
  <h2 class="text-center" style="color: white !important">CONTACT US</h2>
  <div class="row">
    <div class="col-sm-5">
      <p>Contact us and we'll get back to you within 24 hours.</p>
      <p><span class="glyphicon glyphicon-map-marker"></span> Lagos, NG</p>
      <p><span class="glyphicon glyphicon-phone"></span> +00 1515151515</p>
      <p><span class="glyphicon glyphicon-envelope"></span> myemail@something.com</p>
    </div>
   </div>
  </div>
<footer class="container-fluid text-center" style="background-color: black;">
  <p>&copy 2017 Burger Flip</p>
</footer>

<script src="js/jquery-1.11.2.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/main.js"></script>
<script src="js/slide-show.js"></script>

</body>
</html>
