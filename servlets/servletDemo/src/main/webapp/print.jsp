<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Print here</title>
<style type="text/css">
form
{
height:150px;
width:200px;
background-color: orange;
padding: 15px;
margin:auto;
margin-top:100px;
border:2px solid black;
}
button
{
   text-align:center;
   background-color:blue;
}
label{
font-size: 20px;
color: white;
}
</style>

</head>
<body>
<form action="print">
    <label>name</label>
    <input type="text" name="name" placeholder=" Enter name"><br><br>
    <label>place</label>
    <input type="text" name="place" placeholder="Enter Place"><br><br>
    <button type="submit">Print</button>
    </form>
    
</body>
</html>