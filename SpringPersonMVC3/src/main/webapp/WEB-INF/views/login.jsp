<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Ureca Portal</title>
<style>
/* Basic CSS for styling */
body {
	font-family: Arial, sans-serif;
	background-color: #f0f0f0;
}

.container {
	max-width: 400px;
	margin: 0 auto;
	background-color: #fff;
	padding: 20px;
	border-radius: 5px;
	box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
	margin-top: 50px;
}

input[type=text], input[type=password] {
	width: 100%;
	padding: 10px;
	margin: 8px 0;
	display: inline-block;
	border: 1px solid #ccc;
	border-radius: 4px;
	box-sizing: border-box;
}

input[type=submit] {
	background-color: blue;
	color: white;
	padding: 14px 20px;
	margin: 8px 0;
	border: none;
	border-radius: 4px;
	cursor: pointer;
	width: 100%;
}

input[type=submit]:hover {
	background-color: #45a049;
}
</style>
</head>
<body>
	<c:if test="${not empty success}">
		<script type="text/javascript">
			alert("${success}")
		</script>
	</c:if>
	<c:if test="${not empty error}">
		<script type="text/javascript">
			alert("${error}")
		</script>
	</c:if>

	<div class="container">
		<h2>Login</h2>
		<form action="login" method="post">
			<label for="id">ID</label> <input type="text" id="id" name="id"
				required> <label for="password">PW</label> <input
				type="password" id="password" name="password" required> <input
				type="submit" value="Login">
		</form>
	</div>
</body>
</html>