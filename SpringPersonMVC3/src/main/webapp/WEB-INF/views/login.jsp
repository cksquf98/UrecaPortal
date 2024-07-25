<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Ureca Portal</title>
<style>
	@import url('https://fonts.googleapis.com/css2?family=Jua&display=swap');
body {
	font-family: "Jua", sans-serif;
	font-weight: 400;
	font-style: normal;
	background-size: contain;
	color: #ff69b4;
	margin: 20%;
	background: white url("../../img/login_signup.png") no-repeat center;
}

	.container {
		max-width: 400px;
		background-color: rgba(255, 255, 255, 0.8);
		padding: 20px;
		border-radius: 10px;
		box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
		margin: 100px auto 0;
		text-align: center;
	}

	h2 {
		color: #ff69b4;
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
		background-color: #ff69b4;
		color: white;
		padding: 14px 20px;
		margin: 8px 0;
		border: none;
		border-radius: 4px;
		cursor: pointer;
		width: 100%;
		font-family: "Jua", sans-serif;
		font-weight: 400;
		font-style: normal;
	}

	input[type=submit]:hover {
		background-color: #ff1493;
	}

	label {
		color: #ff69b4;
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
		<img src="../../img/ureca_logo.png" alt="URECA Logo" class="logo">
		<h2>Login</h2>
		<form action="login" method="post">
			<label for="id">ID</label> <input type="text" id="id" name="id"
				required> <label for="password">PW</label> <input
				type="password" id="password" name="password" required> <input
				type="submit" value="Login">
		</form>
	</div>
</body>
<script>
	console.log(window.innerWidth);
	console.log(window.innerHeight);

</script>
</html>
