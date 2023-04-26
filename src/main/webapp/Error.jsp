<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isErrorPage="true"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Error</title>
<style>
body{
		font-family: "Lato", sans-seriff;
		background-image: url('https://www.puma-catchup.com/wp-content/uploads/2018/07/Black_H-750x421.jpg');
		background-repeat:no-repeat;
		background-size:cover;
	}
</style>
</head>
<body>
<div class="text-center">
<h1>Error</h1>
<h2>
<%= exception.getMessage() %><br>
</h2>
</div>
</body>
</html>