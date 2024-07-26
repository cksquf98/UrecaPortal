<%@ taglib uri="jakarta.tags.core" prefix="c"%>
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
            margin: 80px 200px;
            padding: 0;
            font-family: 'Freesentation-9Black';
            font-weight: 400;
            font-style: normal;
            background-color: #F5F5F5;
            display: flex;
            flex-direction: column;
            height: 100vh;
        }

        /*.container {*/
        /*    max-width: 600px;*/
        /*    background-color: rgba(255, 255, 255, 0.9);*/
        /*    padding: 30px;*/
        /*    border-radius: 10px;*/
        /*    box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);*/
        /*    margin: 20px auto;*/
        /*}*/

        /*.container h3 {*/
        /*    color: #ff1493;*/
        /*    margin-bottom: 20px;*/
        /*}*/

        /*.container label {*/
        /*    color: #ff1493;*/
        /*}*/

        h3 {
                color: #ff1493;
                margin-bottom: 20px;
        }
        .form-control {
            margin-bottom: 15px;
        }

        .btn-custom {
            background-color: #ff1493;
            color: white;
            border: none;
            border-radius: 4px;
            padding: 10px 20px;
            cursor: pointer;
            width: 100%;
        }

        .btn-custom:hover {
            background-color: #ff69b4;
        }

        .disabled-input {
            background-color: #e9ecef;
            cursor: not-allowed;
        }
    </style>
</head>
<body>
<!-- Navigation -->
<nav class="navbar navbar-expand-lg navbar-light bg-light fixed-top">
    <div class="container">
        <a class="navbar-brand" href="memberHome" style="color: #ff1493;">LG URECA</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarResponsive">
            <ul class="navbar-nav ml-auto">
                <li class="nav-item"><a class="nav-link" href="memberHome" style="color : #ff1493">돌아가기</a></li>
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
    <h3>My Page</h3>
    <form action="myPage" method="post">
        <div class="form-group">
            <label for="id">아이디</label>
            <input type="text" class="form-control disabled-input" id="id" name="id" value="${member.id}" readonly>
        </div>
        <div class="form-group">
            <label for="password">비밀번호</label>
            <input type="password" class="form-control" id="password" name="password" required>
        </div>
        <div class="form-group">
            <label for="name">이름</label>
            <input type="text" class="form-control" id="name" name="name" value="${member.name}" required>
        </div>
        <div class="form-group">
            <label for="phone">핸드폰번호</label>
            <input type="text" class="form-control" id="phone" name="phone" value="${member.phone}" required>
        </div>
        <div class="form-group">
            <label for="location">사는곳</label>
            <input type="text" class="form-control" id="location" name="location" value="${member.location}" required>
        </div>
        <div class="form-group">
            <label for="seat">좌석번호</label>
            <input type="text" class="form-control" id="seat" name="seat" value="${member.seat}" readonly>
        </div>
        <button type="submit" class="btn btn-custom">수정하기</button>
    </form>
</div>

<!-- Bootstrap core JS -->
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.2/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
