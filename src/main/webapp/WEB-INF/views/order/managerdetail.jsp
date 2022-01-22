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
  <style type="text/css">
  .btn_status{
  	border-radius: 5px;	
  }
  </style>
</head>
<body>
<jsp:include page="../header.jsp" />
	<jsp:include page="../sidebar.jsp" />

	
	
	
	<!-- 경영자, 운영자 배송조회 -->
	<div class="container">
		<h3>회원 주문 내역</h3>
		<table class="table">
			<tr>
				<th>회원아이디</th>
				<th>제품번호</th>
				<th>제품수량</th>
				<th>제품가격</th>
				<th>배송상태</th>
				<th>결제일</th>
				<th>배송상태변경</th>
			</tr>
			<c:forEach items="${ovo}" var="vo">
				<form action="order/manager/status">
					<input name="status" value="${vo.status}" type="hidden">

					<tr>
						<td>${vo.member_id}</td>
						<td>${vo.item_no}</td>
						<td>${vo.ea}</td>
						<td>${vo.price}</td>
						<td>${vo.status}</td>
						<td><fmt:formatDate value="${vo.order_date}"
								pattern="yyyy-MM-dd HH:ss" /></td>
						<td><select name="status" class="form-select">
								<option selected value="${vo.status}">${vo.status}</option>
								<option value="상품 준비중">상품준비중</option>
								<option value="배송중">배송중</option>
								<option value="배송완료">배송완료</option>
								<option value="교환완료">교환완료</option>
								<option value="환불완료">환불완료</option>
						</select>
							<button data-order_id="${vo.order_id}" type="button" class="btn_status btn-outline-secondary">변경</button>
						</td>
					</tr>
				</form>
			</c:forEach>
		</table>
	</div>


	<jsp:include page="../footer.jsp" />
<script type="text/javascript">
	var status = "";
	$(document).ready(function() {
		$("select[name=status]").change(function() {
			status = $(this).val();
		});
		
		$(".btn_status").click(function(event) {
			event.preventDefault();
			var order_id = $(this).attr("data-order_id");
			$.ajax({
				type : 'post',
				url : "/order/status/"+status+"/"+order_id,
				dataType : 'text',
				success : function(result){
					alert("상품상태가 변경 되었습니다");
				}
				
			});
		})
	});


</script>


</body>
</html>