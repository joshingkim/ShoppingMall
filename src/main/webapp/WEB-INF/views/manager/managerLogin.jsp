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
	<jsp:include page="../manager/managerHeader.jsp" />
	<br>
	<br>
	<div class="container bg-light text-dark">

		<br>
		<br>
		<h4 class="mb-3">Please Sign In</h4>
		<form action="/manager/managerLogin" method="post">
			<div class="col-sm-8 row">
				<div class="col-sm-8">
					<label for="manager_id" class="form-label">아이디 </label> <input
						type="text" name="manager_id" class="form-control"
						placeholder="id" required="required" autofocus="autofocus" maxlength="15">
				</div>

			</div>

			<div class="col-sm-8 row">
				<div class="col-sm-8">

					<label for="manager_pw" class="form-label">비밀번호</label> <input
						type="password" class="form-control" name="manager_pw"
						placeholder="password" required="required" maxlength="15">

				</div>
			</div>





			<br> &nbsp; &nbsp; <input type="submit" class="btn btn-info"
				value="로그인">
		</form>


		<hr class="my-4">
	</div>

	<jsp:include page="../manager/managerFooter.jsp" />
</body>
</html>