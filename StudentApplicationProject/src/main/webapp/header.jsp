<%@page import="com.studentApplicationProject.DTO.Student"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
* {
	margin: 0;
	padding: 0;
}

.navbar {
	width: 100%;
	height: auto;
	padding: 10px;
	display: flex;
	align-items: center;
	justify-content: space-between;
	background-color: silver;
	border-radius: 5px;
	position: fixed;
	margin-top: 10px;
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
	width: 120px;
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
	right: -5px;
	transform: rotate(0deg);
	transition: 0.3s ease-in-out all;
}

.user:hover .arrow {
	transform: rotate(180deg);
}
</style>
</head>
<body>
	<%Student s=(Student)session.getAttribute("student"); %>
	<div class="container">
		<div class="navbar">
			<h1 class="logo">Student Application</h1>
			<ul>
				<%if(s.getId()!=1) { %>

				<li><a href="#">Home</a></li>
				<li><a href="#about">About</a></li>
				<li><a href="#contact">Contact us</a></li>

				<li class="user"><a href="#"><%=s.getName() %><i
						class="fa-solid fa-caret-down arrow"></i></a>
					<div class="dropdown">
						<ul>
							<li><a href="yourdata.jsp">Profile</a></li>
							<li><a href="resetpassword.jsp">Reset Password</a></li>
							<li>
								<form action="logout" method="post">
									<input type="submit" name="logout" value="Logout" id="logout"><i
										class="fa-solid fa-right-from-bracket exit"></i>
								</form>
							</li>
							<%} else {
                         session.setAttribute("Student", s);
                         RequestDispatcher rd=request.getRequestDispatcher("adminHome.jsp");
                         rd.forward(request, response);
                         }%>
						</ul>
					</div></li>
			</ul>
		</div>
</body>
</html>