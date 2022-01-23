<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>장바구니</title>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<script src="/resources/js/file.js" type="text/javascript"></script>
<style type="text/css">

table .foot {
	border-style: 30px;
}
  	img {
	width: 100px;
	height: 100px;
	}
</style>


</head>
<body class="cart_body">
	<jsp:include page="../header.jsp" />
	<jsp:include page="../sidebar.jsp" />

<c:choose>
	<c:when test="${map.cart_no == 0}">
		alert("장바구니가 비었습니다.");
	</c:when>
	
	<c:otherwise>
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
							<th  colspan="10" style="text-align: left; padding-left: 10px;">장바구니 상품</th>
						</tr>
						<tr>
							<th scope="col">상품 이미지</th>
							<th scope="col"><span>상품명</span></th>
							<th scope="col">할인가(판매가)</th>
							<th scope="col">수량</th>
							<th scope="col">합계</th>
							<th scope="col">선택</th>
						</tr>
					</thead>

					<tbody>
					
						<c:forEach items="${map.list}" var="cart" varStatus="i">
							<c:set var="isTrue" value="true"/>
							<tr>
								<td><div data-item_no="${cart.item_no}" data-item_name="${cart.item_name}" data-file_name="${cart.file_name}" class="uploadedList${i.index}"></div></td>
								<td><a style="text-decoration: none; color: #000;" href="/item/read/${cart.item_no}">${cart.item_name}</a></td>
								<td><span class="dprice">${(100-cart.discount_percentage)*cart.item_price/100}</span>(${cart.item_price}) 원</td>
								<td><input name="cart_quantity" type="number" data-itemno="${cart.item_no}" min="1" max="99" step="1" value="${cart.cart_quantity}"><br></td>
								<td><span class="isum">${((100-cart.discount_percentage)*cart.item_price/100)*cart.cart_quantity}</span></td>
								<td><button data-citem_no="${cart.cart_no}" class="btn btn-info del">삭제</button><br></td>
							</tr>
						</c:forEach>
					<!-- 	<div id="reset">
						<td scope="row" style="font-size: 15pt;; font-weight: bold; width:30%:"><span>결제금액</span></td>
						<td></td><td></td><td></td>
						<td> <span style="text-align: right;" class ="totalprice"> </span><span>원</span></td>
						</div> -->
						<c:set var="isTrue" value="false"/>		
					</tbody>
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

	</c:otherwise>
</c:choose>
<jsp:include page="../footer.jsp" />

<script type="text/javascript">
var vo ="${map.list}";

for(var i=0; i<vo.length; i++){
	var div_class = ".uploadedList"+i;
	var item_no = $(div_class).attr("data-item_no");
	var file_name = $(div_class).attr("data-file_name");
	var item = uploadedItemForRead(file_name,item_no);
	$(div_class).append(item);
}
		
		var item_no = $(this).attr("data-item_no");
		
		var map = "${map}";
		var list = "${map.list}";
	/* 	var arr = eval(list); */
		var member_id = "${member_id}";
		
		var money = "${map.sumMoney}";
		var sumMoney = eval(money);
		$(".totalprice").append(sumMoney); 
		
		var ilist = "${map.ilist}";
		var iarr = eval(ilist);
		
		var sum = 0;
		var cart_no = ${cart.cart_no}
		
		
		$("#totalprice").text(sum);
		
		$("input[name='cart_quantity']").on("input", function(event) {
					var qtag = $(this);
					var update_quantity = $(this).val();
					var totalprice = $(this).val();
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
							var dprice = $(qtag).parent().prev("td").children("span.dprice").text();
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
					
					$.ajax({
						
					});
				}
			});
		});
		
		$(".order").click(function(event) {
			if (cart_no == 0) {
				alert("장바구니가 비었습니다.");
				return; 
			} else {
				location.assign("/order/insert/"+member_id);
			}
			
		});
		
</script>

</body>
</html>