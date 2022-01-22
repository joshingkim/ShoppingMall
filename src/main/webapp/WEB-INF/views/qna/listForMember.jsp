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

</head>
<body>

	<jsp:include page="../header.jsp" />
	<jsp:include page="../sidebar.jsp" />
<div class="container" style=" font-size : small;">
<h4>리뷰 목록</h4>
	<table class="table">
		<thead>
			<tr>
				<th scope="col">#</th>
				<th scope="col">상품 번호</th>
				<th scope="col">QnA</th>
				<th scope="col">QnA 작성일</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${pt.list}" var="vo" varStatus="i">
				<tr>
					<td>${i.count}</td>
					<td><a style="text-decoration: none; color: #000;" href="/item/read/${vo.item_no}">${vo.item_no}</a></td>
					<td>${vo.qna_title}</td>
					<td>${vo.qna_regdate}</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
	<div style="margin-left: 40%">
	<jsp:include page="pageForMember.jsp" />
	</div>
</div>
	<jsp:include page="../footer.jsp" />




	<script type="text/javascript">

	</script>



</body>
</html>