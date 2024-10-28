<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>User Reg Page</title>
</head>
<body>
<h1>User Registration</h1>
<form action="userreg" method="post">
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

<label>Date Of Birth</label><br>
<input type="date" name="date" placeholder="Enter Date Of Birth"><br><br>

<button type="submit">Register</button>
</form>

</body>
</html>