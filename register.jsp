<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Registration Page</title>
<style>
body {
	font-family: Arial, sans-serif;
	background-color: #f4f4f4;
	margin: 0;
	padding: 0;
	display: flex;
	justify-content: center;
	align-items: flex-start; /* top se start hoga */
	min-height: 100vh;
}

.form-container {
	background: #fff;
	padding: 20px 25px;
	margin-top: 60px; /* URL bar se gap */
	border-radius: 10px;
	box-shadow: 0 5px 15px rgba(0, 0, 0, 0.2);
	width: 350px; /* form ka size */
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

.login-link {
	text-align: center;
	margin-top: 15px;
	font-size: 14px;
}

.login-link a {
	color: #007bff;
	text-decoration: none;
}

.login-link a:hover {
	text-decoration: underline;
}
</style>
</head>
<body>

	<div class="form-container">
		<h2>Register</h2>
		<form action="save">
			<div class="form-group">
				<label for="rollno">Roll No:</label> <input type="text" id="rollno"
					name="rollno" required>
			</div>

			<div class="form-group">
				<label for="sname">Student Name:</label> <input type="text"
					id="sname" name="sname" required>
			</div>

			<div class="form-group">
				<label for="marks">Marks:</label> <input type="text" id="marks"
					name="marks" required>
			</div>

			<div class="form-group">
				<label for="username">User Name:</label> <input type="text"
					id="username" name="username" required>
			</div>

			<div class="form-group">
				<label for="password">Password:</label> <input type="password"
					id="password" name="password" required>
			</div>

			<button type="submit" class="btn">Register</button>

			<div class="login-link">
				Already have an account? <a href="login.jsp">Login</a>
			</div>
		</form>
	</div>

</body>
</html>
