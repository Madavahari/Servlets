<%@page import="java.sql.ResultSet"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Update Page</title>
</head>
<body>
<%
  
   ResultSet rs=(ResultSet)request.getAttribute("rs");
%>

    <h1>Update Page</h1>
    <script type="text/javascript">
let msgEle=document.getElementById("msg");
setTimeout(()=>{
	msgEle.style.display="none";
},2000);
</script>
    
    
    
 <form action="update" method="post">
<label>id :</label><br>
<input type="number" name="id" value="<%= rs.getInt(1) %>" placeholder="Enter id "><br><br>
<label>name :</label><br>
<input type="text" name="name" value="<%= rs.getString(2) %>" placeholder="Enter name"><br><br>
<label>email :</label><br>
<input type="text" name="email" value="<%= rs.getString(3) %>" placeholder="Enter email "><br><br>
<label>salary :</label><br>
<input type="text" name="salary" value="<%= rs.getDouble(4) %>" placeholder="Enter salary "><br><br>
<label>Dno :</label><br>
<input type="text" name="dno" value="<%= rs.getInt(5) %>" placeholder="Enter dno"><br><br>
<label>password :</label><br>
<input type="text" name="password" value="<%= rs.getString(6) %>" placeholder="Enter password"><br><br>
<button type="submit">Update</button>

    
</body>
</html>