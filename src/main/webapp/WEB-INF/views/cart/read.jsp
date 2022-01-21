<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</head>
<body class="cart_body">
	<jsp:include page="../header.jsp" />
	<jsp:include page="../sidebar.jsp" />
	<div class="container" id="frame">
		<form action="">
			<div id="frame2">
				<span style="font-size: 20pt; font-weight: bold;">장바구니</span> <span
					class="home">홈 > 장바구니</span>
			</div>
			<br />

			<div>
				<table class="table">
					<thead>
						<tr>
							<th id="t_head_1" colspan="10" style="text-align: left; padding-left: 10px;">장바구니 상품</th>
						</tr>
						<tr>
							<th  style="width: 500px"><span>상품명</span></th>
							<th>할인가(판매가)</th>
							<th>수량</th>
							<th>합계</th>
							<th>선택</th>
						</tr>
					</thead>

					<tbody>
					
						<c:forEach items="${map.ilist}" var="item">
							<c:set var="isTrue" value="true"/>
							<tr>
								<td><span class="itemnamez"></span></td>
								<td><span> <c:forEach items="${map.list}" var="cart">
											<c:if test="${cart.item_no==item.item_no && isTrue}">
												<span class="dprice">${(100-item.discount_percentage)*item.item_price/100}</span>(${item.item_price})
													<c:set var="isTrue" value="false"/>
                               			</c:if>
										</c:forEach>
								</span>원</td>
								<td>
									<c:set var="isTrue" value="true"/>
								<c:forEach items="${map.list}" var="cart">
										<c:if test="${cart.item_no==item.item_no && isTrue}">
											<input name="cart_quantity" type="number"
												data-itemno="${cart.item_no}" min="1" max="99" step="1"
												value="${cart.cart_quantity}">
											<br>
											<c:set var="isTrue" value="false"/>
										</c:if>
									</c:forEach></td>

								<td>
								<c:set var="isTrue" value="true"/>
								<c:forEach items="${map.list}" var="cart">
										<c:if test="${cart.item_no==item.item_no && isTrue}">
											<span class="isum">${((100-item.discount_percentage)*item.item_price/100)*cart.cart_quantity}</span>
											<c:set var="isTrue" value="false"/>
										</c:if>
										
									</c:forEach></td>
								<td>
								<c:set var="isTrue" value="true"/>
									<c:forEach items="${map.list}" var="cart">
										<c:if test="${cart.item_no==item.item_no && isTrue}">
											<button data-citem_no="${cart.cart_no}" class="btn default del">삭제</button><br>
									<c:set var="isTrue" value="false"/>
								</c:if>
									</c:forEach></td>
							</tr>
						</c:forEach>
					</tbody>
				</table>

				<table class="cart_footer">
					<tr>
							<th style="padding: 20px 0; font-size: 15px; font-weight: bold;"><span>결제금액</span></th>
							<td colspan="2"><span id ="totalprice">원</span></td>
					</tr>
				</table>
			</div>
		</form>
		<div style="margin-left: 80%">
		<button id="order" class="order">주문하기</button>
		</div>
		<div style="margin-left: 40%">
		<jsp:include page="page.jsp"></jsp:include>
		</div>
	</div>

<jsp:include page="../footer.jsp" />
<script type="text/javascript">
		var getItemName ='${getItemName}';
		var narr = eval(getItemName);
		var itemsname = narr[0].ITEM_NAME;
		console.log(itemsname);
		$(".itemnamez").append(itemsname);
		
		var map = "${map}";
		var list = "${map.list}";
		var arr = eval(list);
		var member_id = "${member_id}";
		
		var ilist = "${map.ilist}";
		var iarr = eval(ilist);
		
		var carr = $(".isum");
		var sum = 0;
		var cart_no = ${cart.cart_no}
		
		$("#totalprice").text(sum);
		
		$("input[name='cart_quantity']").on("input", function(event) {
					var qtag = $(this);
					var update_quantity = $(this).val();
					var item_no = $(this).attr("data-itemno");
					$.ajax({
						type : "post",
						url : "/cart/updateQuantity",
						data : {
							member_id : member_id,
							item_no : item_no,
							cart_quantity : update_quantity
						},
						dataType : "text",
						success : function(data) {
							var dprice = $(qtag).parent().prev("td").children("span").children("span.dprice").text();
							$(qtag).parent().next("td").children("span").text(eval(dprice * update_quantity));
						}
					});
				});

		$(".del").click(function(event) {
			event.preventDefault();
			var delbtn = $(this);
			var cart_no = $(this).attr("data-citem_no");
			$.ajax({
				type : "post",
				url : "/cart/delete",
				data : {
					cart_no : cart_no
				},
				dataType : "text",
				success : function(data) {
					$(delbtn).parent().parent().remove();
				}
			});
		});
		
		$(".order").click(function() {
			location.assign("/order/insert/"+member_id);
		});
</script>


</body>
</html>