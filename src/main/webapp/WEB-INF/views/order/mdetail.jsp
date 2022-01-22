<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

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
<jsp:include page="../header.jsp" />
<jsp:include page="../sidebar.jsp" />

<body>
	<div class="container">
		<h3>주문내역 확인</h3> <br>
		<table class="table">
			<tr>
				<th>제품번호</th>
				<th>제품수량</th>
				<th>제품가격</th>
				<th>배송상태</th>
				<th>결제일</th>
			</tr>
			<c:forEach items="${olist}" var="vo">

				<tr>
					<td>${vo.item_no}</td>
					<td>${vo.ea}</td>
					<td>${vo.price}</td>
					<td>${vo.status}</td>
					<td><fmt:formatDate value="${vo.order_date}" pattern="yyyy-MM-dd HH:mm" /></td>
				</tr>

			</c:forEach>
		</table>
	</div>
	<jsp:include page="../footer.jsp" />
</body>
</html>