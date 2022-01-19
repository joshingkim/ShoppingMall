<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>



<!DOCTYPE html>
<html>
 <meta charset="utf-8">
<head>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<title>Insert title here</title>
</head>
<body>
<jsp:include page="../manager/managerHeader.jsp" />
	<div class="container mt-5 bg-light text-dark">
		<table class="table">
			<thead>
				<tr>
					<th scope="col">관리자 아이디</th>
					<th scope="col">관리자 이름</th>
					<th scope="col">관리자 이메일</th>
					<th scope="col">관리자 핸드폰 번호</th>
					<th scope="col">코드/등급</th>
				</tr>
			</thead>
			<tbody>

				<tr>
					<td>${vo.manager_id}</td>
					<td>${vo.manager_name}</td>
					<td>${vo.manager_email}</td>
					<td>${vo.manager_phone}</td>
					<td>

						<div class="row">
							${vo.manager_code } &nbsp;&nbsp;


							<div class="form-row align-items-center">




								<c:if
									test="${vo.manager_id == managerLogin.manager_id || managerLogin.manager_code == 2 }">
									<a href="/member/update/${vo.manager_id }"
										class="btn btn-warning btn-sm">수정</a> &nbsp;

								<form action="/manager/managerDelete" method="post">
										<input type="hidden" name="manager_pw"
											value="${vo.manager_pw }"> <input type="hidden"
											name="manager_id" value="${vo.manager_id }"> <input
											type="submit" class="btn btn-danger btn-sm" value="탈퇴">
									</form>
								</c:if>
							</div>



						</div>


					</td>
				</tr>

			</tbody>
		</table>

	</div>



	<jsp:include page="../manager/managerFooter.jsp" />
</body>
</html>