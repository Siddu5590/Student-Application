<%@page import="java.util.Iterator"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.studentApplicationProject.DAO.StudentDAOImpl"%>
<%@page import="com.studentApplicationProject.DAO.StudentDAO"%>
<%@page import="com.studentApplicationProject.DTO.Student"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Student Application</title>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.7.1/css/all.min.css"
	integrity="sha512-5Hs3dF2AEPkpNAR7UiOHba+lRSJNeM2ECkwxUIxC1Q/FLycGTbNapWXB4tP889k5T5Ju8fs4b1P5z/iB4nMfSQ=="
	crossorigin="anonymous" referrerpolicy="no-referrer" />
<style>
* {
	margin: 0;
	padding: 0;
}

.student {
	font-size: 20px;
}

th {
	text-align: center;
	padding-bottom: 10px;
	width: auto;
	padding-right: 50px;
}

td {
	padding-left: 5px;
	padding-bottom: 10px;
	padding-right: auto;
}

.mail {
	width: auto;
	padding-right: auto;
}

.btn {
	padding: 5px;
}

input[type=submit] {
	cursor: pointer;
	border: none;
	background-color: red;
	color: white;
	padding: 10px;
	width: 100px;
	border-radius: 5px;
	margin: 5px;
}

.delete {
	cursor: pointer;
	position: relative;
	left: 27px;
	top: 3px;
	color: white;
}

.success {
	color: green;
	padding: 5px;
	margin-bottom: 10px;
}

.fail {
	color: red;
	padding: 5px;
	margin-bottom: 10px;
}
</style>
</head>
<body>
	<%@include file="admin.jsp"%>
	<%Student s2=(Student)session.getAttribute("student"); %>

	<div class="main">

		<h1>All Student Details</h1>
		<br>

		<%String success=(String)request.getAttribute("success");
			if(success!=null) { %>
		<h3 class="success"><%=success %></h3>
		<%} %>

		<%String fail=(String)request.getAttribute("fail");
			if(fail!=null) { %>
		<h3 class="fail"><%=fail %></h3>
		<%} %>
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

			<%StudentDAO sdao=new StudentDAOImpl();
                ArrayList<Student> students=(ArrayList<Student>)sdao.getStudent();
                Iterator<Student> it=students.iterator();%>

			<%while(it.hasNext()) {
                Student s1=it.next();%>


			<tr class="row">
				<td><%=s1.getId() %></td>
				<td><%=s1.getName() %></td>
				<td><%=s1.getPhone() %></td>
				<td class="mail"><%=s1.getMailid() %></td>
				<td><%=s1.getBranch() %></td>
				<td><%=s1.getLocation() %></td>
				<td>
					<form action="delete" method="post" class="btn">
						<input type="hidden" name="id" value="<%=s1.getId()%>"> <i
							class="fa-solid fa-trash-can delete"></i><input type="submit"
							value="Delete">
					</form>
				</td>
			</tr>
			<%} %>


		</table>
	</div>
	</div>
</body>
</html>