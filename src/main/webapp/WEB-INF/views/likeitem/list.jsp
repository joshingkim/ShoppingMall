<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>좋아요 리스트</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</head>

<body>
	<jsp:include page="../header.jsp" />
	<jsp:include page="../sidebar.jsp" />
<div class="container" style=" font-size : small;">
<h4>좋아요 리스트</h4>
	<table class="table">
		<thead>
			<tr>
				<th scope="col">#</th>
				<th scope="col">카테고리명</th>
				<th scope="col">상품명</th>
				<th scope="col">가격</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${list}" var="vo" varStatus="i">
				<tr>
					<td>${i.count}</td>
					<td>${vo.item_category}</td>
					<td>${vo.item_name}</td>
					<td>${vo.item_price}</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
	<div style="margin-left: 40%">
	<jsp:include page="page.jsp" />
	</div>
</div>
	<jsp:include page="../footer.jsp" />

</body>

</html>

﻿
