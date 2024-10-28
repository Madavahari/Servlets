<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>Hello please Login</h1>
<h2><%= session.getAttribute("name") %></h2>
<form action="login" method="post">
<input type="text" name="email" placeholder="Enter your email">
<input type="text" name="password" placeholder="Enter your Password">
<a href=""><button type="submit">Login</button></a>

</form>

</body>
</html>