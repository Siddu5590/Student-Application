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

.footer {
	background-color: #333b3c;
	width: 100%;
	margin-top: 20px;
	height: 220px;;
	position: relative;
	bottom: 0%;
	border-radius: 10px;
}

.left {
	float: left;
	width: 30%;
	margin: 10px;
}

.left h1 a {
	color: white;
	margin: 10px;
	text-decoration: none;
}

.left p {
	color: white;
	margin: 10px;
}

.right {
	float: left;
	width: 20%;
	color: white;
	margin: 10px;
}

.right h1 {
	color: white;
	margin: 10px;
}

.right ul {
	list-style: none;
	margin: 10px;
}

.right ul li {
	margin: 10px;
}

.right ul li a {
	color: white;
	text-decoration: none;
	margin: 10px;
	font-size: 20px;
}

.social {
	float: left;
	width: 25%;
	margin: 10px;
}

.social h1 {
	color: white;
	margin: 10px;
}

.social a {
	color: white;
	padding: 5px;
	margin: 5px;
	font-size: 20px;
}

.location {
	float: left;
	margin-left: 10px;
	margin: 10px;
}

.location h1 {
	color: white;
	margin: 10px;
}

.location p {
	color: white;
	padding: 5px;
	margin: 5px;
	text-align: justify;
}

.location a {
	color: white;
	text-decoration: none;
	margin-bottom: 10px;
}

.location i {
	color: white;
}

.fa-solid {
	padding-right: 5px;
}
</style>
</head>
<body>

	<div class="footer">
		<div class="left">
			<h1>
				<a href="#">Student Application</a>
			</h1>
			<p>
				Welcome to student Application <br>Established in 2006
			</p>
		</div>
		<div class="right">
			<h1>Useful Links</h1>
			<ul>
				<li><a href="#">Home</a></li>
				<li><a href="#about">About Us</a></li>
				<li><a href="#contact">Contact Us</a></li>
			</ul>
		</div>

		<div class="social">
			<h1>Follow Us on</h1>
			<a href="https://www.facebook.com"><i
				class="fa-brands fa-facebook"></i></a> <a
				href="https://www.instagram.com"><i
				class="fa-brands fa-instagram"></i></a> <a
				href="https://www.linkedin.com"><i class="fa-brands fa-linkedin"></i></a>
			<a href="https://www.youtube.com"><i class="fa-brands fa-youtube"></i></a>
		</div>

		<div class="location">
			<h1 id="contact">Get in touch</h1>
			<p>
				<i class="fa-solid fa-location-dot"></i>Student Portal, Head Office<br>
				Vijaynagar, Bengalore-560040, <br>Karnataka, India.
			</p>
			<i class="fa-solid fa-envelope"></i><a
				href="mailto:enquiry@gmail.com">enquiry@gmail.com</a><br> <br>
			<i class="fa-solid fa-phone"></i><a href="tel:9998866231">+91-9998866231
				, <a href="tel:98651234652">+91-98651234652</a>
			</a>
		</div>
	</div>
</body>
</html>