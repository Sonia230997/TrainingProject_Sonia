<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@ page isErrorPage="true" import="java.io.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-COMPATIBLE" content="IE-edge">
<meta name="viewport" content="width=device-width, initial-scale=1">

<title>CustomerAccount</title>

<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="bootstrap/css/bootstrap.css">
<link rel="stylesheet" href="css/custom.css">
</head>

<body>

	<!--PARENT CONTAINER START-->
	<div class="container-fluid">

		<!--ROW1 STARTS-->
		<div class="container-fluid">
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
		<div class="container-fluid">
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
		<div class="container-fluid">
			<div class="row three">
				<div class="col-md-8" style="padding-left: 35px;">
					<h3>
						<b>Exception page</b>
					</h3>
				</div>

				<div class="col-md-4">
					<ul class="nav navbar-nav">
						<li><h4>
								<a href="homepage.jsp">Home / </a> <a href="#">Exception
									Page </a>
							</h4></li>

					</ul>
				</div>
			</div>
		</div>
		<!-- ROW3 ENDS -->
		<div class="row" align="center">
			<div class="container">
				<hr />
				<div class="row">
					<h3>Sorry for the Inconvenience - The Page you are looking for
						have a Technical Error.</h3>
					<h3>
						<small>Kindly proceed to the Home page or Report this
							issue to Website Administrator with the description mentioned
							below:</small>
					</h3>
				</div>
				<div class="row">
					<form class="exception">
					<button class="btn btn-info btn-design">
						<span class="glyphicon glyphicon-home"></span> Home
					</button>
					</form>
					<form class="exception" method="post">
					<button class="btn btn-info btn-design">
						<span class="fa fa-bug"></span> Report
					</button>
					</form>
				</div>
				<br />
				<div class="row alert alert-danger text-left">
					
					<%
						StringWriter errors = new StringWriter();
						exception.printStackTrace(new PrintWriter(errors));
						session.setAttribute("SESS", errors.toString());
						out.print(errors.toString());
					%>
				</div>
				<hr />
			</div>
		</div>
		<!-- Row-3 End -->
		<!-- Row-4 Start -->
		<br />
		<div class="row">
			<footer>
				<div class="container-fluid">
					<div class="row penta">
						<!-- Column-1 Start -->
						<div class="col-md-4">
							<p>
								<b>ABOUT US</b>
							</p>
							<p>TechAspect empowers small and medium-sized businesses to
								reach millions of customers with a number of programs that help
								boost their revenue, reach and productivity. By telling stories
								from a wide range of perspectives, we tell the larger story of
								who TechAspect is and how TechAspect's core business practices
								contribute to a better India.</p>
							<hr />
							<p>
								<b>JOIN OUR MONTHLY NEWSLETTER</b>
							</p>

							<div class="input-group">
								<input type="email" class="form-control"> <span
									class="input-group-btn">
									<button class="btn" type="button">
										<span class="glyphicon glyphicon-send"></span>
									</button>
								</span>
							</div>
						</div>

						<!-- Column-1 End -->

						<!-- Column-2 Start -->
						<div class="col-md-4 blog">
							<p>
								<b>BLOGS</b>
							</p>
							<div class="row">
								<img src="images/detailsquare1.jpg" class="col-md-3 img-circle"></img>
								<p class="col-md-9">
									<b>Learn more about how TechAspect is supporting small
										businesses</b>
								</p>
							</div>
							<br>
							<div class="row">
								<img src="images/detailsquare1.jpg" class="col-md-3 img-circle"></img>
								<p class="col-md-9">
									<b>Customer Success</b>
								</p>
							</div>
						</div>
						<!-- Column-2 End -->

						<!-- Column-3 Start -->
						<div class="col-md-4">
							<p>
								<b>CONTACT</b>
							</p>
							<p>TECHASPECT SOLUTIONS PVT. LTD.</p>
							<p>PLOT NO. 38, N HEIGHTS, 3RD FLOOR</p>
							<p>HITECH CITY PHASE 2, MADHAPUR</p>
							<p>HYDERABAD, TELANGANA - 500081</p>
							<p>INDIA</p>
							<button class="btn btn-info">Go To Contact Page</button>
						</div>
						<!-- Column-3 End -->

					</div>
					<br>
				</div>
			</footer>
			<br />
		</div>

		<!-- Row-4 End -->

		<!-- Row-5 Start -->
		<div class="row">
			<div class="container-fluid copy">
				<div class="row six">
					<div class="row">
						<p>
							<span class="glyphicon glyphicon-copyright-mark"></span> 2018.
							TechAspect Solutions Private Limited.
						</p>
					</div>
				</div>
			</div>
		</div>
		<!-- Row-5 End -->
	</div>
	<!--PARENT CONTAINER END-->

	<script src="js/jquery-3.3.1.js"></script>
	<script src="bootstrap/js/bootstrap.js"></script>
</body>
</html>