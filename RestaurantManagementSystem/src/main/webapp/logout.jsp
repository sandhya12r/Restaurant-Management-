<% 
session.setAttribute("userid", null);
session.invalidate();
response.sendRedirect("index.jsp");

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Restaurant | logout</title>

<style>

body{
		font-family: "Lato", sans-seriff;
		background-image: url('https://www.puma-catchup.com/wp-content/uploads/2018/07/Black_H-750x421.jpg');
		background-repeat:no-repeat;
		background-size:cover;
	}
	</style>
	</head>
	</html>
