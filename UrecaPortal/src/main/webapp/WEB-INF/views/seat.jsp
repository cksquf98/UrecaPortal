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
            font-family: 'Freesentation-9Black';
            font-weight: 400;
            font-style: normal;
        }

        /*.container {*/
        /*    margin-top: 80px; !* Space for fixed navbar *!*/
        /*}*/
        .table {
            border-collapse: collapse;
            width: 100%;
            table-layout: fixed; /* Fixed layout for uniform column widths */
        }

        .table th, .table td {
            border: 1px solid #dee2e6; /* Border color for cells */
            padding: 8px;
            text-align: center;
            overflow: hidden; /* Ensure content doesn't overflow */
            text-overflow: ellipsis; /* Truncate overflowed content with ellipsis */
        }

        .btn-custom {
            background-color: #ff1493;
            color: white;
            border: none;
            border-radius: 5px;
            padding: 10px 20px;
            cursor: pointer;
            font-family: 'Freesentation-9Black';
            font-size: 16px;
            margin-right: 10px;
        }

        .btn-custom:hover {
            background-color: #ff69b4;
        }

        .my-3 {
            text-align: center;
        }

        /* Ensure uniform cell heights */
        .table td, .table th {
            min-height: 50px; /* Adjust as needed */
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
                <li class="nav-item"><a class="nav-link" href="memberHome" style="color : #ff1493">돌아가기</a></li>
            </ul>
        </div>
    </div>
</nav>
<div class="container">
    <h3 class="my-4">자리</h3>
    <c:if test="${!empty seats}">
        <table class="table table-bordered" id="seatTable">
            <c:forEach items="${seats}" var="seat" varStatus="loop">
                <c:if test="${loop.index % 4 == 0}">
                    <tr>
                </c:if>
                <td data-seat-idx="${seat.seats_idx}" data-left-id="${seat.seat_owner1}" data-right-id="${seat.seat_owner2}">
                        ${seat.leftseat}<br />${seat.rightseat}
                </td>
                <c:if test="${loop.index % 4 == 3 or loop.last}">
                    </tr>
                </c:if>
            </c:forEach>
        </table>
    </c:if>

    <div class="my-3">
        <button class="btn btn-custom" onclick="changeSeat()">랜덤돌리기</button>
        <button class="btn btn-custom" onclick="changeConfirm()">저장하기</button>
    </div>
</div>

<!-- Bootstrap core JS -->
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.2/dist/js/bootstrap.bundle.min.js"></script>
<script>
    function changeSeat() {
        $.ajax({
            type: "POST",
            url: "change",
            dataType: "json",
            success: function(data) {
                console.log("Success: ", data);
                // Update the HTML table with seatMembers data
                updateTable(data);
            },
            error: function(xhr, status, error) {
                console.error("Error: ", error);
                // Handle error if needed
            }
        });
    }

    function updateTable(seatMembers) {
        var tableHtml = '<table class="table table-bordered" id="seatTable">';
        var numColumns = 4;

        for (var i = 0; i < seatMembers.length; i += 2) {
            if (i % (numColumns * 2) === 0) {
                tableHtml += '<tr>'; // Start a new row when starting a new set of columns
            }

            var leftseat = seatMembers[i] !== undefined ? seatMembers[i] : { name: '&nbsp;', member_idx: 0 };
            var rightseat = seatMembers[i + 1] !== undefined ? seatMembers[i + 1] : { name: '&nbsp;', member_idx: 0 };

            tableHtml += '<td data-seat-idx="' + (i / 2 + 1) + '" data-left-id="' + leftseat.member_idx + '" data-right-id="' + rightseat.member_idx + '">'
                + leftseat.name + '<br>' + rightseat.name + '</td>';

            if (i % (numColumns * 2) === (numColumns * 2) - 2 || i + 2 >= seatMembers.length) {
                tableHtml += '</tr>'; // Close the row after the last cell in a set of columns or at the end of seatMembers
            }
        }

        tableHtml += '</table>'; // Ensure the table closes properly

        // Replace the content of the seatTable div with the updated tableHtml
        $('#seatTable').replaceWith(tableHtml);
    }

    function changeConfirm() {
        var seatData = [];

        $('#seatTable td').each(function(index, element) {
            var seatIdx = $(element).data('seat-idx');
            var leftseatId = $(element).data('left-id');
            var rightseatId = $(element).data('right-id');

            seatData.push({
                seats_idx: seatIdx,
                seat_owner1: leftseatId,
                seat_owner2: rightseatId
            });
        });

        $.ajax({
            type: "POST",
            url: "confirm",
            contentType: "application/json",
            data: JSON.stringify(seatData),
            success: function(response) {
                console.log("Seats saved successfully.");
                // Handle success if needed
            },
            error: function(xhr, status, error) {
                console.error("Error saving seats: ", error);
                // Handle error if needed
            }
        });


        alert('저장완료');
    }

    function back() {
        location.href = "memberHome";
    }
</script>
</body>
</html>
