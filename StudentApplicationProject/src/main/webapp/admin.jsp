<%@page import="com.studentApplicationProject.DTO.Student"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Document</title>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.7.1/css/all.min.css"
	integrity="sha512-5Hs3dF2AEPkpNAR7UiOHba+lRSJNeM2ECkwxUIxC1Q/FLycGTbNapWXB4tP889k5T5Ju8fs4b1P5z/iB4nMfSQ=="
	crossorigin="anonymous" referrerpolicy="no-referrer" />
<style>
* {
	margin: 0;
	padding: 0;
}

body {
	background-color: skyblue;
}

.navbar {
	height: auto;
	padding: 10px;
	display: flex;
	align-items: center;
	justify-content: space-between;
	background-color: silver;
	border-radius: 5px;
}

.logo {
	margin: 10px;
	cursor: pointer;
}

.navbar ul li {
	list-style: none;
	display: inline-block;
	margin: 10px 20px;
	position: relative;
	right: 70px;
}

.navbar ul li a {
	display: block;
	text-decoration: none;
	color: brown;
	font-size: 25px;
}

.navbar ul li::after {
	content: '';
	height: 3px;
	width: 0;
	background-color: black;
	position: absolute;
	left: 0;
	bottom: -8px;
	transition: 0.3s;
	position: fixed;
}

.navbar ul li:hover::after {
	width: 100%;
}

#logout {
	cursor: pointer;
	border: none;
	outline: none;
	color: white;
	background: none;
	font-size: 20px;
}

.exit {
	color: white;
	position: relative;
	left: 5px;
}

#logout:hover {
	background-color: transparent;
}

.dropdown {
	width: 100%;
	position: relative;
	right: 10px;
	left: 0;
}

.navbar ul li .dropdown ul {
	height: auto;
	padding-bottom: 10px;
	background-color: #333b3c;
	position: absolute;
	left: 0;
	z-index: 999;
	display: none;
	padding-left: 60px;
	margin-top: 5px;
}

.dropdown ul li a {
	color: white;
}

.navbar ul li .dropdown ul li {
	border-bottom: 1px solid white;
	position: relative;
	top: 5px;
	width: 100%;
}

.navbar ul li:hover .dropdown ul {
	display: block;
	cursor: pointer;
}

.user a {
	display: flex;
}

.arrow {
	font-size: 20px;
	position: relative;
	left: 5px;
	transform: rotate(0deg);
	transition: 0.3s ease-in-out all;
}

.user:hover .arrow {
	transform: rotate(180deg);
}

.dashboard {
	float: left;
	background-color: white;
	height: 100vh;
	width: 16%;
	margin-right: 20px;
}

.dashboard ul li {
	list-style: none;
	padding: 20px;
	border-bottom: 1px solid black;
}

.dashboard ul li a {
	text-decoration: none;
	color: black;
	font-size: 20px;
	padding-top: 20px;
}

#logout {
	cursor: pointer;
	border: none;
	outline: none;
	color: black;
	background: none;
	font-size: 20px;
	padding-left: 10px;
}

.exit {
	color: white;
	position: relative;
	left: 5px;
}

.h1 {
	margin-top: 10px;
	text-align: center;
}
</style>
</head>
<body>

	<%Student s=(Student)session.getAttribute("student"); %>
	<div class="navbar">
		<h1 class="logo">Welcome Admin</h1>
		<ul>
			<li class="user"><a href="#"><i class="fa-solid fa-user"></i>
					<%=s.getName() %> <i class="fa-solid fa-caret-down arrow"></i></a>
				<div class="dropdown">
					<ul>
						<li><a href="yourdata.jsp">Profile</a></li>
					</ul>
				</div></li>
		</ul>
	</div>
	<div class="dashboard">
		<ul>
			<li><a href="adminHome.jsp"><i
					class="fa-solid fa-grip-vertical"></i> Dashboard</a></li>
			<li><a href="users.jsp"><i class="fa-regular fa-user"></i>
					View All Users</a></li>
			<li><a href="resetpassword.jsp"><i
					class="fa-solid fa-pen-to-square"></i> Reset Password</a></li>
			<li>
				<form action="logout" method="post">
					<i class="fa-solid fa-arrow-right-from-bracket"></i><input
						type="submit" name="logout" value="Logout" id="logout">
				</form>
			</li>
		</ul>

	</div>
	<h1 class="h1">Welcome to an Admin Dashboard</h1>


</body>
</html>