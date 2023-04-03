<%@ page import="com.RestaurantManagement.db.DbConnection"%>

<!DOCTYPE html>
<html>
<head>
	<%@ page import="java.sql.*"%>
	<%@ page import="java.util.*"%>
	<%@ page language="java" contentType="text/html; charset=UTF-8"
    	pageEncoding="UTF-8"%>
	<% if((session.getAttribute("userid")==null) || (session.getAttribute("userid")== " ")){
	%>
		<p class="text-center">The session was expired...........</p><br>
		</hr>
		<a href="index.jsp" style="text-decoration:none">Click here to login again!</a>
	<%}
	else{
		float sum=0;
		Connection con=DbConnection.init();
		Statement st=con.createStatement();
		ResultSet res;
		String[] sports;
	%>
	<meta charset="UTF-8">
	<title>Restaurant | Confirm Your Order</title>
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

		#navigation{
			display:inline-block;
			list-style:none;
			line-height:50px;
			margin:0;
			padding-left:20;
		}
		#navigation ul{
			display:inline-block;
			list-style:none;
			margin:0;
			padding:0;
		}
		#navigation li{
			float:left;
			width:180px;
			text-align: right;
		}
		#navigation li a{
			color:white;
			font-size:30px;
			line-height:10px;
			text-decoration: none;
		}
		#navigation li a:hover{
			color:white;
			font-size:30px;
		}

		#navigation li.active a{
			color:black;
			padding:12px;
			background-color:transparent;
			font-size:20px;
			line-height:10px;
			border:2px solid black;
			border-radius:10px;
		}
		.color{
		background-color:#6E6B6B;
		font-size:16px;
		border: none;
		height:40px;
		color:white;
		font-weight:bold;
		}
		.color:hover{
		background-color:white;
		border: 2px solid #6E6B6B;
		color:#6E6B6B;
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
	<header>
		<nav class="navbar navbar-expand-md navbar-dark"
			style="background-color: #6E6B6B">
			<div>
				<a href="#" class="navbar-brand bf-bold fw-bolder nav1">Restaurant</a>
			</div>
			<ul class="navbar-nav">
				<li><a href="#" class="nav-link  nav-style1 text-white">Locations</a></li>
				<li><a href="chef.jsp" class="nav-link  nav-style1 text-white">Our Chefs</a></li>
				<li><a href="AboutUs.jsp" class="nav-link  nav-style1 text-white">About Us</a></li> 
				<li><a href="logout.jsp" class="nav-link  nav-style1 text-white">Log Out<i>(<% out.print(session.getAttribute("userid")); %>)</i></a></li>
			</ul>
		</nav>
	</header>
	<br>
	<br>
	<%ArrayList<Integer> arraylist=new ArrayList<Integer>();
	sports=request.getParameterValues("chk1");
	out.println("&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <h1 style='display:inline-block;color:white;padding:5px;border 2px solid #616161;'>Your Cart</h1>");
	out.println("<table class='table table-bordered text-white'><thead><tr><th>Item Name</th><th>Quantity</th><th>Total</th></tr></thead>");
	float count=0;
	if(sports!=null){
		for(int i=0;i<sports.length;i++){
			st.executeQuery("select itemName, price from items where id="+ sports[i] +" ");
			res=st.getResultSet();
			while(res.next()){
				String nameVal=res.getString("itemName");
				int catVal=res.getInt("price");
	%>
				<input type="hidden" id="cost"	value="<%=catVal%>">
			<% 
				arraylist.add(catVal);
				sum=sum+catVal;
				int q=1;
				count++;
				out.println("<tr><td class='text-white;'>"+ nameVal +"</td><td class='text-white;'>"+ q +"</td><td style='text-color:white;'><div id='total1'>"+ catVal +"</div></td></tr>");
				count+=1;
			}
		}
		out.println("<tr><td style='font-size:30px;'>Total</td><td style='font-size:30px;'>"+ count/2 +"</td><td style='font-size:30px;'>"+ sum +"</td></tr>");
		out.println("<tr></tr><tr colspan='3'><td colspan ='3'><div><a href='post.jsp'><input type='button' style='width:100%' class='w3-xlarge w3-btn w3-block w3-black color' value='Proceed to Checkout'></div></td></tr>");
	} else {%>
		<tr><td></td></tr><tr><td></td></tr>
<%} %>
</table>
<h4 class="text-center mt-3">&nbsp;<a href="success.jsp" style="text-decoration:none;color:white">Shop more items</a></h4>
<div id="footer" style="height:270px; display:block"></div>
<footer>
<div class="jumbotron text-center" style="margin-bottom: 0">
		<p class="text-white">Made by Sandhya R</p>
	</div>		
</footer>
</body>
</html>
<%
}
%>
