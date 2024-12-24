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
body {
	background-color: peachpuff;
}

.containerr img {
	width: 100%;
}

.about h1 {
	margin: 10px;
	margin-top: 30px;
}

.about p {
	font-size: 20px;
	margin: 10px;
	text-align: justify;
}
</style>
</head>
<body>
	<%@include file="header.jsp"%>
	<%Student s1=(Student)session.getAttribute("student"); %>

	<div class="containerr">
		<img src="student.jpg">
	</div>

	<div class="about" id="about">
		<h1>About</h1>
		<p>
			This Institute is came into existence in 2006 with the objective of
			becoming a centre of excellence in technical education. In less than
			a decade it has carved a reputation for itself as an institution that
			makes a positive difference in the lives of its students.<br>
			<br> Located off the Bangalore, the college campus is a space
			devoted to offering the very best in terms of learning. The college
			is approved by the AICTE – New Delhi, affiliated to VTU, Belagavi and
			Govt. of Karnataka. Accredited By NBA (CSE, ECE, ISE), NAAC with ‘A+’
			Grade& International Accreditation by HLACT, Texas, UK.<br>
			<br> It offers Under Graduate programs in nine engineering
			disciplines, besides masters programs. Departments such as Artificial
			Intelligence & Machine Learning, Civil Engineering, Computer Science
			Engineering, CSE (IoT and Cyber Security including Blockchain
			Technology), Electronics and Communication Engineering, Electrical
			and Electronics Engineering, Information Science and Engineering,
			Mechanical Engineering, Robotics and Automation and three PG courses
			Computer Science and Engineering, Master of Business Administration,
			and Master of Computer Applications, also nine Research Centres.<br>
			<br> This College campus has been designed as a complete.
			Self-contained centre of excellence with modern classrooms,
			state-of-the-art labs, workshops, library, hostels, Wi-Fi enabled
			campus with high-speed internet connectivity and advanced computing
			facilities. A 4000-seater auditorium, 400-seater conference hall and
			6 seminar halls of 120 capacity each are regular venues for
			conferences, seminars and other events.<br>
			<br> A dedicated and highly qualified faculty has authored books
			and regularly publishes papers, with students too being encouraged to
			participate in the research process.
		</p>

		<h1>Vission</h1>
		<p>To provide an open opportunity to young generation for evolving
			their core competencies helping them to build their career as Global
			professionals to be an Autonomous Institution by achieving excellence
			in the field of higher education.</p>

		<h1>Mission</h1>
		<p>To consistently strive for Academic Excellence to become a
			leading Institution in the field of Engineering, Management and
			Research to produce competent and ethically sound manpower for the
			benefit of Industry, Society, Nation and the Global Environment.</p>
	</div>


	<%@include file="footer.jsp"%>
</body>
</html>