<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Home Page</title>
</head>
<body>
	<%
	Connection c = null;
	PreparedStatement ps = null;
	ResultSet rs = null;
	try {
		Class.forName("com.mysql.cj.jdbc.Driver");
		c = DriverManager.getConnection("jdbc:mysql://localhost:3306/hms", "root", "root");
		ps = c.prepareStatement("select * from patient");
		rs = ps.executeQuery();
	} catch (Exception e) {
		e.printStackTrace();
	} 
	%>
	<h1>Welcome to HMS Home Page </h1>
	<table border="3" rules="all" cellpadding="10">
		<thead>
			<tr>
				<th>patientId</th>
				<th>Name</th>
				<th>age</th>
				<th>Gender</th>
				<th>phone</th>
				<th>disease</th>
				<th colspan="2">Action</th>
			</tr>
		</thead>
		<tbody>
			<%
			while(rs.next())
			{
			%>
			<tr>
				<td><%= rs.getInt(1) %></td>
				<td><%= rs.getString(2) %></td>
				<td><%= rs.getInt(3) %></td>
				<td><%= rs.getString(4) %></td>
				<td><%= rs.getLong(5) %></td>
				<td><%= rs.getString(6) %></td>
				<td><a href="delete?sid=<%= rs.getInt(1)%>"><button>Delete</button></a></td>
				<td><a href="updatepage?id=<%= rs.getInt(1)%>"><button>Update</button></a></td>
			</tr>
			<%} %>
		</tbody>
	</table>
<script type="text/javascript">
let msgEle=document.getElementById("msg");
setTimeout(()=>{
	msgEle.style.display="none";
},2000)
</script>
</body>
</html>