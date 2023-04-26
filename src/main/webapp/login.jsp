<%@ page import="com.RestaurantManagement.db.DbConnection"%>
<%@ page import="java.sql.*"%>

<%
String userid = request.getParameter("userName");
String pwd = request.getParameter("pass");
Connection con = DbConnection.init();
Statement stmt = con.createStatement();
ResultSet res;
String sql="select * from members where uname=" + userid + " and password=" + pwd;
res = stmt.executeQuery(sql);
if (res.next()) {
	session.setAttribute("userid", userid);
	response.sendRedirect("success.jsp");
} 
else {
%>

<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Restaurant</title>
	<link rel="stylesheet" href="w3.css" type="text/css">
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

		.style1 {
			color: white;
			text-align: center;
		}
	</style>
</head>
<body>
<div class="w3-container w3-center">
	<div class="w3-xxlarge">Restaurant</div>
</div>
<p class="style1">
	!<br> 
	Wrong Username or Password.<br>
	 If you do not redirect within 5 seconds <a href="index.jsp">Click here</a>
	<script>
setTimeout(function()){
	window.location.href="index.jsp"
	}, 5000);
</script>
</p>
<%
}
%>
</body>
</html>