<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
	
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Restaurant</title>
	<link rel="icon" type="image/png" href="/RestaurantManagementSystem/src/main/webapp/Images/flavicon.png">
	<link rel=”stylesheet” href=”https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css”/> 
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous">
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.9.1/font/bootstrap-icons.css">
	<style>
		body{
			font-family: "Lato", sans-seriff;
			background-image: url('https://images.indianexpress.com/2019/07/black-burger-759.jpg');
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
    		color: #613613; 
    		border: 2px solid #6E6B6B; 
   		}
   		.signin{
			background-color: #6E6B6B; 
        	color: white; 
        	border: none; 
        	border-radius: 10px; 
        	width: 100px;
        	height:40px; 
        	font-size:16px;
		}

		.signin:hover{
	 		background-color: white; 
    		color: #613613; 
    		border: 2px solid #6E6B6B; 
   		}
   
   		.center{
 			margin-left:auto;
 			margin-right:auto;
 			background-color: #A09D9D;
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
		<nav class="navbar navbar-expand-md navbar-dark"
			style="background-color: #6E6B6B">
			<div>
				<a href="#" class="navbar-brand bf-bold fw-bolder nav1">Restaurant</a>
			</div>
			<ul class="navbar-nav">
				<li><a href="index.jsp" class="nav-link nav-style1 text-white">Home</a></li>
				<li><a href="MenuList.jsp" class="nav-link  nav-style1 text-white">Menu</a></li>
				<li><a href="AboutUs.jsp" class="nav-link  nav-style1 text-white">About Us</a></li>
				<li><a href="Admin.jsp" class="nav-link  nav-style1 text-white">Admin</a></li> 
			</ul>
		</nav>
	</header>
	<br>
	<br>
	<div>
		<fieldset class="rounded mb-5" style="float:right;" >
			<div class="container col-md-20">
				<div class="card" style="width:300px; background:#d18a8a">
					<div class="card-body">
						<form action="login.jsp" method="post">
							<fieldset class="form-group">
								<label><i class="bi bi-person"></i>&nbsp;&nbsp;User Name</label> 
								<input type="text" class="form-control mb-3 mt-1" name="userName"
									placeholder="Enter your User name" value="" required="required">
							</fieldset>	
							<fieldset class="form-group">
								<label><i class="bi bi-lock"></i>&nbsp;&nbsp;Password</label>
								<input type="password" class="form-control mb-4 mt-1" name="pass"
									placeholder="Enter your password" value="" required="required">
							</fieldset>
							<fieldset>
								<button type="submit" class="btn btn-primary fw-bolder signin">Sign In</button>						
								<a href="SignUp.jsp" class="mx-2"><input type="button" class="btn btn-primary fw-bolder signup" value="Sign Up"></a>
							</fieldset>
						</form>	
					</div>
				</div>
			</div>		
		</fieldset>				
	</div>
	<div>
		<div class="text-center text-white mt-5 mb-3">
			<p style="margin-bottom:-10px;">Order From Restaurant</p> <br>
			<h4 class="text-white fw-bold">Choose Your Order Now</h4>		
		</div>
		<div  class="container" style="margin-bottom:10px;">
			<table class="w3-table text-white">
				<tr>
					<td>
						<img src="https://c.ndtvimg.com/2022-06/gp4k2jro_burgers_625x300_20_June_22.jpg?im=FeatureCrop,algorithm=dnn,width=620,height=350?im=FaceCrop,algorithm=dnn,width=1200,height=886" 
							class="rounded-circle" height="250px" width="250px">
					</td>
					<td>
						<img src="https://res.cloudinary.com/swiggy/image/upload/f_auto,q_auto,fl_lossy/vbzwuofcxabs6unairxc" 
							class="rounded-circle" height="250px" width="250px">
					</td>
					<td>
						<img src="https://www.whiskaffair.com/wp-content/uploads/2020/10/Veg-Hakka-Noodles-2-3.jpg" 
							class="rounded-circle" width="250px" height="250px">
					</td>
				</tr>

				<tr>
					<td class="text-center text-brown fw-bolder">Burger</td>
					<td class="text-center text-brown fw-bolder">Pizza</td>
					<td class="text-center text-brown fw-bolder">Noodles</td>
				</tr>

				<tr>
					<td>
						<img src="https://media.istockphoto.com/id/533575209/photo/soft-drink-being-poured-into-glass.jpg?s=612x612&w=0&k=20&c=OPfGgxIkH_6j-ozfWol5RxypTAIZSmkR3NL-qsJ7_Qk=" 
							class="rounded-circle"  height="250px" width="250px">
					</td>
					<td>
						<img src="https://www.cleaneatingkitchen.com/wp-content/uploads/2022/05/strawberry-juice-in-pretty-glass.jpg" 
							class="rounded-circle" height="250px" width="250px">
					</td>
					<td>
						<img src="https://www.incimages.com/uploaded_files/image/1024x576/getty_500740897_200013331653767347294_333325.jpg" 
							class="rounded-circle" height="250px" width="250px">
					</td>
				</tr>

				<tr>
					<td class="text-center text-brown fw-bolder">Cold Drink</td>
					<td class="text-center text-brown fw-bolder">Juice</td>
					<td class="text-center text-brown fw-bolder">Coffee</td>
				</tr>

				<tr>
					<td>
						<img src="https://images.themodernproper.com/billowy-turkey/production/posts/2022/Homemade-French-Fries_8.jpg?w=960&h=720&q=82&fm=jpg&fit=crop&dm=1662474181&s=5dd5ceda5f0fe7cad1646e5c997c32ae"
							class="rounded-circle" height="250px" width="250px">
					</td>
					<td>
						<img src="https://foodtrails25.com/wp-content/uploads/2020/05/parcels-500x500.jpg"
							class="rounded-circle" height="250px" width="250px">
					</td>
					<td>
						<img src="https://geekrobocook.com/wp-content/uploads/2021/06/Vegetable-Sandwich-1200x900.jpg"
							class="rounded-circle" height="250px" width="250px">
					</td>
				</tr>

				<tr>
					<td class="text-center text-brown fw-bolder">Fries</td>
					<td class="text-center text-brown fw-bolder">Veg Parcel</td>
					<td class="text-center text-brown fw-bolder">Sandwich</td>
				</tr>

				<tr>
					<td>
						<img src="https://www.keep-calm-and-eat-ice-cream.com/wp-content/uploads/2022/08/Ice-cream-sundae-hero-11.jpg" 
							class="rounded-circle" height="250px" width="250px">
					</td>
					<td>
						<img src="https://img.freepik.com/premium-photo/ice-cream-scoops-with-vanilla-chocolate-berry-scoops-topping_488220-3949.jpg" 
							class="rounded-circle" height="250px" width="250px">
					</td>
					<td>
						<img src="https://idsb.tmgrup.com.tr/ly/uploads/images/2021/06/06/119434.jpeg" 
							class="rounded-circle" height="250px" width="250px">
					</td>
				</tr>

				<tr>
					<td class="text-center text-brown fw-bolder">Chocolate Sundae</td>
					<td class="text-center text-brown fw-bolder">Ice-cream</td>
					<td class="text-center text-brown fw-bolder">Doughnuts</td>
				</tr>
			</table>
		</div>
	</div>
</body>
<footer>
	<div class="jumbotron text-center" style="margin-bottom: 0">
		<p class="text-white mt-3 mb-5">Made by Sandhya R</p>
	</div>
</footer>

</html>