<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login Page</title>
<style type="text/css">
form
{
height:150px;
width:200px;
background-color: blue;
padding: 15px;
margin:auto;
margin-top:100px;
border:2px solid black;
}
button
{
   text-align:center;
   background-color:orange;
}
label{
font-size: 20px;
color: white;
}
</style>
</head>
<body>
    <h1>Login Here</h1>
    <form action="login" method="post">
    <label>username</label>
    <input type="text" name="username" placeholder=" Enter username"><br><br>
    <label>password</label>
    <input type="text" name="password" placeholder="Enter Password"><br><br>
    <button type="submit">Login</button>
    </form>
    
    
    <h2><a href="reg.jsp">Click here to Register</a></h2>
     <h2><a href="info.jsp">Click here to Information</a></h2>
      <h2><a href="userreg.jsp">Click here to User Reg..</a></h2>
    
</body>
</html>