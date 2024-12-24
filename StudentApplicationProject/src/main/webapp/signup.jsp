<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Sign Up</title>
<style>
* {
	margin: 0;
	padding: 0;
	font-family: sans-serif;
}

body {
	height: 100vh;
	background: url('bg.jpg') no-repeat;
	background-size: cover;
}

#signup {
	position: relative;
	top: 40px;
}

.form {
	display: flex;
	flex-direction: column;
	height: auto;
	width: 450px;
	border: 1px solid black;
	align-items: center;
	margin: auto;
	margin-top: 20px;
	background-color: rgba(0, 0, 0, 0.5);
	box-shadow: inset -5px -5px rgba(0, 0, 0, 0.2);
	border-radius: 25px;
}

#branch {
	width: 70%;
	margin-bottom: 20px;
	padding: 10px;
	border: none;
	outline: none;
	border-radius: 20px;
	background-color: rgba(0, 0, 0, 0.5);
	box-shadow: inset -3px -3px rgba(0, 0, 0, 0.2);
	color: white;
}

.branch {
	color: white;
	position: relative;
	left: -65px;
	bottom: 3px;
	font-size: 20px;
}

.form h1 {
	color: white;
	font-size: 2rem;
	text-transform: uppercase;
	margin: 20px;
}

.box {
	padding: 10px;
	margin-bottom: 20px;
	width: 65%;
	border: none;
	outline: none;
	border-radius: 20px;
	background-color: rgba(0, 0, 0, 0.5);
	box-shadow: inset -3px -3px rgba(0, 0, 0, 0.2);
	color: white;
	font-size: 1rem;
}

.check {
	height: 15px;
	position: relative;
	left: -150px;
	top: -5px;
}

.terms {
	position: relative;
	top: -20px;
	left: -20px;
	color: white;
}

.forgot {
	color: white;
	position: relative;
	left: 80px;
	font-size: 15px;
	text-decoration: none;
}

#submit {
	padding: 10px 20px;
	margin-top: 10px;
	width: 50%;
	background-color: red;
	color: white;
	text-transform: uppercase;
	border: none;
	outline: none;
	border-radius: 20px;
	font-size: 1rem;
}

#submit:hover {
	cursor: pointer;
	background-color: rgba(255, 255, 255, 0.1);
	color: snow;
}

::placeholder {
	color: white;
	opacity: 0.7;
}

.create-account {
	color: white;
	margin: 10px;
}

.create-account a {
	color: white;
}

.success {
	background-color: black;
	color: green;
	padding: 5px;
	margin-bottom: 10px;
	border-radius: 10px
}

.fail {
	background-color: black;
	color: red;
	padding: 5px;
	margin-bottom: 10px;
	border-radius: 10px
}
</style>
</head>
<body>
	<form action="signup" method="post" class="form" id="signup">
		<h1>Sign Up</h1>

		<%String success=(String)request.getAttribute("success");
	if(success!=null) { %>
		<h3 class="success"><%=success %></h3>
		<%} %>

		<%String fail=(String)request.getAttribute("fail");
	if(fail!=null) { %>
		<h3 class="fail"><%=fail %></h3>
		<%} %>

		<%String mismatch=(String)request.getAttribute("mismatch");
	if(mismatch!=null) { %>
		<h3 class="fail"><%=mismatch %></h3>
		<%} %>

		<input type="text" name="name" class="box"
			placeholder="Enter Your Name" required> <input type="text"
			name="phone" class="box" placeholder="Enter Your Phone Number"
			required> <input type="mail" name="mail" class="box"
			placeholder="Enter Your Mail ID" required> <label for=""
			class="branch">Select Your Branch:</label> <select name="branch"
			id="branch" required>
			<option value="">Select Your Branch</option>
			<option value="cse">CSE</option>
			<option value="ece">ECE</option>
			<option value="eee">EEE</option>
			<option value="aiml">AIML</option>
			<option value="ise">ISE</option>
			<option value="civil">Civil Engineering</option>
			<option value="mech">Mechanical Engineering</option>
			<option value="others">Others</option>
		</select> <input type="text" name="location" class="box"
			placeholder="Enter Your Location" required> <input
			type="password" name="password" class="box"
			placeholder="Enter your Password" required> <input
			type="password" name="confirm" class="box"
			placeholder="Confirm your Password" required> <input
			type="checkbox" class="check" required><label for=""
			class="terms">Accept the Terms and Conditions</label> <input
			type="submit" value="Sign Up" id="submit">
		<div class="create-account">
			<p>
				Already have an Account? <a href="login.jsp">Login Here</a>
			</p>
		</div>
	</form>
</body>
</html>