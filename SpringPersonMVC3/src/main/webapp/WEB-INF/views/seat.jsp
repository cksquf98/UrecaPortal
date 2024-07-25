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
	<div>
		자리
		<c:if test="${ !empty seats }">
			<table border="1" id="seatTable">
				<c:forEach items="${seats}" var="seat" varStatus="loop">
					<c:if test="${loop.index % 4 == 0}">
						<tr>
					</c:if>
					<td>${seat.leftseat}<br /> ${seat.rightseat}
					</td>
					<c:if test="${loop.index % 4 == 3 or loop.last}">
						</tr>
					</c:if>
				</c:forEach>
			</table>
		</c:if>

		<button onclick="changeSeat()">자리 변경하기</button>
		<button onclick="changeConfirm()">저장하기</button>
</body>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script>
	function changeSeat() {
		$.ajax({
			type : "POST",
			url : "change",
			dataType : "json",
			success : function(data) {
				console.log("Success: ", data);
				// Update the HTML table with seatMembers data
				updateTable(data);
			},
			error : function(xhr, status, error) {
				console.error("Error: ", error);
				// Handle error if needed
			}
		});
	}

	function updateTable(seatMembers) {
		var tableHtml = '<table border="1">';
		var numColumns = 4;

		for (var i = 0; i < seatMembers.length; i += 2) {
			if (i % (numColumns * 2) === 0) {
	            tableHtml += '<tr>'; // Start a new row when starting a new set of columns
	        }

			var leftseat = seatMembers[i].name !== undefined ? seatMembers[i].name
					: '  ';
			console.log(leftseat);

			var rightseat = seatMembers[i + 1].name !== undefined ? seatMembers[i + 1].name
					: '  ';
			console.log(rightseat);

			
			tableHtml += '<td>' + leftseat + '<br>' + rightseat + '</td>';

			if (i % (numColumns * 2) === (numColumns * 2) - 2 || i === seatMembers.length - 1) {
	            tableHtml += '</tr>'; // Close the row after the last cell in a set of columns or at the end of seatMembers
	        }

			// Ensure the table closes properly
			tableHtml += '</table>';

			// Replace the content of the seatTable div with the updated tableHtml
			$('#seatTable').html(tableHtml);
		}
	}
</script>
</html>