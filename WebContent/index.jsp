<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta http-equiv="X-UA-COMPATIBLE" content="IE-edge">
<meta name="viewport" content="width=device-width, initial-scale=1">

<title>SignInSignUpForms</title>

<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="bootstrap/css/bootstrap.css">
<link rel="stylesheet" href="css/custom.css">
</head>
<title>Insert title here</title>
</head>
<body>
<!--PARENT CONTAINER START-->
	<div class="container">

		<!--ROW1 STARTS-->
		<div class="container">
			<div class="row one">
				<!--  1ST COL START -->
				<div class="col-md-6 mt">
					<h5>Contact Us on +91 40 66217777</h5>
				</div>
				<!-- 1ST COL END -->

				<!--  2ND COL START -->
				<div class="col-md-2 mt">
					<a href="#"><h5>
							<span class="glyphicon glyphicon-log-in"></span> SIGN IN
						</h5></a>
				</div>
				<!--  2ND COL END -->

				<!--  3RD COL START -->
				<div class="col-md-2 mt">
					<a href="#"><h5>
							<span class="glyphicon glyphicon-user"></span> SIGN UP
						</h5></a>
				</div>
				<!--  3RD COL END -->

				<!-- 4TH COL START -->
				<div class="col-md-2 mt">
					<a href="#" class="btn btn-block btn-facebook"><span
						class="fa fa-facebook"></span></a> <a href="#"
						class="btn btn-block btn-google"><span class="fa fa-google"></span></a>
					<a href="#" class="btn btn-block btn-twitter"><span
						class="fa fa-twitter"></span></a>
				</div>
				<!-- 4TH COL END -->

			</div>
		</div>
		<!-- ROW1 ENDS-->

		<!-- ROW2 STARTS-->
		<div class="container">
			<div class="row">
				<div class="col-md-3" id="row2image">
					<img src="images/logo.png">
				</div>
				<div class="col-md-7" id="rol2col2">
					<ul class="nav navbar-nav">
						<li class="dropdown"><a class="drop" class="dropdown-toggle"
							data-toggle="dropdown" href="#">ELECTRONICS <span
								class="caret"></span></a>
							<ul class="dropdown-menu">
								<li><a href="#">Page 1-1</a></li>
							</ul></li>
						<li class="dropdown"><a class="drop" class="dropdown-toggle"
							data-toggle="dropdown" href="#">MEN <span class="caret"></span></a>
							<ul class="dropdown-menu">
								<li><a href="#">Page 1-1</a></li>
							</ul></li>
						<li class="dropdown"><a class="drop" class="dropdown-toggle"
							data-toggle="dropdown" href="#">WOMEN <span class="caret"></span></a>
							<ul class="dropdown-menu">
								<li><a href="#">Page 1-1</a></li>
							</ul></li>
						<li class="dropdown"><a class="drop" class="dropdown-toggle"
							data-toggle="dropdown" href="#">BABY & KIDS <span
								class="caret"></span></a>
							<ul class="dropdown-menu">
								<li><a href="#">Page 1-1</a></li>

							</ul></li>
						<li class="dropdown"><a class="drop" class="dropdown-toggle"
							data-toggle="dropdown" href="#">HOME & FURNITURE <span
								class="caret"></span></a>
							<ul class="dropdown-menu">
								<li><a href="#">Page 1-1</a></li>
							</ul></li>
					</ul>
				</div>
			</div>
		</div>
		<!-- ROW2 ENDS -->

		<!-- ROW3 STARTS -->
		<div class="container">
			<div class="row three">
				<div class="col-md-8">
					<h3>
						<b>NEW ACCOUNT / SIGN IN</b>
					</h3>
				</div>

				<div class="col-md-4">
					<ul class="nav navbar-nav">
						<li><h4>
								<a href="#">HOME </a>
							</h4></li>
						<li><h4>
								<a href="#">CONTACT </a>
							</h4></li>
					</ul>
				</div>
			</div>
		</div>
		<!-- ROW3 ENDS -->

		<!-- ROW4 STARTS-->
		<div class="container">
			<div class="row">
				<div class="col-md-6">
					<hr />
					<h3>NEW ACCOUNT</h3>
					<h4>Not our registered customer yet?</h4>
					<br /> <br />
					<p>With registration with us new world of fashion, fantastic
						discounts and much more opens to you! The whole process will not
						take you more than a minute!</p>
					<p>If you have any questions, please feel free to contact us,
						our customer service center is working for you 24/7</p>
					<hr />

					<form action="register" method="post">
						<div class="form-group">
							<label for="name">Name</label> <input type="text"
								class="form-control" name="f1">
						</div>

						<div class="form-group">
							<label for="email">Email</label> <input type="text"
								class="form-control" name="f2">
						</div>

						<div class="form-group">
							<label for="password">Password</label> <input type="text"
								class="form-control" name="f3">
						</div>

						<div class="form-group">
							<input type="submit" value="Register" />
						</div>
						<hr />
					</form>
					<% String stat= (String)request.getAttribute("stat");

					if(stat!=null) {
					 if(stat.equals("S")) { %>
					<div class="alert alert-success">Registration successful.</div>

					<% } else {%>
					<div class="alert alert-danger">Registration failed.</div>
					<% 
					}
					 } 
					 %>

				</div>

				<div class="col-md-5">
					<hr />
					<h1>SIGN IN</h1>
					<h4>Already our customer?</h4>
					<br> <br>
					<p>Get access to your Orders, Wishlist and Recommendations</p>
					<hr />
					<form action="login" method="post">
						<div class="form-group">
							<label for="email">Email</label> <input type="text"
								class="form-control" name="f1" id="email">
						</div>

						<div class="form-group">
							<label for="password">Password</label> <input type="password"
								class="form-control" name="f2" id="password">
						</div>

						<div class="form-group">
							<button class="btn btn-primary center-block" type="submit" id="snd">
								<span class="glyphicon glyphicon-log-in"></span> LOG IN
							</button>
						</div>
						<hr />
					</form>
					<% String sta= (String)request.getAttribute("sta");

					if(sta!=null) {
					 if(sta.equals("S")) { %>
					<div class="alert alert-success">Login successful.</div>

					<% } else {%>
					<div class="alert alert-danger">Login failed.</div>
					<% 
					}
					 } 
					 %>
				</div>
			</div>
		</div>
		<!--ROW4 ENDS -->

		<!--ROW5 STARTS-->
		<div class="container">
			<div class="row penta">
				<div class="col-md-1"></div>

				<div class="col-md-3 p2">
					<h5>ABOUT US</h5>
					<p>Pellentesque habitant morbi tristique senectus et netus et
						malesuada fames ac turpis egestas.</p>
					<hr />
					<h5>JOIN OUR MONTHLY NEWSLETTER</h5>
					<form action="#">
						<input type="text" name="sub" value="" />
						<button type="submit">
							<span class="glyphicon glyphicon-send"></span>
						</button>
						<br /> <br />
					</form>
				</div>

				<div class="col-md-2 p2">
					<h5>BLOG</h5>
					<img src="images/detailsquare1.jpg" />
					<h5 class="x">BLOG POST NAME</h5>
					<br /> <br /> <img src="images/detailsquare1.jpg" />
					<h5 class="x">BLOG POST NAME</h5>
					<br /> <br /> <img src="images/detailsquare1.jpg" />
					<h5 class="x">VERY VERY LONG BLOG POST NAME</h5>
					<br /> <br />
				</div>

				<div class="col-md-3 p2">
					<h5>CONTACT</h5>
					<p>TECHASPECT SOLUTIONS PRIVATE LTD.</p>
					<p>PLOT NO 38, N HEIGHTS, 3RD FLOOR, HI-TECH CITY, PHASE 2,
						MADHAPUR, HYDERABAD, TELENGANA - 500081, INDIA</p>
					<form action="#">
						<input type="submit" value="GO TO CONTACT PAGE" name="con"
							class="cont" />
					</form>
				</div>

				<div class="col-md-3 p21">
					<img src="images/detailsquare1.jpg" class="i1" /> <img
						src="images/detailsquare1.jpg" class="i2" /> <img
						src="images/detailsquare1.jpg" class="i2" /><br /> <br /> <img
						src="images/detailsquare1.jpg" class="i1" /> <img
						src="images/detailsquare1.jpg" class="i2" /> <img
						src="images/detailsquare1.jpg" class="i2" />
				</div>

				<div class="col-md-1"></div>
			</div>
		</div>
		<!--ROW5 ENDS -->

		<!--ROW6 STARTS -->
		<div class="container">
			<div class="row six">
				<p>
					<span class="glyphicon">&#xe194;</span> 2018. TechAspect Solutions
					Private Ltd.
				</p>
			</div>
		</div>
		<!--ROW6 ENDS -->

	</div>
	<!--PARENT CONTAINER END-->

	<script src="js/jquery-3.3.1.js"></script>
	<script src="bootstrap/js/bootstrap.js"></script>

</body>
</html>