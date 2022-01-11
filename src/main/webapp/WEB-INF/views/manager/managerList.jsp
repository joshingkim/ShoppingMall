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
<title>경영자리스트</title>
</head>
<body>
<div class="container mt-5">
<table class="table">
  <thead>
    <tr>
      <th scope="col">관리자 아이디</th>
      <th scope="col">관리자 이름</th>
      <th scope="col">관리자 이메일</th>
      <th scope="col">관리자 핸드폰 번호</th>
      <th scope="col">코드</th>
    </tr>
  </thead>
  <tbody>
			<c:forEach items="${managerList}" var="vo">
				<tr>
					<td><a href="/manager/read/${vo.manager_id}">${vo.manager_id}</a></td>
					<td>${vo.manager_name}</td>
					<td>${vo.manager_email}</td>
					<td>${vo.manager_phone}</td>
					<td>
				${vo.manager_code } &nbsp;&nbsp;
					
					
  	

    



					
					</td>
				</tr>
			</c:forEach>
		</tbody>
</table>

</div>









</body>
</html>