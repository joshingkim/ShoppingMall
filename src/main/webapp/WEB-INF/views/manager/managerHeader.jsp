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



<style type="text/css">
body {
	background: radial-gradient(ellipse at bottom, #1b2735 0%, #090a0f 100%);
	overflow-x: hidden;
	overflow-y: auto;
}
</style>




</head>
<body>







	<nav class="navbar navbar-expand-lg navbar-light text-light">
		<span class="navbar-brand mb-0 h1 text-light ml-2"><a
			href="/manager/main" class="text-light text-decoration-none">DAPAN&DA</a></span>
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navbarNavDropdown" aria-controls="navbarNavDropdown"
			aria-expanded="false" aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="navbarNavDropdown">
			<ul class="navbar-nav">
				<li class="nav-item active"><a class="nav-link text-light"
					href="/manager/main">관리 Home<span class="sr-only">(current)</span></a>
				</li>
				<li class="nav-item active"><a class="nav-link text-light"
					href="/">메인 Home<span class="sr-only">(current)</span></a></li>
				<li class="nav-item"><a class="nav-link text-light"
					href="/manager/managerList">관리자 리스트</a></li>
				<li class="nav-item"><c:if
						test="${managerLogin.manager_code == 2 }">
						<a class="nav-link text-light" href="/manager/calendar">
							통계</a>
					</c:if></li>
			</ul>
		</div>
	</nav>

	<nav
		class="navbar navbar-light bg-light sticky-top  flex-md-nowrap p-0 text-dark font-weight-bord">

		<span class="navbar-brand ml-4 h3"> <c:if
				test="${managerLogin.manager_id != null }">
  ${managerLogin.manager_id } 님, 환영합니다.
  </c:if>
		</span>

	</nav>







</body>
</html>