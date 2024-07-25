<%@ taglib uri="jakarta.tags.core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Ureca Portal</title>
<style>
	td {
		padding : 10px
	}
</style>
</head>
<body>
	<h3>Ureca 프론트 대면반</h3>
	<hr>
	<div>
	<c:if test="${ !empty members }">
		<table border="1">
			<tr>
				<th>번호</th>
				<th>이름</th>
				<th>폰번호</th> 
				<th>좌석번호</th>
				<th>사는곳</th>
			</tr>
			<c:forEach items="${members}" var="member" varStatus="loop">
				<tr>
					<td>${loop.index + 1}</td>
					<td>${member.name}</td>
					<td>${member.phone}</td>
					<td>${member.seat}</td>
					<td>${member.location}</td>
				</tr>
			</c:forEach>
		</table>
	</c:if>
	
	<c:if test="${ empty members }">  
      등록된 회원이 없습니다.
   </c:if>
   <div>
   자리
<c:if test="${ !empty seats }">
   <table border="1">
      <c:forEach items="${seats}" var="seat" varStatus="loop">   
         <c:if test="${loop.index % 4 == 0}">
            <tr>
         </c:if>
         <td>${seat.leftseat}<br/>
         ${seat.rightseat}</td>
         <c:if test="${loop.index % 4 == 3 or loop.last}">
            </tr>
         </c:if>
      </c:forEach>
   </table>
   
   <button onclick="changeSeat()">자리 변경하기</button>
   <button onclick="myPage()">마이페이지</button>
   </c:if>
   
   
   <c:if test="${ empty seats }">  
      등록된 자리가 없습니다.
   </c:if>
   </div>
</body>
<script type="text/javascript">
	function changeSeat() {
		location.href="seat"
	}
	
	function myPage() {
		location.href="myPage"
	}
	
</script>
</html>