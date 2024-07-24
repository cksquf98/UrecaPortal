<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Ureca Portal</title>
</head>
<body>
	<div class="banner">
	Welcome to Ureca Portal!
	</div>
	<div>
	로그인 후 이용 가능합니다아아
	</div>
	<button onclick="login()">로그인</button>
	<button onclick="signup()">회원가입</button>
	
</body>
<script type="text/javascript">
	function login() {
		location.href = "login"
	}
	
	function signup() {
		location.href = "signup"
	}
</script>
</html>