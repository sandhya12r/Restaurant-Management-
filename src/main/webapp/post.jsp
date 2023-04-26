<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Restaurant | Post Order</title>
	<link rel="stylesheet" href="http://www.w3schools.com/lib/w3.css">
	<link rel="stylesheet" href="w3.css" type="text/css">
	<link rel=”stylesheet” href=”https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css” />
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css"
		rel="stylesheet" integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx"
		crossorigin="anonymous">
	<link rel="stylesheet"	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.9.1/font/bootstrap-icons.css">
	<style>
		body{
			background-image: url('https://www.puma-catchup.com/wp-content/uploads/2018/07/Black_H-750x421.jpg');
			background-repeat:no-repeat;
			background-size:cover;
		}
	
		body, div, ul, li, p {
			font-family: "Lato", sans-seriff;
		}

		#navigation {
			display: inline-block;
			list-style: none;
			line-height: 50px;
			margin: 0;
			padding-left: 20;
		}

		#navigation ul {
			display: inline-block;
			list-style: none;
			margin: 0;
			padding: 0;
		}

		#navigation li {
			float: left;
			width: 180px;
			text-align: right;
		}

		#navigation li a {
			color: white;
			font-size: 20px; 
			text-decoration: none;
		}

		#navigation li a:hover {
			color: white;
			font-size: 20px;
		}

		#navigation li.active a {
			transition: 900ms;
			color: white;
			padding: 12px;
			background-color: transparent;
			font-size: 20px; 
			border: 2px solid white;
			border-radius: 10px;
		}
		.signup{
			background-color: #6E6B6B; 
	       	color: white; 
    	    border: none;
   		    border-radius: 10px; 
     		width: 200px;
        	height:40px; 
        	font-size:16px;
		}

		.signup:hover{
	 		background-color: white; 
    		color: #613613; 
   			border: 2px solid #6E6B6B; 
   		}
   		.nav1{
			font-size:30px;
		}
		.nav-style1{
			font-size:18px;
		}

	</style>
</head>
<body>
	<script	src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.5/dist/umd/popper.min.js"
		integrity="sha384-Xe+8cL9oJa6tN/veChSP7q+mnSPaj5Bcu9mPX5F5xIGE0DVittaqT5lorf0EI7Vk"
		crossorigin="anonymous">		
	</script>
	<script	src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.min.js"
		integrity="sha384-ODmDIVzN+pFdexxHEHFBQH3/9/vQ9uori45z4JjnFsRydbmQbmL5t1tQ0culUzyK"
		crossorigin="anonymous">		
	</script>
	<header>
		<nav class="navbar navbar-expand-md navbar-dark bf-bold fw-bolder"
			style="background-color: #6E6B6B">
			<div>
				<a href="index.jsp" class="navbar-brand bf-bold nav1">Restaurant</a>
			</div>
			<ul class="navbar-nav">
				<li><a href="index.jsp" class="nav-link nav-style1 text-white">Home</a></li>
				<li><a href="MenuForm.jsp" class="nav-link nav-style1 text-white">Menu</a></li>
				<li><a href="#" class="nav-link nav-style1 text-white">About Us</a></li>
			</ul>
		</nav>
	</header><br><br>
	<div class="container col-md-20" style="width:500px">
		<h4 class="text-white fw-bold mb-3">Postal Address</h4>
		<div class="card" style="background-color:#d18a8a">
			<div class="card-body">
				<form action="thank.jsp" method="post">
					<fieldset class="form-group">
						<label><i class="bi bi-person"></i>&nbsp;&nbsp;Full Name</label> 
						<input type="text" class="form-control mb-3 mt-1" name="name"
							placeholder="Enter your full name" required="required">
					</fieldset>
					<fieldset class="form-group">
						<label><i class="bi bi-telephone"></i>&nbsp;&nbsp;Mobile Number</label> 
						<input type="number" class="form-control mb-3 mt-1" name="phone"
							placeholder="Enter your phone number" required="required">
					</fieldset>
					<fieldset class="form-group">
						<label><i class="bi bi-envelope"></i>&nbsp;&nbsp;Email Id</label> 
						<input type="email" class="form-control mb-3 mt-1"
							name="email" placeholder="Enter your E-mail id"	required="required">
					</fieldset>
					<fieldset class="form-group">
						<label><i class="bi bi-building"></i>&nbsp;&nbsp;City</label> 
						<select class="form-control mb-3 mt-1" name="city">
							<option value="1" selected>---choose city---</option>
							<option value="Bangalore">Bangalore</option>
							<option value="Hyderabad">Hyderabad</option>
							<option value="Pune">Pune</option>
							<option value="Chennai">Chennai</option>
							<option value="Delhi">Delhi</option>
							<option value="Kolkata">Kolkata</option>
						</select>
					</fieldset>
					<fieldset class="form-group">
						<label for="adr"><i class="bi bi-person-lines-fill"></i>&nbsp;&nbsp;Address</label>
						<input type="text" class="form-control mb-3 mt-1" id="adr" name="adress"
							placeholder="542 15th Street" required="required">
					</fieldset>
					<fieldset class="form-group">
						<label for="pin"><i class="bi bi-pin-map"></i>&nbsp;&nbsp;Pin Code</label>
						<input type="text" class="form-control mb-3 mt-1" id="pin" name="pin"
							placeholder="600 001" required="required">
					</fieldset>
					<fieldset class="form-group">
						<label><input type="checkbox" checked="checked" name="sameadr">Shipping address same as billing address</label>
					</fieldset>
					<button type="submit" class="btn btn-success signup fw-bold mt-3 mb-2" href="thank.jsp">Continue to checkout</button>
				</form>
			</div>			
		</div>
	</div>
</body>
<footer>
	<div class="jumbotron text-center" style="margin-bottom: 0">
		<p class="text-white mt-3 mb-5">Made by Sandhya R</p>
	</div>
</footer>
</html>