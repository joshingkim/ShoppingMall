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
<br><br>
	<div class="container bg-light text-light">

		<br>
		<br>
		<h4 class="mb-3">정보 수정</h4>
		<form action="/manager/update" method="post">
			<div class="col-sm-8 row">
				<div class="col-sm-8">
					<label for="name" class="form-label">아이디 </label> <input
						type="text" name="manager_id" class="form-control"
						value="${vo.manager_id }" readonly>
				</div>
			</div>



			<div class="col-8">
				<label for="manager_name" class="form-label">이름 </label> <input
					type="text" class="form-control" name="manager_name"
					value="${vo.manager_name }" required="required" maxlength="25">

			</div>

			<div class="col-8">
				<label for="manager_email" class="form-label">이메일</label> <input
					type="tel" class="form-control" name="manager_email"
					value="${vo.manager_email }" required="required" maxlength="30">

			</div>

			<div class="col-8">
				<label for="manager_phone" class="form-label">핸드폰번호</label> <input
					type="number" class="form-control" name="manager_phone"
					value="${vo.manager_phone }" required="required" min='9' max='15'>
			</div>


			<br> <input type="submit" class="btn btn-outline-success float-right" value="수정완료"><br>
		</form>


		<hr class="my-4">
	</div>





	<jsp:include page="../manager/managerFooter.jsp" />

</body>
</html>