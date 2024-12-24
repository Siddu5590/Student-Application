<%@page import="com.studentApplicationProject.DTO.Student"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Forgot Password</title>
<style>
body {
	background-color: cadetblue;
	height: 100vh;
	width: 100%;
}

form {
	padding: 20px;
	width: 40%;
	position: absolute;
	left: 50%;
	top: 50%;
	transform: translate(-50%, -50%);
	box-sizing: border-box;
	color: black;
	box-shadow: 8px 8px 50px black;
}

h1 {
	text-align: center;
}

input {
	padding: 10px;
	margin: 10px;
	width: 50%;
	border-radius: 10px;
	outline: none;
	border: none;
	position: relative;
	left: 120px;
	font-size: 20px;
}

input[type=submit] {
	width: 25%;
	position: relative;
	left: 100px;
	padding: 15px;
	background-color: purple;
	color: white;
	font-size: 20px;
	text-transform: uppercase;
}

input[type=submit]:hover {
	background-color: thistle;
	color: black;
}

input[type=button] {
	width: 20%;
	position: relative;
	padding: 15px;
	background-color: purple;
	color: white;
	font-size: 20px;
	text-transform: uppercase;
}

input[type=button]:hover {
	background-color: thistle;
	color: black;
}

.success {
	color: green;
	padding: 5px;
	margin-bottom: 10px;
	text-align: center;
}

.fail {
	color: red;
	padding: 5px;
	margin-bottom: 10px;
	text-align: center;
}
</style>
</head>
<body>
	<form action="forgot" method="post">
		<h1>Reset Your Password</h1>
		<% Student s=(Student)session.getAttribute("student");%>
		<%String success=(String)request.getAttribute("success");
			if(success!=null) { %>
		<h3 class="success">
			<%=success %></h3>
		<%} %>

		<%String fail=(String)request.getAttribute("fail");
			if(fail!=null) { %>
		<h3 class="fail"><%=fail %></h3>
		<%} %>
		<input type="email" placeholder="Enter your Mail id" name="mail"
			required value="<%=s.getMailid() %>"><br> <input
			type="text" placeholder="Enter your Phone number" name="phone"
			required value="<%=s.getPhone() %>"><br> <input
			type="password" placeholder="Enter New Password" name="password"
			required><br> <input type="password"
			placeholder="Confirm Your Password" name="confirm" required><br>
		<br> <input type="submit"> <a href="dashboard.jsp"><input
			type="button" value="Back"></a>


	</form>
</body>
</html>