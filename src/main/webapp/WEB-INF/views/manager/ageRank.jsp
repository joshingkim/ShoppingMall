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

	var getName1 = ${getName1};
	var ageRank1 = ${ageRank1};
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
		<canvas id="myChart7"></canvas>
	</div>


	<script>
		const ctx7 = document.getElementById('myChart7').getContext('2d');
		const myChart7 = new Chart(ctx7, {
			type : 'bar',
			data : {
				labels : [ ("00년생~09년생 "), ("90년생~99년생 "), ("80년생~89년생 "),
						("70년생~79년생 "), ("60년생~69년생 "), ("50년생~59년생 "), ],
				datasets : [ {
					label : '인원수',
					data : [ ${ageRank[0].COUNTPEOPLE},
							${ageRank[1].COUNTPEOPLE},
							${ageRank[2].COUNTPEOPLE},
							${ageRank[3].COUNTPEOPLE},
							${ageRank[4].COUNTPEOPLE},
							${ageRank[5].COUNTPEOPLE} ],
					backgroundColor : [ 'rgba(255, 99, 132, 0.2)',
							'rgba(54, 162, 235, 0.2)',
							'rgba(255, 206, 86, 0.2)',
							'rgba(75, 192, 192, 0.2)',
							'rgba(153, 102, 255, 0.2)',
							'rgba(255, 159, 64, 0.2)' ],
					borderColor : [ 'rgba(255, 99, 132, 1)',
							'rgba(54, 162, 235, 1)', 'rgba(255, 206, 86, 1)',
							'rgba(75, 192, 192, 1)', 'rgba(153, 102, 255, 1)',
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