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
			margin: 0;
			padding: 0;
			font-family: "Jua", sans-serif;
			font-weight: 400;
			font-style: normal;
			background-color: white;
			display: flex;
			flex-direction: column;
			height: 100vh;
		}
		#banner {
			background-image: url("");
			background-size: cover;
			background-repeat : no-repeat;
			background-position: center;
			width: 100%;
			height: auto;
			text-align: center;
			flex: 1;
			display: flex;
			justify-content: center;
			align-items: center;
			font-size: 98px;
			color : #FF36B5;
		}
		#content {
			text-align: center;
			background-color: white;
			margin : 50px;
			color: #FF36B5;
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
			font-family: "Jua", sans-serif;
			font-weight: 400;
			font-style: normal;
			font-size: 18px;
			color : #FF36B5;
		}
		.buttons button:hover {
			font-family: "Jua", sans-serif;
			background-color: #f0f0f0;
			border-color: #FF36B5;
		}
	</style>
</head>
<body>
<img src="../../img/ureca_logo.png" alt="URECA Logo" class="logo" style="max-width: 150px; height: auto; margin-bottom: 20px;">
<div id="banner">

</div>
<div id="content">
	<div id="message">
		로그인 후 이용 가능합니다.
	</div>
	<div class="buttons">
		<button onclick="login()">로그인</button>
		<button onclick="signup()">회원가입</button>
	</div>
</div>
</body>
<script type="text/javascript">
	function login() {
		location.href = "login";
	}

	function signup() {
		location.href = "signup";
	}
	console.log(document.getElementById('banner').offsetWidth, document.getElementById('banner').offsetHeight);
</script>
</html>
