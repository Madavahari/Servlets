<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <element>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Welcome</title>
</head>
<body>
<h1>Welcome Page</h1>
<a href="reg.jsp"><button>Click here to Resgister</button></a>
<a href="allemp"><button>View All Employee</button></a>
<a href="login.jsp"><button>Login</button></a>



<script type="text/javascript">
let msgEle=document.getElementById("msg");
setTimeout(()=>{
	msgEle.style.display="none";
},2000);
</script>



</body>
</html>
</element>