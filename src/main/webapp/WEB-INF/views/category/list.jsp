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
	<table>
		<thead>
			<th>카테고리명</th>
			<th>아이템명</th>
			<th></th>
		</thead>
		<tbody>
			<c:forEach items="${pt.list}" var="vo">
				<tr>
					<td>${vo.item_category}</td>
					<td>${vo.item_name}</td>
					<td><a href="/category/update/${vo.item_name}">수정</a>/<a href="/category/delete/${vo.item_name}">삭제</a></td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
	<jsp:include page="page.jsp" />
</body>
</html>