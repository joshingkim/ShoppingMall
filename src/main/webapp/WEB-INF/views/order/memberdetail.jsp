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
		<h2>주문내역</h2>


		<div class="wrap-detail">
			<form action="/exchangeRefund/requestpage">

				<table class="table">
					<thead>
						<tr>
							<th>제품번호</th>
							<th>제품수량</th>
							<th>제품가격</th>
							<th>배송상태</th>
							<th>결제일</th>
							<th>비고</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${olist}" var="ovo">
							<input type="hidden" name="member_id" value="${mvo.member_id}">
							<input type="hidden" name="order_id" value="${ovo.order_id}">
							<input type="hidden" name="price" value="${ovo.price}">
							<input type="hidden" name="order_date" value="${ovo.order_date}">
							<input type="hidden" name="ea" value="${ovo.ea}">
							<tr class="stat">
								
								<td>${ovo.item_no}</td>
								<td>${ovo.ea}</td>
								<td>${ovo.price}</td>
								<td>${ovo.status}</td>
								<td>${ovo.order_date}</td>
								<td><c:if test="${ovo.status == '상품 준비중'}">
										<button data-ea="${ovo.ea}"
											data-order_date="${ovo.order_date}" data-price="${ovo.price}"
											data-member_id="${ovo.member_id}"
											data-order_id="${ovo.order_id}" class="btn_cancel">주문취소</button>
										<button class="btn_ex_re">교환/환불</button>
									</c:if> <c:if test="${ovo.status == '교환' || ovo.status == '환불'}">
										<p>진행중</p>
									</c:if> <c:if test="${ovo.status == '배송완료'}">
										<button class="btn_ex_re">교환/환불</button>
									</c:if> <c:if
										test="${ovo.status == '교환완료' || ovo.status == '환불완료' || ovo.status == '취소'}">
										<p>완료</p>
									</c:if></td>

							</tr>
						</c:forEach>
					</tbody>
				</table>
			</form>
		</div>

	</div>




	<jsp:include page="../footer.jsp" />
	<script type="text/javascript">
	
$(document).ready(function() {

	$("table").on("click", ".btn_cancel",function(event){
		event.preventDefault();
		var order_id = $(this).attr("data-order_id");
		var member_id = $(this).attr("data-member_id");
		var order_date = $(this).attr("data-order_date");
		var price = $(this).attr("data-price");
		var ea = $(this).attr("data-ea");
		$.ajax({
			type : "POST",
			url : "/exchangeRefund/insertExRefund",
			dataType : "text",
			data : {
				exchange_refund_content : '취소',
				exchange_refund_code : 2,
				order_id : order_id,
				member_id : member_id,
				order_date : order_date,
				price : price,
				ea : ea
			},
			success : function(result){
				window.location.reload();
			}
			
		});
	});
	
	$(".btn_ex_re").click(function(){
		$("form").submit;
	});
	
});



</script>



</body>
</html>