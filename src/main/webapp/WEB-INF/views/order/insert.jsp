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
  <script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-1.1.5.js"></script>
</head>

	<jsp:include page="../header.jsp" />
	<jsp:include page="../sidebar.jsp" />

<body>
<div class="container mr-1">
	<form action="/order/insert/${mvo.member_id}" method="post">
			<h1>주문/결제</h1>
			<hr align="left" style="width:50%;height:3px;border:none;background-color:#343a40;">
			<div class="input">
			<div class="input-group input-group-sm mb-3">
				<span class="input-group-text" id="inputGroup-sizing-sm">Small</span>
				<input style="width: 10px; height: 38px;" type="text" class="form-control"
					aria-label="Sizing example input"
					aria-describedby="inputGroup-sizing-sm">
			</div>
			</div>
			<hr align="left" style="width:50%;height:3px;border:none;background-color:#343a40;">
			<div>
				<h3>회원정보</h3>
				<hr align="left" style="width:50%;height:2px;border:none;background-color:#F0E68C;">
				회원아이디: <input name="member_id" id="member_id" value="${mvo.member_id}" readonly><br>
				주문자이름: <input value="${mvo.member_name}" readonly> <br>
				전화번호: <input value="${mvo.member_phone_number}" readonly><br>
				주문자이메일: <input name="member_email" value="${mvo.member_email}" readonly> <br>
				배송지 주소: <input size="35" value="${mvo.member_address}" readonly><br>
				배송지 상세주소: <input value="${mvo.member_detail_address}" readonly><br>
			</div>

			<hr align="left" style="width:50%;height:3px;border:none;background-color:#343a40;">
			<h3>배송정보</h3>
			<hr align="left" style="width:50%;height:2px;border:none;background-color:#F0E68C;">
			<div>
				<label for="기존배송지">기존배송지</label><input id="기존배송지" onclick="original()" type="radio" name="address" value="기존배송지" checked> 
				<label for="신규배송지">신규배송지</label><input id="신규배송지" onclick="test()" type="radio" name="address" value="신규배송지">
				<br>
			</div>

			<div>
				수령인: <input id="receiver" name="receiver" value="${mvo.member_name}"><br>
				전화번호: <input id="phone" name="member_phone_number" value="${mvo.member_phone_number}"><br>
				주문자이메일: <input type="email" id="order_email" name="order_email" value="${mvo.member_email}"> <br>
				배송지 주소: <input size="35" id="address" name="member_address" value="${mvo.member_address}"><br>
				배송지 상세주소: <input id="detail_address" name="member_detail_address" value="${mvo.member_detail_address}"><br>
			</div>

			<hr align="left" style="width:50%;height:3px;border:none;background-color:#343a40;">

			<h3>제품정보</h3>
			<hr align="left" style="width:50%;height:2px;border:none;background-color:#F0E68C;">
			<c:if test="${not empty clist}">
			<c:forEach items="${clist}" var="cVo">
				<c:forEach items="${ilist}" var="iVo">
					<c:if test="${iVo.item_no == cVo.item_no}">
						<p style="display:inline">${iVo.item_name}</p>
						<p style="display:inline">${iVo.item_price*(100-iVo.discount_percentage)/100}</p>
					</c:if>
				</c:forEach>
			</c:forEach>
			</c:if>
			<c:if test="${empty clist}">
				<c:forEach items="${ilist}" var="iVo">
					<p style="display:inline">${iVo.item_name}</p>
					<p style="display:inline">${iVo.item_price*(100-iVo.discount_percentage)/100}</p>
				</c:forEach>
			</c:if>

			<hr align="left" style="width:50%;height:3px;border:none;background-color:#343a40;">
			<div>
				총수량: <input value="${total}" readonly> <br> 
				총가격: <input value="${sum}" readonly>
			</div>
			<hr align="left" style="width:50%;height:3px;border:none;background-color:#343a40;">
			<input type="hidden" name="ilist" value="${ilist}"> 
			<input type="hidden" name="clist" value="${clist}"> 
			<input class="btn btn-success" type="submit" value="결제완료">
			<button class="btn btn-dark" type="button" id="cancel">결제취소</button>
	</form>
	</div>
	<br>
