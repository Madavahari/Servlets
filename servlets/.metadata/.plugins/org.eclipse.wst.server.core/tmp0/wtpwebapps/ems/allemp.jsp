<%@page import="java.sql.ResultSet"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>All Employee page</title>
<style type="text/css">
#createbtn
{
margin-left:65%;
margin-top:5px;
padding:10px;
}
#btn
{
height:50px;
width:150px;
font-size: 20px;
background-color: blue;
}
</style>
</head>
<body>
<h1 style="text-align:center">All Employee Details</h1>
<a id="createbtn" href="reg.jsp" ><button id="btn">Create</button></a>

<table border="3" cellpadding="10" rules="all" align="center">
<thead>
<tr>
<th>ID</th>
<th>Name</th>
<th>Email</th>
<th>Salary</th>
<th>Dno</th>
<th>Password</th>
<th colspan="2">Action</th>
</tr>
</thead>
<%
		ResultSet rs=(ResultSet)request.getAttribute("rs");
		while(rs.next()) {
%>
       <tr>
		<td><%= rs.getInt(1) %></td>
		<td><%= rs.getString(2) %></td>
		<td><%= rs.getString(3) %></td>
		<td><%= rs.getDouble(4) %></td>
		<td><%= rs.getInt(5) %></td>
		<td><%= rs.getString(6) %></td>
		<td><a href="delete?id= <%= rs.getInt(1) %>"><button>Delete</button></a></td>
	    <td><a href="updatepage?id= <%= rs.getString(1) %>"><button>update</button></a></td>
	
		</tr>
		
		
	<% 
		}
	%>
</table>
<script type="text/javascript">
let msgEle=document.getElementById("mg1");
setTimeout(()=>{
	msgEle.style.display="none";
},2000);
</script>

</body>
</html>