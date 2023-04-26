<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
	<head>
	<meta charset="UTF-8">
	<title>Restaurant | Menu Management</title>
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
	
		.menustyle{
			background-color: #6E6B6B; 
        	color: white; 
        	border: none; 
        	border-radius: 10px; 
        	width: 150px;
        	height:40px; 
        	font-size:16px;
        }
        .menustyle:hover{
	 		background-color: white; 
    		color: #613613; 
    		border: 2px solid #6E6B6B; 
   		}
   		.hrStyle{
   			margin-bottom: 50px;
   			color:white;
   		}
	</style>
</head>
<body>
	<header>
		<nav class="navbar navbar-expand-md navbar-dark bf-bold fw-bolder"
			style="background-color: #6E6B6B">
			<div>
				<a href="#" class="navbar-brand">Menu Management</a>
			</div>
			<ul class="navbar-nav">
				<li><a href="<%=request.getContextPath()%>/list" class="nav-link">Items</a></li>
			</ul>
		</nav>
	</header>
	<br>
	<div class="row">
		<div class="container">
			<h3 class="text-center fw-bold text-white">List of Items</h3>
			<hr class="hrStyle">
			<div class="container text-center mb-3">
				<a href="<%=request.getContextPath()%>/new" class="btn btn-primary menustyle fw-bold">Add
					New Items</a>
			</div>
			<br>
			<table class="table table-bordered text-white" style="border:2px solid white">
				<thead>
					<tr>
						<th class="text-white fw-bold">ID</th>
						<th class="text-white fw-bold">Food Name</th>
						<th class="text-white fw-bold">Price</th>
						<th class="text-white fw-bold">Actions</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="item" items="${listItem}">
						<tr>
							<td><c:out value="${item.id}" /></td>
							<td><c:out value="${item.name}" /></td>
							<td><c:out value="${item.price}" /></td>
							<td><a style="text-decoration:none" href="edit?id=<c:out value='${item.id}'/>">Edit</a>&nbsp;&nbsp;&nbsp;&nbsp;<a
								style="text-decoration:none" href="delete?id=<c:out value='${item.id}'/>">Delete</a></td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
	</div>
</body>
<footer>
	<div class="jumbotron text-center" style="margin-bottom: 0">
		<p class="text-white mt-3">Made by Sandhya R</p>
	</div>
</footer>

</html>