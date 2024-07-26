<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
		 pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Ureca Portal</title>
	<!-- Bootstrap CSS -->
	<link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
	<style>
		@font-face {
			font-family: 'Freesentation-9Black';
			src: url('https://fastly.jsdelivr.net/gh/projectnoonnu/2404@1.0/Freesentation-9Black.woff2') format('woff2');
			font-weight: 900;
			font-style: normal;
		}
		body {
			font-family: "Freesentation-9Black";
			font-style: normal;
			background-size: cover;
			background-color: #F5F5F5;
			margin-top: 60px; /* To avoid overlap with navbar */
			padding-top: 56px;
		}
		.container {
			max-width: 400px;
			background-color: rgba(255, 255, 255, 0.9);
			padding: 20px;
			border-radius: 10px;
			box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
			margin: 100px auto 0;
		}
		.container h2 {
			color: #ff1493;
		}
		.container label {
			color: #ff1493;
		}
		.container input[type=text],
		.container input[type=password] {
			width: 100%;
			padding: 10px;
			margin: 8px 0;
			display: inline-block;
			border: 1px solid #ccc;
			border-radius: 4px;
			box-sizing: border-box;
		}
		.container input[type=submit] {
			background-color: #ff1493;
			color: white;
			padding: 14px 20px;
			margin: 8px 0;
			border: none;
			border-radius: 4px;
			cursor: pointer;
			width: 100%;
		}
		.container input[type=submit]:hover {
			background-color: #ff1493;
		}
		.navbar {
			margin-bottom: 60px; /* Ensures navbar does not overlap content */
		}
	</style>
</head>
<body>
<nav class="navbar navbar-expand-lg navbar-light bg-light fixed-top">
	<div class="container">
		<a class="navbar-brand" href="memberHome" style="color: #ff1493; ">LG URECA</a>
		<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="navbarResponsive">
			<ul class="navbar-nav ml-auto">
				<li class="nav-item"><a class="nav-link" href=""></a></li>
				<li class="nav-item"><a class="nav-link" href=""></a></li>
			</ul>
		</div>
	</div>
</nav>

<c:if test="${not empty success}">
	<script type="text/javascript">
		alert("${success}");
	</script>
</c:if>
<c:if test="${not empty error}">
	<script type="text/javascript">
		alert("${error}");
	</script>
</c:if>

<div class="container">
	<form action="login" method="post">
		<div class="form-group">
			<label for="id">ID</label>
			<input type="text" class="form-control" id="id" name="id" required>
		</div>
		<div class="form-group">
			<label for="password">PW</label>
			<input type="password" class="form-control" id="password" name="password" required>
		</div>
		<input type="submit" class="btn btn-primary" value="Login">
	</form>
</div>

<!-- Bootstrap core JS -->
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.2/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
