<%@ taglib uri="jakarta.tags.core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
		 pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Ureca Portal</title>
	<!-- Bootstrap CSS -->
	<link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
	<!-- Custom CSS -->
	<link href="https://startbootstrap.github.io/startbootstrap-landing-page/css/styles.css" rel="stylesheet">
	<style>
		@font-face {
			font-family: 'Freesentation-9Black';
			src: url('https://fastly.jsdelivr.net/gh/projectnoonnu/2404@1.0/Freesentation-9Black.woff2') format('woff2');
			font-weight: 900;
			font-style: normal;
		}
		body {
			font-family: "Freesentation-9Black", sans-serif;
			font-weight: 400;
			font-style: normal;
		}
		.table {
			border-collapse: collapse;
			width: 100%;
			text-align: center;
		}
		.table td, .table th {
			border: 1px solid #dee2e6; /* Border color for cells */
			padding: 8px;
			text-align: center;
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
				<li class="nav-item"><a class="nav-link" href="seat" style="color : #ff1493">자리 변경</a></li>
				<li class="nav-item"><a class="nav-link" href="myPage" style="color : #ff1493">마이페이지</a></li>
			</ul>
		</div>
	</div>
</nav>
<!-- Masthead-->
<header class="masthead text-white text-center" style="background-color: #EC008B;">
	<div class="container">
		<h1 class="masthead-heading mb-0">LG URECA 교육과정</h1>
		<h3>프론트 대면반</h3>
	</div>
</header>
<!-- Main Content-->
<section class="page-section">
	<div class="container">
		<div class="row justify-content-center">
		</div>
		<div class="row">
			<div class="col-lg-6">
				<div class="table-responsive">
					<c:if test="${ !empty members }">
						<table class="table custom-table">
							<thead>
							<tr>
								<th>번호</th>
								<th>이름</th>
								<th>폰번호</th>
								<th>좌석번호</th>
								<th>사는곳</th>
							</tr>
							</thead>
							<tbody>
							<c:forEach items="${members}" var="member" varStatus="loop">
								<tr>
									<td>${loop.index + 1}</td>
									<td>${member.name}</td>
									<td>${member.phone}</td>
									<td>${member.seat}</td>
									<td>${member.location}</td>
								</tr>
							</c:forEach>
							</tbody>
						</table>
					</c:if>
					<c:if test="${ empty members }">
						<p class="text-center">등록된 회원이 없습니다.</p>
					</c:if>
				</div>
			</div>
			<div class="col-lg-6">
				<div class="table-responsive">
					<c:if test="${ !empty seats }">
						<table class="table custom-table">
							<thead>
							<tr>
								<th>좌석</th>
							</tr>
							</thead>
							<tbody>
							<c:forEach items="${seats}" var="seat" varStatus="loop">
								<c:if test="${loop.index % 4 == 0}">
									<tr>
								</c:if>
								<td>${seat.leftseat}<br/>${seat.rightseat}</td>
								<c:if test="${loop.index % 4 == 3 or loop.last}">
									</tr>
								</c:if>
							</c:forEach>
							</tbody>
						</table>
					</c:if>
					<c:if test="${ empty seats }">
						<p class="text-center">등록된 자리가 없습니다.</p>
					</c:if>
				</div>
			</div>
		</div>
	</div>
</section>
<!-- Bootstrap core JS-->
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.2/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
