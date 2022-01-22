<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>



<!DOCTYPE html>
<html>
<meta charset="utf-8">
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<!-- fullcalendar CDN -->
<link
	href='https://cdn.jsdelivr.net/npm/fullcalendar@5.8.0/main.min.css'
	rel='stylesheet' />
<script
	src='https://cdn.jsdelivr.net/npm/fullcalendar@5.8.0/main.min.js'></script>
<!-- fullcalendar 언어 CDN -->
<script
	src='https://cdn.jsdelivr.net/npm/fullcalendar@5.8.0/locales-all.min.js'></script>
<script
	src='https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.29.1/moment.min.js'></script>
<script
	src='https://cdnjs.cloudflare.com/ajax/libs/sql.js/1.6.1/sql-wasm.js'></script>



<script>
	var date = new Date();

	var likeRank1 = ${likeRank1};
	var getName1 = ${getName1};

	console.log(likeRank1);
	console.log(getName1);
</script>

















<title>경영자용 페이지</title>
</head>
<body>
	<jsp:include page="../manager/managerHeader.jsp" />
	<br>
	<br>
	<jsp:include page="../manager/managerSidebar.jsp" />

	<div class="container bg-light text-dark">
		<br>
		<canvas id="myChart5"></canvas>
	</div>

	<script>
		const ctx5 = document.getElementById('myChart5').getContext('2d');
		const myChart5 = new Chart(
				ctx5,
				{
					type : 'bar',
					data : {
						labels : [
							"${likeRank[0].ITEM_NAME}",
							"${likeRank[1].ITEM_NAME}",
							"${likeRank[2].ITEM_NAME}",
							"${likeRank[3].ITEM_NAME}",
							"${likeRank[4].ITEM_NAME}",
							"${likeRank[5].ITEM_NAME}", ],
						datasets : [ {
							label : '총 찜 횟수',
							data : [  ${likeRank[0].SUMITEMNO},
										${likeRank[1].SUMITEMNO},
										${likeRank[2].SUMITEMNO},
										${likeRank[3].SUMITEMNO},
										${likeRank[4].SUMITEMNO},
										${likeRank[5].SUMITEMNO}
									],
							
							backgroundColor : [ 'rgba(255, 99, 132, 0.2)',
									'rgba(54, 162, 235, 0.2)',
									'rgba(255, 206, 86, 0.2)',
									'rgba(75, 192, 192, 0.2)',
									'rgba(153, 102, 255, 0.2)',
									'rgba(255, 159, 64, 0.2)' ],
							borderColor : [ 'rgba(255, 99, 132, 1)',
									'rgba(54, 162, 235, 1)',
									'rgba(255, 206, 86, 1)',
									'rgba(75, 192, 192, 1)',
									'rgba(153, 102, 255, 1)',
									'rgba(255, 159, 64, 1)' ],
							borderWidth : 1
						} ]
					},
					options : {
						scales : {
							y : {
								beginAtZero : true
							}
						}
					}
				});
	</script>

	<jsp:include page="../manager/managerFooter.jsp" />
</body>
</html>