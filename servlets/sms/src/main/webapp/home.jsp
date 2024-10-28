<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<style type="text/css">
#btn
{
  height: 30px;
  width: 70px;
  background-color: orange;
  margin-left: 650px;
}
#logc
{
  height: 30px;
  width: 70px;
  background-color: orange;
  margin-left: 350px;
}

</style>
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
		c = DriverManager.getConnection("jdbc:mysql://localhost:3306/sms", "root", "root");
		ps = c.prepareStatement("select * from student");
		rs = ps.executeQuery();
	} catch (Exception e) {
		e.printStackTrace();
	} 
	%>
	<h1>Welcome to SMS Home Page </h1>
	<a href="register.jsp"><button id="btn">Create</button></a>
	<table border="3" rules="all" cellpadding="10">
		<thead>
			<tr>
				<th>SID</th>
				<th>Name</th>
				<th>Email</th>
				<th>Phone</th>
				<th>username</th>
				<th>Password</th>
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
				<td><%= rs.getString(3) %></td>
				<td><%= rs.getLong(4) %></td>
				<td><%= rs.getString(5) %></td>
				<td><%= rs.getString(6) %></td>
				<td><a href="delete?sid=<%= rs.getInt(1)%>"><button>Delete</button></a></td>
				<td><a href="updatepage?sid=<%= rs.getInt(1)%>"><button>Update</button></a></td>
			</tr>
			<%} %>
		</tbody>
	</table>
	<a href="logout.jsp"><button id="log">Logout</button></a>
<script type="text/javascript">
let msgEle=document.getElementById("msg");
setTimeout(()=>{
	msgEle.style.display="none";
},2000)
</script>
</body>
</html>