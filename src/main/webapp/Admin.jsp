<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="icon" type="image/png" href="./images/flavicon.png">
<title>Restaurant | Admin Login</title>
<link rel="stylesheet" href="./CSS/lib/fonts/fontawesome-all.min.css">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.9.1/font/bootstrap-icons.css">
	<style>
		body{
			font-family: "Lato", sans-seriff;
			background-image: url('https://www.puma-catchup.com/wp-content/uploads/2018/07/Black_H-750x421.jpg');
			background-repeat:no-repeat;
			background-size:cover;
		}
		.signup{
			background-color: #6E6B6B; 
        	color: white; 
        	border: none; 
        	border-radius: 10px; 
        	width: 100px;
        	height:40px; 
        	font-size:16px;
		}

		.signup:hover{
	 		background-color: white; 
    		color: #6E6B6B; 
    		border: 2px solid #6E6B6B; 
   		}
	</style>
</head>
<body>
	<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.5/dist/umd/popper.min.js"
        integrity="sha384-Xe+8cL9oJa6tN/veChSP7q+mnSPaj5Bcu9mPX5F5xIGE0DVittaqT5lorf0EI7Vk" crossorigin="anonymous">
    </script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.min.js"
        integrity="sha384-ODmDIVzN+pFdexxHEHFBQH3/9/vQ9uori45z4JjnFsRydbmQbmL5t1tQ0culUzyK" crossorigin="anonymous">
    </script>
	<header>
		<nav class="navbar navbar-expand-md navbar-dark bf-bold fw-bolder"
			style="background-color: #6E6B6B">
			<div>
				<a href="" class="navbar-brand bf-bold">Restaurant</a>
			</div>
			<ul class="navbar-nav">
				<li><a href="#" class="nav-link">Locations</a></li>
				<li><a href="#" class="nav-link">Our Chefs</a></li>
				<li><a href="#" class="nav-link">About Us</a></li>
			</ul>
		</nav>
	</header><br><br>
	<div class="container col-md-20" style="width:500px">
		<h4 class="text-white fw-bold mb-3">Admin Login</h4>
		<div class="card" style="background-color:#d18a8a">
			<div class="card-body">
				<form action="AdminValidationServlet" method="post">
					<fieldset class="form-group">
						<label><i class="bi bi-person"></i>&nbsp;&nbsp;User Name</label> 
						<input type="text" class="form-control mb-3 mt-1" name="uname"
							placeholder="Enter your name" value="" required="required">
					</fieldset>

					<fieldset class="form-group">
						<label><i class="bi bi-lock"></i>&nbsp;&nbsp;Password</label>
						<input type="password" class="form-control mb-3 mt-1" name="pwd"
							placeholder="Enter your password" value="" required="required">
					</fieldset>
					<button type="submit" class="btn btn-primary fw-bolder signup mt-2 mb-2">Sign In</button>
				</form>
			</div>
		</div>
	</div>
</body>
<footer>
	<div class="jumbotron text-center" style="margin-bottom: 0">
		<p class="text-white mt-3">Made by Sandhya R</p>
	</div>
</footer>
</html>