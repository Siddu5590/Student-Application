<%@page import="com.studentApplicationProject.DTO.Student"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.7.1/css/all.min.css"
	integrity="sha512-5Hs3dF2AEPkpNAR7UiOHba+lRSJNeM2ECkwxUIxC1Q/FLycGTbNapWXB4tP889k5T5Ju8fs4b1P5z/iB4nMfSQ=="
	crossorigin="anonymous" referrerpolicy="no-referrer" />
<style>
* {
	margin: 0;
	padding: 0;
}

.container {
	height: 100vh;
	width: 100%;
	background-color: skyblue;
}

.navbar {
	width: 100%;
	margin: auto;
	height: 70px;
	padding: 10px;
	display: flex;
	align-items: center;
	justify-content: space-between;
	background-color: silver;
	border-radius: 5px;
	position: fixed;
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
	text-decoration: none;
	color: brown;
	font-size: 25px;
}

.main {
	position: relative;
	top: 100px;
}

.student {
	position: relative;
	left: 50px;
	font-size: 20px;
}

th {
	text-align: center;
	padding-right: 120px;
}

td {
	text-align: center;
}

#logout {
	border: none;
	outline: none;
	background-color: red;
	color: white;
	padding: 10px;
	border-radius: 5px;
	font-size: 20px;
}

input[type=button] {
	cursor: pointer;
	border: none;
	background-color: red;
	color: white;
	padding: 10px;
	width: 100px;
	border-radius: 5px;
	margin: 5px;
}

.fa-solid {
	cursor: pointer;
	position: relative;
	left: 35px;
	top: 3px;
}
</style>
</head>
<body>
	<%Student s1=(Student)session.getAttribute("student"); %>
	<div class="container">
		<div class="navbar">
			<h1 class="logo">
				Welcome,<%=s1.getName() %></h1>
			<ul>
				<li><a href="dashboard.jsp">Back</a></li>
				<li>
					<form action="logout" method="post">
						<input type="submit" name="logout" value="Logout" id="logout">
					</form>
				</li>

			</ul>
		</div>


		<div class="main">
			<center>
				<h1>Welcome to Student Dashboard</h1>
			</center>
			<h1>Your Data</h1>
			<br>


			<table class="student" border="1">


				<tr class="row">
					<th>ID</th>
					<th>Name</th>
					<th>Phone Number</th>
					<th>Mail Id</th>
					<th>Branch</th>
					<th>Location</th>
					<th>Action</th>
				</tr>

				<tr>
					<td><%=s1.getId() %></td>
					<td><%=s1.getName() %></td>
					<td><%=s1.getPhone() %></td>
					<td><%=s1.getMailid() %></td>
					<td><%=s1.getBranch() %></td>
					<td><%=s1.getLocation()%></td>
					<td>
						<form action="updateAccount" method="post">
							<i class="fa-solid fa-edit"></i><a href="updateAccount.jsp"><input
								type="button" value="Edit"></a>
						</form>
					</td>
				</tr>
			</table>
		</div>
	</div>

</body>
</html>