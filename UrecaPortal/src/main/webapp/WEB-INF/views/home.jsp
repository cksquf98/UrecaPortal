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
			margin: 150px;
			padding: 0;
			font-family: 'Freesentation-9Black';
			font-weight: 400;
			font-style: normal;
			background-color: #F5F5F5;
			display: flex;
			flex-direction: column;
			height: 100vh;
		}

		#content {
			text-align: center;
			background-color: #F5F5F5;
			margin : 50px;
			color: #ff1493;
			font-size: 18px;
			flex: 1;
			display: flex;
			flex-direction: column;
			justify-content: center;
			align-items: center;
		}
		#message {
			font-size : 30px;
			margin-bottom: 40px;
		}
		.buttons {
			display: flex;
			justify-content: center;
			gap: 20px;
		}
		.buttons button {
			background-color: white;
			border: 2px solid #FF36B5;
			padding: 15px 40px;
			cursor: pointer;
			border-radius: 5px;
			transition: background-color 0.3s, border-color 0.3s;
			font-family: 'Freesentation-9Black';
			font-weight: 400;
			font-style: normal;
			font-size: 18px;
			color : #FF36B5;
		}
		.buttons button:hover {
			font-family: "Freesentation-9Black";
			background-color: #f0f0f0;
			border-color: #FF36B5;
		}
	</style>
</head>
<body>
<!-- Navigation-->
<nav class="navbar navbar-expand-lg navbar-light bg-light fixed-top">
	<div class="container">
		<a class="navbar-brand" href="memberHome" style="color : #ff1493">LG URECA</a>
		<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="navbarResponsive">
			<ul class="navbar-nav ml-auto">
				<li class="nav-item"><a class="nav-link" href="login" style="color : #ff1493">로그인</a></li>
				<li class="nav-item"><a class="nav-link" href="signup" style="color : #ff1493">회원가입</a></li>
			</ul>
		</div>
	</div>
</nav>
<div id="content">
	<div id="message">
		로그인 후 이용 가능합니다.
	</div>
	<div class="image-container">
		<img src="../../img/ureca_description.png" alt="유레카 설명 이미지">
		<img src="../../img/ureca_edu.png" alt="교육 안내 이미지">

	</div>
</div>
</div>
</body>
<!-- Bootstrap core JS-->
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.2/dist/js/bootstrap.bundle.min.js"></script>
<script type="text/javascript"></script>
</html>
