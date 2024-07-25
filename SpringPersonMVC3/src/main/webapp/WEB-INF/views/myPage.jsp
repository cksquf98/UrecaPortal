<%@ taglib uri="jakarta.tags.core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Ureca Portal</title>
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
	<h3>My Page</h3>
	<form action="myPage" method="post">
		아이디 <input type="text" name="id" value="${member.id}" disabled><br>
		비밀번호 <input type="password" name="password" required><br>
		이름 <input type="text" name="name" value="${member.name}" required><br>
		핸드폰번호 <input type="text" name="phone" value="${member.phone}" required><br>
		사는곳 <input type="text" name="location" value="${member.location}" required><br>
		좌석번호 <input type="text" name="seat" value="${member.seat}" disabled><br>
		
		<button type="submit">수정하기</button>
	</form>
</body>
</html>