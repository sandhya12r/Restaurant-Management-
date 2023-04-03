<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Restaurant | Sign Up</title>
	<link rel="stylesheet" href="http://www.w3schools.com/lib/w3.css">
	<link rel="stylesheet" href="w3.css" type="text/css">
	<link rel=”stylesheet” href=”https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css” />
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css"
		rel="stylesheet" integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx"
		crossorigin="anonymous">
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
   		.nav1{
			font-size:30px;
		}
		.nav-style1{
			font-size:18px;
		}
	</style>
</head>
<body>
	<script
		src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.5/dist/umd/popper.min.js"
		integrity="sha384-Xe+8cL9oJa6tN/veChSP7q+mnSPaj5Bcu9mPX5F5xIGE0DVittaqT5lorf0EI7Vk"
		crossorigin="anonymous">		
	</script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.min.js"
		integrity="sha384-ODmDIVzN+pFdexxHEHFBQH3/9/vQ9uori45z4JjnFsRydbmQbmL5t1tQ0culUzyK"
		crossorigin="anonymous">		
	</script>
	<header>
		<nav class="navbar navbar-expand-md navbar-dark bf-bold fw-bolder"
			style="background-color: #6E6B6B">
			<div>
				<a href="index.jsp" class="navbar-brand  bf-bold fw-bolder nav1">Restaurant</a>
			</div>
			<ul class="navbar-nav">
				<li><a href="#" class="nav-link nav-style1 text-white">Sign Up Page</a></li>
			</ul>
		</nav>
	</header><br><br>	
	<div class="container col-md-5">
		<div class="card" style="background-color:#d18a8a">
			<div class="card-body">
				<form action="check.jsp" method="post">
					<fieldset class="form-group">
						<label><i class="bi bi-person"></i>&nbsp;&nbsp;First Name</label> 
						<input type="text" class="form-control  mb-3 mt-1" name="fname"
							placeholder="Enter your First name" required="required">
					</fieldset>
					
					<fieldset class="form-group">
						<label><i class="bi bi-person"></i>&nbsp;&nbsp;Last Name</label> 
						<input type="text" class="form-control  mb-3 mt-1" name="lname"
							placeholder="Enter your Last name" required="required">
					</fieldset>
					
					<fieldset class="form-group">
						<label><i class="bi bi-person"></i>&nbsp;&nbsp;User Name</label> 
						<input type="text" class="form-control  mb-3 mt-1" name="userName"
							placeholder="Enter User Name" required="required">
					</fieldset>
					
					<fieldset class="form-group">
						<label><i class="bi bi-envelope"></i>&nbsp;&nbsp;Email Id</label> 
						<input type="email" class="form-control  mb-3 mt-1" name="email"
						 placeholder="Enter your E-mail id" required="required">
					</fieldset>

					<fieldset class="form-group">
						<label><i class="bi bi-lock"></i>&nbsp;&nbsp;Password</label>
						<input type="password" class="form-control  mb-3 mt-1" name="pass"
							placeholder="Enter your password" required="required">
					</fieldset>
					
					<fieldset class="form-group">
						<label><i class="bi bi-lock"></i>&nbsp;&nbsp;Confirm Password</label>
						<input type="password" class="form-control  mb-3 mt-1" name="pswd1"
							placeholder="Re-Enter your password" required="required">
					</fieldset>
					<button type="submit" class="btn btn-primary fw-bolder signup  mb-3 mt-1" href="success.jsp">Sign Up</button>
					
					<fieldset class="form-group">
						<label>Already have an account:</label> 
						<a href="Customer.jsp" style="text-decoration:none" class="fw-bolder mb-3 mt-1">Sign in</a>
					</fieldset>
				</form>
			</div>
		</div>
	</div>
</body>
</html>