<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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
				<div class="col-md-8" style="padding-left: 35px;">
					<h3>
						<b>MY ACCOUNT</b>
					</h3>
				</div>

				<div class="col-md-4">
					<ul class="nav navbar-nav">
						<li><h4>
								<a href="homepage.jsp">HOME </a>
							</h4></li>
						<li><h4>
								<a href="#">CONTACT </a>
							</h4></li>
					</ul>
				</div>
			</div>
		</div>
		<!-- ROW3 ENDS -->

		<!-- Row-4 Starts -->

		<div class="row">
			<div class="container">
				<div class="col-md-8">
					<br> <br>
					<p>Change your personal details or your password here</p>
					<br>
					<p id="greyText">Prellentesque habitant morbi tristique
						senectus et netuset malesuada fames ac turpls egestas.</p>
					<hr />

					<!-- CHANGE PASSWORD FORM -->

					<form action="update"method="post"class="container-fluid">
						<h3>CHANGE PASSWORD</h3>

						<div class="row">
							<div class="form-group col-md-6">
								<label for="name">Old Passsword</label> <input type="password"
									class="form-control" name="f1">
							</div>
						</div>
						<div class="row">
							<div class="form-group col-md-6">
								<label for="name">New Passsword</label> <input type="password"
									class="form-control" name="f2">
							</div>
							<div class="form-group col-md-6">
								<label for="name">Retype new password</label> <input type="password"
									class="form-control" name="f3">
							</div>
						</div>
						<div class="form-group">
							<button type="submit" class="btn btn-primary center-block but dam">
								<span class="glyphicon glyphicon-floppy-disk"> SAVE NEW
									PASSWORD</span>
							</button>
						</div>
					</form>
					<%
						String pwd = (String) request.getAttribute("pwd");

						if (pwd != null) {
							if (pwd.equals("S")) {
					%>
					<div class="alert alert-success">Password Changed successfully.</div>

					<%
						} else {
					%>
					<div class="alert alert-danger">Couldnt change password</div>
					<%
						}
						}
					%>
					<hr />

					<!-- PERSONAL DETAILS FORM -->

					<h3>PERSONAL DETAILS</h3>
					<form>
						<div class="row">
							<div class="form-group col-md-6">
								<label for="name">First Name</label> <input type="text"
									class="form-control" id="inputname1" placeholder="First Name">
							</div>
							<div class="form-group col-md-6">
								<label for="name">Last Name</label> <input type="text"
									class="form-control" id="inputname2" placeholder="Last Name">
							</div>
						</div>
						<div class="form-group">
							<strong>Gender</strong>

							<!-- Group of default radios - option 1 -->

							<div class="custom-control custom-radio">
								<input type="radio" class="custom-control-input"
									id="defaultGroupExample1" name="groupOfDefaultRadios">
								<label class="custom-control-label" for="defaultGroupExample1">Male</label>
							</div>

							<!-- Group of default radios - option 2 -->

							<div class="custom-control custom-radio">
								<input type="radio" class="custom-control-input"
									id="defaultGroupExample2" name="groupOfDefaultRadios" checked>
								<label class="custom-control-label" for="defaultGroupExample2">Female</label>
							</div>

							<!-- Group of default radios - option 3 -->

							<div class="custom-control custom-radio">
								<input type="radio" class="custom-control-input"
									id="defaultGroupExample3" name="groupOfDefaultRadios">
								<label class="custom-control-label" for="defaultGroupExample3">Transgender</label>
							</div>

						</div>

						<div class="form-group">
							<label for="inputAddress">Address</label> <input type="text"
								class="form-control" id="inputAddress">
						</div>
						<div class="row">
							<div class="form-group col-md-3">
								<label for="inputCity">City</label> <input type="text"
									class="form-control" id="inputCity">
							</div>
							<div class="form-group col-md-3">
								<label for="inputZip">ZIP</label> <input type="text"
									class="form-control" id="inputZip">
							</div>
							<div class="form-group col-md-3">
								<label for="inputState">State</label> <select id="inputState"
									class="form-control">
									<option></option>
								</select>
							</div>
							<div class="form-group col-md-3">
								<label for="inputState">Country</label> <select id="inputState"
									class="form-control">
									<option></option>
								</select>
							</div>
						</div>
						<div class="row">
							<div class="form-group col-md-6">
								<label for="name">Contact Number</label> <input type="text"
									class="form-control" id="inputnumber">
							</div>
							<div class="form-group col-md-6">
								<label for="name">Email</label> <input type="email"
									class="form-control" id="inputemail">
							</div>
						</div>
						<div>
							<button type="submit"
								class="btn btn-primary center-block but dam">
								<span class="glyphicon glyphicon-floppy-disk"></span> Save
								Changes
							</button>
						</div>
					</form>
				</div>

				<!-- CUSTOMER SECTION -->

				<div class="col-md-4">
					<br> <br>
					<h5>
						<strong>CUSTOMER SECTION</strong>
					</h5>
					<p style="color: #009999;">_____________</p>
					<ul class="nav nav-pills nav-stacked">
						<li class="active"><a href="#"
							style="background-color: #009999;"><span
								class="glyphicon glyphicon-list"></span> My Orders</a></li>
						<li><a href="#" style="color: #009999;"><span
								class="glyphicon glyphicon-heart"></span> My WishList</a></li>
						<li><a href="#" style="color: #009999;"><span
								class="glyphicon glyphicon-user"></span> My Account </a></li>
						<li><a href="logout" style="color: #009999;"><span
								class="glyphicon glyphicon-log-out"></span> Logout</a></li>
					</ul>
				</div>
			</div>
		</div>

		<br>

		<!-- Row-4 Ends -->

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
						<br />
						<br />
					</form>
				</div>

				<div class="col-md-2 p2">
					<h5>BLOG</h5>
					<img src="images/detailsquare1.jpg" />
					<h5 class="x">BLOG POST NAME</h5>
					<br />
					<br /> <img src="images/detailsquare1.jpg" />
					<h5 class="x">BLOG POST NAME</h5>
					<br />
					<br /> <img src="images/detailsquare1.jpg" />
					<h5 class="x">VERY VERY LONG BLOG POST NAME</h5>
					<br />
					<br />
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
						src="images/detailsquare1.jpg" class="i2" /><br />
					<br /> <img src="images/detailsquare1.jpg" class="i1" /> <img
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
		<!--ROW7 ENDS -->

	</div>
	<!--PARENT CONTAINER END-->

	<script src="js/jquery-3.3.1.js"></script>
	<script src="bootstrap/js/bootstrap.js"></script>
</body>
</html>