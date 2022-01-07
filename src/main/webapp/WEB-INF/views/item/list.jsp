<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</head>
<body>
	<table>
		<thead>
			<th>아이템 넘버</th>
			<th>아이템 명</th>
			<th>카테고리 명</th>
			<th>아이템 사이즈</th>
			<th>아이템 컬러</th>
			<th>아이템 가격</th>
			<th>할인률</th>
			<th>아이템 재고 수량</th>
			<th>아이템 등록일</th>
		</thead>
		<tbody>
			<c:forEach items="${pt.list}" var="vo">
				<tr>
					<td>${vo.item_no}</td>
					<td><a href="/item/read/${vo.item_no}">${vo.item_name}</a></td>
					<td>${vo.item_category}</td>
					<td>${vo.item_size}</td>
					<td>${vo.item_color}</td>
					<td>${vo.item_price}</td>
					<td>${vo.discount_percentage}</td>
					<td>${vo.item_amount}</td>
					<td>${vo.item_regdate}</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
	<jsp:include page="page.jsp" />
</body>
</html>