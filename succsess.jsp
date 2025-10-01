<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%><%@ taglib
	prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Student Dashboard</title>

<style>
/* General Body */
body {
	font-family: Arial, sans-serif;
	background: #f4f6f9;
	margin: 0;
	padding: 0;
}

/* Header */
header {
	background-color: #007bff;
	color: white;
	padding: 15px 20px;
	text-align: center;
	font-size: 24px;
	font-weight: bold;
}

/* Navigation Bar */
nav {
	background-color: #343a40;
	padding: 10px 20px;
}

nav a {
	color: white;
	text-decoration: none;
	margin-right: 20px;
	font-size: 16px;
}

nav a:hover {
	text-decoration: underline;
}

/* Main Container */
.container {
	max-width: 1000px;
	margin: 30px auto;
	background: #fff;
	padding: 20px 25px;
	border-radius: 10px;
	box-shadow: 0 4px 12px rgba(0, 0, 0, 0.1);
}

h1 {
	text-align: center;
	color: #333;
	margin-bottom: 25px;
}

/* Table Styling */
table {
	width: 100%;
	border-collapse: collapse;
}

th, td {
	padding: 12px;
	text-align: center;
	border-bottom: 1px solid #ddd;
}

th {
	background-color: #007bff;
	color: white;
	text-transform: uppercase;
}

tr:hover {
	background-color: #f1f1f1;
}

input[type="radio"] {
	transform: scale(1.2);
}

/* Buttons */
.btn {
	padding: 8px 15px;
	border: none;
	border-radius: 5px;
	cursor: pointer;
	font-size: 14px;
}

.btn-edit {
	background-color: #28a745;
	color: white;
}

.btn-edit:hover {
	background-color: #218838;
}

.btn-delete {
	background-color: #dc3545;
	color: white;
}

.btn-delete:hover {
	background-color: #c82333;
}

.btn-add {
	background-color: #17a2b8;
	color: white;
	margin-bottom: 15px;
}

.btn-add:hover {
	background-color: #138496;
}

/* Footer */
footer {
	background-color: #343a40;
	color: white;
	text-align: center;
	padding: 15px 20px;
	margin-top: 30px;
	font-size: 14px;
}
</style>

<script type="text/javascript">
    function deletuser() {
        document.fn.action = "delete";
        document.fn.submit();
    }

    function edituser() {
        document.fn.action = "edit";
        document.fn.submit();
    }

    function addUser() {
        window.location.href = "register"; // Redirect to registration page
    }
</script>
</head>
<body>

	<header> Student Management System </header>

	<nav>
		<a href="dashboard">Dashboard</a> <a href="#" onclick="addUser()">Add
			New Student</a>
	</nav>

	<div class="container">
		<h1>Student Records</h1>

		<button type="button" class="btn btn-add" onclick="addUser()">+
			Add New Student</button>

		<form name="fn">
			<table>
				<tr>
					<th>Select</th>
					<th>Roll No</th>
					<th>Name</th>
					<th>Marks</th>
					<th>Username</th>
					<th>Password</th>
					<th colspan="2">Action</th>
				</tr>

				<c:forEach items="${student}" var="s">
					<tr>
						<td><input type="radio" name="rollno" value="${s.rollno}"></td>
						<td>${s.rollno}</td>
						<td>${s.sname}</td>
						<td>${s.marks}</td>
						<td>${s.username}</td>
						<td>${s.password}</td>
						<td><button type="button" class="btn btn-edit"
								onclick="edituser()">Edit</button></td>
						<td><button type="button" class="btn btn-delete"
								onclick="deletuser()">Delete</button></td>
					</tr>
				</c:forEach>
			</table>
		</form>
	</div>

	<footer>
		&copy; Collage Students. All Rights Reserved. | Contact: 9011878821 <a
			href="mailto:rohanjadhav4724@gmail.com"
			style="color: #17a2b8; text-decoration: none;">rohanjadhav4724@gmail.com</a>
	</footer>


</body>
</html>
