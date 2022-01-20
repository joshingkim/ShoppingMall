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

<style>
body.cart_body {
	background-color: #f5f5f0;
	font-size: 13pt;
	min-width: 1480px;
	width: 100%;
	padding: 50px 0;
}

#frame {
	width: 100%;
	margin: 0 auto;
	padding: 50px 50px;
	background-color: #ffffff;
}

#frame2 {
	border-bottom: solid 1px #e0e0eb;
	padding-bottom: 10px;
}

table.cart_table_head {
	clear: both;
	border: solid 1px #e0e0eb;
	border-collapse: collapse;
	background-color: #f5f5f0;
	width: 100%;
	font-size: 10pt;
}

table.car_table_head tr { 

}

table.cart_table_head th {
	border: solid 1px #e0e0eb;
	padding: 10px 0;
	text-align: center;
}

table.cart_table_head td {
	border: solid 1px #e0e0eb;
	text-align: center;
}

.home {
	float: right;
}

input[type="checkbox"] {
	box-sizing: border-box;
	padding: 0;
}

.btn {
	border: none;
	color: white;
	padding: 5px 10px;
	font-size: 12px;
	cursor: pointer;
	border-radius: 5px;
}

.default {
	background-color: #fff;
	border: solid 1px gray;
	color: black;
}

.default:hover {
	background: 33ffff;
}

.backBtn {
	background: #fff;
	border: solid 1px gray;
}

table.cart_footer {
	border: solid 1px #e0e0eb;
	border-collapse: collapse;
	background-color: #f5f5f0;
	width: 100%;
	font-size: 10pt;
}

table.cart_footer td {
	border: solid 1px #e0e0eb;
}

table.cart_footer th {
	border: solid 1px #e0e0eb;
	text-align: center;
}

 .totalprice {
	font-size: 20pt;
	font-weight: bold;
	text-align: right;
}

.orderprice {
	font-size: 20pt;
	font-weight: bold;
	text-align: right;
}

#order{
	border-radius: 5px;
	font-size: 30pt;
	font-weight: 30pt;
	text-align: right;
	background-color: ddeeff;
}

</style>

</head>
<body class="cart_body">
	<div id="frame">
		<form action="">
			<div id="frame2">
				<span style="font-size: 20pt; font-weight: bold;">장바구니</span> <span
					class="home">홈 > 장바구니</span>
			</div>
			<br />

			<div>
				<table class="cart_table_head">
					<thead>
						<tr>
							<th id="t_head_1" colspan="10" style="text-align: left; padding-left: 10px;">장바구니 상품</th>
						</tr>
						<tr>
							<th style="width: 500px"><span>상품정보</span></th>
							<th>할인가(판매가)</th>
							<th>수량</th>
							<th>합계</th>
							<th>선택</th>
						</tr>
					</thead>

					<tbody>
					
						<c:forEach items="${ilist}" var="item">
							<c:set var="isTrue" value="true"/>
							<tr>
								<td>${item.item_no}</td>
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
	</div>

<button id="order" class="order">주문하기</button>


<jsp:include page="page.jsp"></jsp:include>

<script type="text/javascript">
		var map = "${map}";
		var list = "${list}";
		var arr = eval(list);
		var member_id = "${member_id}";
		
		var ilist = "${ilist}";
		var iarr = eval(ilist);
		console.log(ilist);
		for (var i = 0; i < arr.length; i++) {
			var obj = arr[i];
		}
		
		var carr = $(".isum");
		var sum = 0;
		
		for(var i = 0; i <carr.length;i++){
			var val = $(carr[i]).text();
		}
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
					alert(data);
					$(delbtn).parent().parent().remove();
				}
			});
		});
		
		$(".order").click(function() {
			event.preventDefault();
			$.ajax({
				type : "post",
				url : "/order/insert/{member_id}",
				data : {
					cart_no : cart_no,
					member_id : member_id,
					item_no : item_no
				},
				data : "text",
				success : function(data) {
					alert(data);
				}
			});
		});
</script>


</body>
</html>