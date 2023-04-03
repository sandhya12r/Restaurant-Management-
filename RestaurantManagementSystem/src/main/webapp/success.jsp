<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="demo.Path"%>

<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Restaurant | Menu</title>
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

		.signup{
			background-color: #6E6B6B; 
        	color: white; 
        	border: none; 
        	border-radius: 10px; 
        	width: 120px;
        	height:40px; 
        	font-size:16px;
		}

		.signup:hover{
	 		background-color: white; 
    		color: #6E6B6B; 
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
    		color: #6E6B6B; 
    		border: 2px solid #6E6B6B; 
   		}
   
   		.center{
 			margin-left:auto;
 			margin-right:auto;
 			background-color: transparent;
   		}
		
		input[type="checkbox"], input[type="radio"]{
			width:20px;
			height:20px;
			border-width:0;
			margin-left:130px;
			margin-top:10px;
			transition:all .3s linear;
		}
	</style>
	
		<%
	if((session.getAttribute("userid")==null) || (session.getAttribute("userid")== " ")){
	%>
	<center>
		<p class="text-white" style="font-size:16px;">Session Expired.... <a href="index.jsp"
			style=" padding-top: 23px; text-decoration:none;">Sign in </a>here</p>
	</center>
	<%} 
	else{
	%>
		
	<script>
		var b = 0;
		function update_value(chk_bx) {
			if (chk_bx.checked) {
				var a = "checked";
				b += 1;
			} else {
				var a = "not checked";
				if (b > 0) {
					b -= 1;
				} else if (b == 0) {
					b = 0;
				}
			}
			if (b == 0) {
				document.getElementById('wish').innerHTML = '<i class="bi bi-cart" height=40 width=40></i>&nbsp;&nbsp';
			} else {
				document.getElementById('wish').innerHTML = '<i class="bi bi-cart" height=40 width=40 height=40 width=40></i>&nbsp;&nbsp'
					+ b + '';
			}
		}
	</script>
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
				<li><a href="#" class="nav-link nav-style1 text-white">Welcome</a></li>
				<li><a href="#" class="nav-link  nav-style1 text-white">Locations</a></li>
				<li><a href="chef.jsp" class="nav-link  nav-style1 text-white">Our Chefs</a></li>
				<li><a href="AboutUs.jsp" class="nav-link  nav-style1 text-white">About Us</a></li> 
				
				<li><a href="#" class="nav-link  nav-style1 text-white"><i class="bi bi-cart"></i>0</a></li>
				<li><a href="logout.jsp" class="nav-link  nav-style1 text-white">Log Out<i>(<% out.print(session.getAttribute("userid")); %>)</i></a></li>
			</ul>
		</nav>
	</header>
	<br>
	<br>
	
	
	<form action="order.jsp" method="post">
		<table class="w3-table center">
			<tr>
				<td><img src="https://i.pinimg.com/736x/9e/7e/73/9e7e735abd38c20304a069ddfeedc9c3.jpg" class="rounded-circle" height=240 width=290></td>
				<td><img src="https://www.recipetineats.com/wp-content/uploads/2019/08/Avocado-Chicken-Burgers_9.jpg" class="rounded-circle" height=240 width=290></td>
				<td><img src="https://www.masalakorb.com/wp-content/uploads/2020/08/Aloo-Tikki-Burger-Recipe-Mcaloo-Tikki-V3.jpg" class="rounded-circle" height=240 width=290></td>
			</tr>
				
			<tr>
				<td><input class="mv1" type="checkbox" name="chk1" value="1" onchange="update_value(this);"></td>
				<td><input class="mv2" type="checkbox" name="chk1" value="2" onchange="update_value(this);"></td>
				<td><input class="mv3" type="checkbox" name="chk1" value="3" onchange="update_value(this);"></td>
			</tr>

			<tr>
				<td class="text-center text-white fw-bold">Burger <p>Rs. 150</p></td>
				<td class="text-center text-white fw-bold">Pizza <p>Rs. 180</p></td>
				<td class="text-center text-white fw-bold">Noodles<p>Rs. 130</p></td>
			</tr>

			<tr>
				<td><img src="https://www.shutterstock.com/image-photo/poltava-ukraine-february-19-2016-260nw-411496402.jpg" class="rounded-circle" height=240 width=290></td>
				<td><img src="data:image/jpeg;base64,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" class="rounded-circle" height=240 width=290></td>					
				<td><img src="https://www.shutterstock.com/image-photo/sabah-malaysia-january-26-2015-260nw-247354882.jpg" class="rounded-circle" height=240 width=290></td>
			</tr>
				
			<tr>
				<td><input class="mv4" type="checkbox" name="chk1" value="4" onchange="update_value(this);"></td>
				<td><input class="mv5" type="checkbox" name="chk1" value="5" onchange="update_value(this);"></td>
				<td><input class="mv6" type="checkbox" name="chk1" value="6" onchange="update_value(this);"></td>
			</tr>
	
			<tr>
				<td class="text-center text-white fw-bold">Cold Drink <p>Rs. 50</p></td>
				<td class="text-center text-white fw-bold">Juice <p>Rs. 45</p></td>
				<td class="text-center text-white fw-bold">Coffee<p>Rs. 50</p></td>
			</tr>

			<tr>
				<td><img src="https://cookingchew.com/wp-content/uploads/2022/10/Blueberry-Cocktails-CO2390-FE-min.jpg" class="rounded-circle" height=240 width=290></td>
				<td><img src="https://img.freepik.com/premium-photo/summer-cold-drink-beverages-alcohol-coctail-with-kiwi-ice-wine-glass-black-background_538655-1894.jpg?w=2000" class="rounded-circle" height=240 width=290></td>
				<td><img src="https://www.peckofpickles.com.au/wp-content/uploads/2019/09/improvedstrawberryshrubwithbottlesjugsinbackground-0685-1080x1620.jpg" class="rounded-circle" height=240 width=290></td>
			</tr>
				
			<tr>
				<td><input class="mv7" type="checkbox" name="chk1" value="7" onchange="update_value(this);"></td>
				<td><input class="mv8" type="checkbox" name="chk1" value="8" onchange="update_value(this);"></td>
				<td><input class="mv9" type="checkbox" name="chk1" value="9" onchange="update_value(this);"></td>
			</tr>

			<tr>
				<td class="text-center text-white fw-bold">Fries<p>Rs. 70</p></td>
				<td class="text-center text-white fw-bold">Veg Parcel<p>Rs. 60</p></td>
				<td class="text-center text-white fw-bold">Sandwich<p>Rs. 80</p></td>
			</tr>

			<tr>
				<td><img src="https://images.fineartamerica.com/images/artworkimages/mediumlarge/1/chocolate-sundae-filippo-ioco.jpg" class="rounded-circle" height=240 width=290></td>
				<td><img src="https://www.tasteaholics.com/wp-content/uploads/2018/04/Low-Carb-Coffee-Ice-Cream-2.jpg" class="rounded-circle" height=240 width=290></td>
				<td><img src="https://i.pinimg.com/originals/2c/67/5d/2c675d71ad0453aab6c05dd4c7d4db5b.jpg" class="rounded-circle" height=240 width=290></td>
			</tr>
				
			<tr>
				<td><input class="mv10" type="checkbox" name="chk1" value="10" onchange="update_value(this);"></td>
				<td><input class="mv11" type="checkbox" name="chk1" value="11" onchange="update_value(this);"></td>
				<td><input class="mv12" type="checkbox" name="chk1" value="12" onchange="update_value(this);"></td>
			</tr>

			<tr>
				<td class="text-center text-white fw-bold">Chocolate Sundae <p>Rs.120</p></td>
				<td class="text-center text-white fw-bold">Ice-cream<p>Rs. 70</p></td>
				<td class="text-center text-white fw-bold">Doughnuts<p>Rs. 170</p></td>
			</tr>
		</table>
		<br>
		<div id="order" class="text-center">
			<input type="submit" value="Add to Cart" class="btn btn-success signup fw-bolder">
		</div>
	</form>
	<footer>
		<div class="jumbotron text-center" style="margin-bottom: 0">
			<p class="text-white mt-3 mb-5">Made by Sandhya R</p>
		</div>
	</footer>
</body>
</html>
<%} %>
