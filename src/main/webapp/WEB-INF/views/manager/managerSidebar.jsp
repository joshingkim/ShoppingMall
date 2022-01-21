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
<title>Insert title here</title>
</head>
<body>




	<div class="container-fluid">
		<div class="row">
			<nav id="sidebarMenu"
				class="col-md-3 col-lg-2 d-md-block  sidebar collapse">
				<div class="sidebar-sticky pt-3">


					<h6
						class="sidebar-heading d-flex justify-content-between align-items-center px-3 mt-4 mb-1 text-light font-weight-bord">
						<span>Stats Menu</span> <a
							class="d-flex align-items-center text-muted" href="#"
							aria-label="Add a new report"> <span
							data-feather="plus-circle"></span>
						</a>
					</h6>
					<ul class="nav flex-column">
						<li class="nav-item"><a
							class="nav-link active text-light font-weight-bord"
							href="/manager/calendar"> <span data-feather="home"></span>
								매출 달력 <span class="sr-only">(current)</span>
						</a></li>
						<li class="nav-item"><a
							class="nav-link text-light font-weight-bord"
							href="/manager/saleRank"> <span data-feather="file"></span>
								이달의 판매량 순위
						</a></li>
						<li class="nav-item "><a
							class="nav-link text-light font-weight-bord"
							href="/manager/likeRank"> <span data-feather="shopping-cart"></span>
								인기(찜) 순위
						</a></li>
						<li class="nav-item"><a
							class="nav-link text-light font-weight-bord"
							href="/manager/keywordRank"> <span data-feather="users"></span>
								검색어 순위
						</a></li>
						<li class="nav-item"><a
							class="nav-link text-light font-weight-bord"
							href="/manager/ageRank"> <span data-feather="bar-chart-2"></span>
								연령대별 회원 수
						</a></li>
						<li class="nav-item"><a
							class="nav-link text-light font-weight-bord"
							href="/manager/categoryRank"> <span data-feather="layers"></span>
								카테고리별 판매1위 품목
						</a></li>
					</ul>

					<h6
						class="sidebar-heading d-flex justify-content-between align-items-center px-3 mt-4 mb-1 text-light font-weight-bord">
						<span>Saved reports</span> <a
							class="d-flex align-items-center text-muted" href="#"
							aria-label="Add a new report"> <span
							data-feather="plus-circle"></span>
						</a>
					</h6>
					<ul class="nav flex-column mb-2">
						<li class="nav-item"><a
							class="nav-link text-light font-weight-bord" href="/fnq/list">
								<span data-feather="file-text"></span> 자주 묻는 질문
						</a></li>

					</ul>
				</div>
			</nav>
</body>
</html>