<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Index Page</title>
</head>
<body>
<% response.sendRedirect("login.jsp"); %>
<script type="text/javascript">
let msgEle=document.getElementById("msg");
setTimeout(()=>{
	msgEle.style.display="none";
},2000);
</script>

   <h1>Index Page</h1>
   <a href="register.jsp"><button>Click Here To Register</button></a>
   <a href="allstd"><button>View Students</button></a>
</body>
</html>