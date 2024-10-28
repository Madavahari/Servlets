<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>registration title</title>
<style type="text/css">
form {
	height: 350px;
	width:200px;
	background-color: blue;
	align-content: center;
	padding: 20px;
	margin:auto;
	margin-top:100px;
	border: 2px solid black;
}
label {
	font-size: 20px;
	color:white;
}
button {
	background-color:orange;
}
</style>
</head>
<body>
<h1>Registration Successfully</h1>

<form action="register">
<label>Name :</label><br>
<input type="text" name="name" placeholder="Enter Full Name"><br><br>
<label>Email :</label><br>
<input type="email" name="email" placeholder="Enter eamil"><br><br>
<label>phone no:</label><br>
<input type="tel" name="phone" placeholder="Enter Phone No"><br><br>
<label>username</label><br>
<input type="text" name="username" placeholder="Enter username"><br><br>

<label>password</label><br>
<input type="text" name="password" placeholder="Enter password"><br><br>

<button type="submit">Register</button>
</form>
</body>
</html>