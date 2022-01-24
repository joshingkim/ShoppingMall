<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>


</head>
<body>
	<jsp:include page="../manager/managerHeader.jsp" />








	<br>
	<br>
	<div class="container bg-light text-dark">

		<br>
		<br>
		<h4 class="mb-3">DAPAN&DA 관리자 계정 생성</h4>
		<form action="/manager/insert" method="post">
			<div class="col-sm-8 row">
				<div class="col-sm-8">
					<label for="name" class="form-label">아이디 </label>
					<button id="idcheck" class="btn btn-info btn-sm">중복검사</button>
					<p id="idCheckResult"></p>
					<input type="text" name="manager_id" class="form-control"
						placeholder="id" maxlength="15">
				</div>



			</div>


			<div class="col-8">
				<label for="username" class="form-label">비밀번호</label>
				<div class="input-group has-validation">

					<input type="password" class="form-control" name="manager_pw"
						placeholder="password" required="required" maxlength="15">

				</div>
			</div>

			<div class="col-8">
				<label for="text" class="form-label">이름 </label> <input
					type="text" class="form-control" name="manager_name"
					placeholder="name" required="required" maxlength="25">

			</div>

			<div class="col-8">
				<label for="address" class="form-label">핸드폰 번호</label> <input
					type="number" class="form-control" name="manager_phone"
					placeholder="- 제외하고 숫자만" required="required" min='9' max='15'>

			</div>

			<div class="col-8">
				<label for="address2" class="form-label">이메일</label> <input
					type="email" class="form-control" name="manager_email"
					placeholder="you@examplpe.com" required="required" maxlength="30">
			</div>
			<input type="hidden" name="manager_code" value=1> <br> <input
				type="submit" class="btn btn-success ml-3" value="관리자 계정 생성">

		</form>

		<hr class="my-4">
	</div>









	<script type="text/javascript">
		$(document).ready(function() {

			$("input[type='submit']").click(function() {

				alert("환영합니다.")
			});

			$("input[type='submit']").click(function(event) {
				event.preventDefault();
				var userid = $("[name='manager_id']").val();
				if (userid == '') {
					return;
				}

				var userpw = $("[name='manager_pw']").val();
				if (userpw == '') {
					return;
				}

				var username = $("[name='manager_name']").val();
				if (username == '') {
					return;
				}

				var email = $("[name='manager_email']").val();
				if (email == '') {
					return;
				}
				var phone = $("[name='manager_phone']").val();
				if (phone == '') {
					return;
				}

				$("form").submit();

			});

			$("#idcheck").click(function(event) {
				event.preventDefault();

				var manager_id = $("[name='manager_id']").val();

				if (manager_id == '') {
					$("[name ='manager_id']").focus();
				} else {
					$.ajax({
						type : 'post',
						url : '/manager/idcheck',
						data : {
							'manager_id' : manager_id
						},
						dataType : 'text',
						success : function(result) {

							$("p#idCheckResult").text(result);

						}
					});
				}

			})

		});
	</script>








	<jsp:include page="../manager/managerFooter.jsp" />
</body>
</html>