<jsp:include page="../footer.jsp" />
	<script type="text/javascript">
	 var clist = "${clist}";
	 var member_id = "${mvo.member_id}";
	 var item_no = "${item_no}";
	   

	function original(){
		document.getElementById("receiver").value = '${mvo.member_name}';
		document.getElementById("phone").value = '${mvo.member_phone_number}';
		document.getElementById("order_email").value = '${mvo.member_email}';
		document.getElementById("address").value = '${mvo.member_address}';
		document.getElementById("detail_address").value = '${mvo.member_detail_address}';
	}

	function test() {
		document.getElementById("receiver").value = '';
		document.getElementById("phone").value = '';
		document.getElementById("order_email").value = '';
		document.getElementById("address").value = '';
		document.getElementById("detail_address").value = '';
	}

	$(document).ready(function() {

		$("input[type='submit']").click(function(event) {
			event.preventDefault();
			var member_id = $("#member_id").val();
			var item_no = $("#item_no").val();
			var cart_no = $("#cart_no").val();
			var order_quantity = $("#order_quantity").val();
			var order_price = $("#order_price").val();
			var order_email = $("#order_email").val();
			var order_name = $("#order_name").val();
			var order_phone_number = $("#order_phone_number").val();
			var order_address = $("#order_address").val();
			var order_detail_address = $("#order_detail_address").val();

			if (member_id == '') {
				alert('회원번호를 반드시 입력하세요.');
				$("[name='member_id']").focus();
				return;
			}
			if (order_name == '') {
				alert('수령인을 반드시 입력하세요.');
				$("[name='order_name']").focus();
				return;
			}
			if (order_phone_number == '') {
				alert('전화번호를 반드시 입력하세요.');
				$("[name='order_phone_number']").focus();
				return;
			}
			if (order_email == '') {
				alert('이메일을 반드시 입력하세요.');
				$("[name='order_email']").focus();
				return;
			}
			if (order_address == '') {
				alert('주소를 반드시 입력하세요.');
				$("[name='order_address']").focus();
				return;
			}
			if (order_detail_address == '') {
				alert('상세주소를 반드시 입력하세요.');
				$("[name='order_detail_address']").focus();
				return;
			}
			if (item_no == '') {
				alert('제품번호를 반드시 입력하세요.');
				$("[name='item_no']").focus();
				return;
			}
			if (order_quantity == '') {
				alert('총수량 반드시 입력하세요.');
				$("[name='order_quantity']").focus();
				return;
			}
			if (order_price == '') {
				alert('전체가격을 반드시 입력하세요.');
				$("[name='order_price']").focus();
				return;
			}
			var IMP = window.IMP;
			IMP.init('imp10397338');
			IMP.request_pay({
			     pg : 'inicis',//결재방법(pg)
			     pay_method: 'card',
			     merchant_uid : 'merchant_' + new Date().getTime(),// 상점에서 관리하는 주문 번호
			     name : '주문명:결제테스트',//아이템명
			     amount : 100, //실제 결제되는 가격
			     buyer_email : order_email,
			     buyer_name : order_name,
			     buyer_tel : order_phone_number,
			     buyer_addr : order_address +" "+ order_detail_address,
			     buyer_postcode : order_detail_address 
			  }, function(rsp) {
			     console.log(rsp);
			     if (rsp.success) {
			        var msg = '결제가 완료되었습니다.';
			        msg += '고유ID : ' + rsp.imp_uid;
			        msg += '상점 거래ID : ' + rsp.merchant_uid;//merchant_uid
			        msg += '결제 금액 : ' + rsp.paid_amount;
			        msg += '카드 승인번호 : ' + rsp.apply_num;
			        alert(msg);
			        if(clist == null || clist == ""){
			        	item_no = "${item_no}";
	                    $("form").attr("action", "/order/insert/"+member_id+"/"+item_no);
	                    $("form").submit(); 
	                }
			        $("form").submit(); 
			     } else {
			        var msg = '결제에 실패하였습니다.';
			        msg += '에러내용 : ' + rsp.error_msg;
			         alert(msg);
			     }
			  });
		});

		$("button#cancel").click(function() {
			alert('홈페이지로 돌아갑니다');
			location.assign("/")
		});

	});
</script>

</body>
	
</html>