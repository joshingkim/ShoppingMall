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

<style>
h1 {
	font-family: 'Corben', cursive;
	font-size: 6rem;
	color: white;
	letter-spacing: 0.1rem;
	text-shadow: 0px 3px 3px rgba(0, 0, 0, 0.66);
}

body {
	background: radial-gradient(ellipse at bottom, #1b2735 0%, #090a0f 100%);
	overflow-x: hidden;
	overflow-y: auto;
}
</style>


<title>관리자용 페이지</title>


</head>
<body>


	<div class="mx-5 mt-3 ">
		<h1 class="display-4 text-light">DAPAN & DA</h1>
		<p class="lead text-light">여기는 관리자, 경영자를 위한 페이지입니다.</p>
		<hr class="my-4" style="background-color: white;">

		<p class="text-light">
			<c:if test="${managerLogin != null }">${managerLogin.manager_id} 님, 환영합니다.</c:if>
			아래 메뉴 중 선택하십시오.
		</p>

		<a class="btn btn-light btn-lg" href="/">Home 바로가기</a> &nbsp; &nbsp;

		<c:if test="${managerLogin == null }">
			<a class="btn btn-light btn-lg" href="/manager/managerLogin">관리자/경영자
				로그인</a> &nbsp; &nbsp;
				</c:if>
				<c:if test="${managerLogin.manager_code == 2 }">
  <a class="btn btn-light btn-lg" href="/manager/insert">관리자 등록하기</a> &nbsp; &nbsp;
  
  </c:if>

		<c:if test="${managerLogin != null }">
			<a class="btn btn-light btn-lg" href="/manager/logout">로그아웃</a> &nbsp; &nbsp;
  <a class="btn btn-light btn-lg" href="/manager/managerList">관리자
				리스트</a> &nbsp; &nbsp;
  <a class="btn btn-light btn-lg" href="/manager/excel">주문 리스트(엑셀)
				다운받기</a> &nbsp; &nbsp;
  </c:if>

		<c:if test="${managerLogin.manager_code == 2}">
			<a class="btn btn-light btn-lg" href="/manager/managerPage">통계</a> &nbsp; &nbsp;
  </c:if>
	</div>


	<br>
	<br>
	<br>
	<div id="carouselExampleSlidesOnly " class="carousel slide"
		data-ride="carousel">
		<div class="carousel-inner">
			<div class="carousel-item active">
				<img src="/resources/img/manager00.jpg" class="d-block w-100"
					alt="...">
			</div>
			<div class="carousel-item">
				<img style="height: 550px;" src="/resources/img/manager02.jpg"
					class="d-block w-100" alt="...">
			</div>
			<div class="carousel-item">
				<img src="/resources/img/manager03.png" class="d-block w-100"
					alt="...">
			</div>
		</div>
	</div>



	<div class="container">
		<jsp:include page="../manager/managerFooter.jsp" />
	</div>


</body>
</html>