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
	var saleRank1 = $
	{
		saleRank1
	};
	var getName1 = $
	{
		getName1
	};
	console.log(saleRank1);
	console.log(getName1);
</script>

<title>이달의 판매량 순위</title>
</head>
<body>
	<jsp:include page="../manager/managerHeader.jsp" />
	<br>
	<br>
	<jsp:include page="../manager/managerSidebar.jsp" />


	<div class="container bg-light text-dark">
		<br>
		<canvas id="myChart4"></canvas>
		<br>
	</div>




	<script>
		const ctx4 = document.getElementById('myChart4').getContext('2d');
		const myChart4 = new Chart(
				ctx4,
				{
					type : 'bar',
					data : {
						labels : [
								("1위 " + getName1[saleRank1[0].ITEM_NO - 1].ITEM_NAME),
								("2위 " + getName1[saleRank1[1].ITEM_NO - 1].ITEM_NAME),
								("3위 " + getName1[saleRank1[2].ITEM_NO - 1].ITEM_NAME),
								("4위 " + getName1[saleRank1[3].ITEM_NO - 1].ITEM_NAME),
								("5위 " + getName1[saleRank1[4].ITEM_NO - 1].ITEM_NAME),
								("6위 " + getName1[saleRank1[5].ITEM_NO - 1].ITEM_NAME), ],
						datasets : [ {
							label : (date.getMonth() + 1 + '월 판매량 순위'),
							data : [ (saleRank1[0].ORDERQUNTITY),
									(saleRank1[1].ORDERQUNTITY),
									(saleRank1[2].ORDERQUNTITY),
									(saleRank1[3].ORDERQUNTITY),
									(saleRank1[4].ORDERQUNTITY),
									(saleRank1[5].ORDERQUNTITY), ],
							backgroundColor : [ 'rgba(255, 99, 132, 0.2)'

							],
							borderColor : [ 'rgba(255, 99, 132, 1)'

							],
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