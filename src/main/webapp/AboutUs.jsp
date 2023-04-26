<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Restaurant</title>
	<link rel="stylesheet" href="css1.css" type="text/css">
	<link rel="stylesheet" href="w3.css" type="text/css">
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css"
		rel="stylesheet" integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx"
		crossorigin="anonymous">
	<style>	
	body{
			font-family: "Lato", sans-seriff;
			background-image: url('https://www.puma-catchup.com/wp-content/uploads/2018/07/Black_H-750x421.jpg');
			background-repeat:no-repeat;
			background-size:cover;
		}

		.nav-style1{
			font-size:18px;
		}

		.nav-style1:hover{
			font-weight:bolder;
		}
		table{
			margin-top: 30px;
		}

		table td{
			padding: 10px;
		}
		ul.tab{
			list-style-type: none;
			margin:0;
			padding:0;
			overflow: hidden;
			border: 1px solid #ccc;
			background-color: #f1f1f1;
		}

		ul.tab li{
			float:left;
		}

		ul.tab li a{
			display:inline-block;
			color:black;
			text-align:center;
			padding:14px 16px;
			text-decoration: none;
			transition: 0.3s;
			font-size: 17px;
		}

		ul.tab li a:hover{
			background-color:#ddd;
		}

		ul.tab li a:focus, .active{
			background-color:#ccc;
		}
		.nav1{
			font-size:30px;
		}
		.tabcontent{
			display:none;
			padding: 6px 12px;
			border: 1px solid #ccc;
			border-top: none;
		}
		.style2{
		margin-bottom:500px;
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
		<nav class="navbar navbar-expand-md navbar-dark"
			style="background-color: #6E6B6B">
			<div>
				<a href="#" class="navbar-brand bf-bold fw-bolder nav1">Restaurant</a>
			</div>
			<ul class="navbar-nav">
				<li><a href="index.jsp" class="nav-link nav-style1 text-white">Home</a></li>
				<li><a href="success.jsp" class="nav-link  nav-style1 text-white">Menu</a></li>
				<li><a href="#" class="nav-link  nav-style1 text-white">About Us</a></li>
				<li><a href="logout.jsp" class="nav-link  nav-style1 text-white">Log Out<i>(<% out.print(session.getAttribute("userid")); %>)</i></a></li>
			</ul>
		</nav>
	</header>
	<br>
	<br>
	<div class="text-center text-white mt-5 mb-3">
			<h1 style="margin-bottom:-10px;">About Us</h1> <br>
			<h4 class="text-white fw-bold">Restaurant makes food with love for you.</h4>		
		</div>
<footer>
	<div class="jumbotron text-center" style="margin-bottom: 0">
		<p class="text-white mt-3">Made by Sandhya R</p>
	</div>		
</footer>
</body>
</html>