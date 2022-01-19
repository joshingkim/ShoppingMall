<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Item List Of All</title>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
  <script src="/resources/js/file.js" type="text/javascript"></script>
</head>
<body>
	<jsp:include page="../header.jsp" />
	<jsp:include page="../sidebar.jsp" />
<div class="container" style=" font-size : small;">
	<h4>상품 리스트</h4>
	<a class="btn btn-outline-primary btn-sm" style="float: right;" href="/item/insert">상품등록</a>
	<table class="table">
		<thead>
			<tr>
				<th scope="col">no</th>
				<th scope="col">아이템</th>
				<th scope="col">카테고리</th>
				<th scope="col">사이즈</th>
				<th scope="col">컬러</th>
				<th scope="col">가격</th>
				<th scope="col">할인률</th>
				<th scope="col">재고 수량</th>
				<th scope="col">등록일</th>
				<th scope="col"></th>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${pt.list}" var="vo">
				<tr>
					<td scope="row">${vo.item_no}</td>
					<td><a style="text-decoration: none; color: #000;" href="/item/read/${vo.item_no}">${vo.item_name}</a></td>
					<td>${vo.item_category}</td>
					<td>${vo.item_size}</td>
					<td>${vo.item_color}</td>
					<td>${vo.item_price}</td>
					<td>${vo.discount_percentage}</td>
					<td>${vo.item_amount}</td>
					<td>${vo.item_regdate}</td>
					<td>
						<a class="btn btn-outline-primary btn-sm" href="/item/addItem/${vo.item_no}">추가</a>
						<a class="btn btn-outline-primary btn-sm" href="/item/update/${vo.item_no}">수정</a>
						<a class="btn btn-outline-primary btn-sm" data-item_no="${vo.item_no}" class="delete" href="/item/delete/${vo.item_no}">삭제</a>
					</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
	<div style="margin-left: 40%">
	<jsp:include page="pageofall.jsp" />
	</div>
</div>
<jsp:include page="../footer.jsp" />
<script type="text/javascript">
	$(document).ready(function(){
		
		$('.delete').click(function() { 
			var result = confirm('삭제 하시겠습니까?'); 
			if(result) { 
				var link = $(this).href;
				location.assign(link);
			} else { 
				event.preventDefault();
			} 
		}); 
	});
</script>
</body>
</html>