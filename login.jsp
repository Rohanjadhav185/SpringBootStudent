<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Login Page</title>
<style>
body {
	font-family: Arial, sans-serif;
	background-color: #f4f4f4;
	margin: 0;
	padding: 0;
	display: flex;
	justify-content: center;
	align-items: flex-start;
	min-height: 100vh;
}

.form-container {
	background: #fff;
	padding: 20px 25px;
	margin-top: 60px; /* URL bar se gap */
	border-radius: 10px;
	box-shadow: 0 5px 15px rgba(0, 0, 0, 0.2);
	width: 350px;
}

h2 {
	text-align: center;
	margin-bottom: 20px;
	color: #333;
}

.form-group {
	margin-bottom: 15px;
}

label {
	display: block;
	margin-bottom: 5px;
	font-size: 14px;
	color: #555;
}

input {
	width: 100%;
	padding: 10px;
	font-size: 14px;
	border: 1px solid #ccc;
	border-radius: 5px;
	outline: none;
}

input:focus {
	border-color: #007bff;
}

.btn {
	width: 100%;
	padding: 10px;
	background: #007bff;
	color: white;
	border: none;
	border-radius: 5px;
	font-size: 16px;
	cursor: pointer;
}

.btn:hover {
	background: #0056b3;
}

.links {
	text-align: center;
	margin-top: 15px;
	font-size: 14px;
}

.links a {
	color: #007bff;
	text-decoration: none;
}

.links a:hover {
	text-decoration: underline;
}
</style>
</head>
<body>
	<div class="form-container">
		<h2>Login</h2>
		<form action="log" method="post">
			<div class="form-group">
				<label for="username">User Name</label> <input type="text"
					id="username" name="username" required>
			</div>

			<div class="form-group">
				<label for="password">Password</label> <input type="password"
					id="password" name="password" required>
			</div>

			<button type="submit" class="btn">Login</button>

			<div class="links">
				<p>
					<a href="#">Forgot Password?</a>
				</p>
				<p>
					Don’t have an account? <a href="register.jsp">Register</a>
				</p>
			</div>
		</form>
	</div>
</body>
</html>


