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
<style type="text/css">
.box-radio-input input[type="radio"] {
	display: none;
}

.box-radio-input input[type="radio"]+span {
	border-radius: 5px;
	display: inline-block;
	background: none;
	border: 1px solid #dfdfdf;
	padding: 0px 10px;
	text-align: center;
	height: 35px;
	line-height: 33px;
	font-weight: 500;
	cursor: pointer;
}

.box-radio-input input[type="radio"]:checked+span {
	border: 1px solid #7BB1C2;
	background: #7BB1C2;
	color: #fff;
}

table {
	width: 50%;
	border-collapse: separate;
	border-spacing: 0 20px;
}

th, td {
	border-bottom: 1px solid #ddd;
}

div.total_price {
	left: 300px;
	right: -30px;
}
</style>
</head>

	<jsp:include page="../header.jsp" />
	<jsp:include page="../sidebar.jsp" />

<body>
<div class="container mr-1">
	<form action="/order/insert/${mvo.member_id}" method="post">

			<!-- 회원정보 -->
			<h1>주문/결제</h1>
			<hr align="left" style="width:50%;height:3px;border:none;background-color:#343a40;">
			
			<h3>회원정보</h3>
			<hr align="left" style="width:50%;height:2px;border:none;background-color:#F0E68C;">
			<div class="col-md-5" style="left: 30px;">
				<div class="input-group input-group-sm mb-3" style="height: 28px">
					<span class="input-group-text" id="inputGroup-sizing-sm" style="width: 135px; background-color:#FCE7CC; border: none;">회원아이디</span>
					<input style="width: 10px; height: 38px; background-color:#FEF3E5; border: none" type="text" class="form-control" aria-labelledby="Sizing example input" aria-describedby="inputGroup-sizing-sm"
					 name="member_id" id="member_id" value="${mvo.member_id}" readonly>
				</div>
				<div class="input-group input-group-sm mb-3" style="height: 28px">
					<span class="input-group-text" id="inputGroup-sizing-sm" style="width: 135px; background-color:#FCE7CC; border: none;">회원이름</span>
					<input style="width: 10px; height: 38px; background-color:#FEF3E5; border: none" type="text" class="form-control" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-sm"
					 value="${mvo.member_name}" readonly>
				</div>
				<div class="input-group input-group-sm mb-3" style="height: 28px">
					<span class="input-group-text" id="inputGroup-sizing-sm" style="width: 135px; background-color:#FCE7CC; border: none;">전화번호</span>
					<input style="width: 10px; height: 38px; background-color:#FEF3E5; border: none" type="text" class="form-control" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-sm"
					 value="${mvo.member_phone_number}" readonly>
				</div>
				<div class="input-group input-group-sm mb-3" style="height: 28px">
					<span class="input-group-text" id="inputGroup-sizing-sm" style="width: 135px; background-color:#FCE7CC; border: none;">회원이메일</span>
					<input style="width: 10px; height: 38px; background-color:#FEF3E5; border: none" type="text" class="form-control" aria-labelledby="Sizing example input" aria-describedby="inputGroup-sizing-sm"
					 name="member_email" value="${mvo.member_email}" readonly>
				</div>
				<div class="input-group input-group-sm mb-3" style="height: 28px">
					<span class="input-group-text" id="inputGroup-sizing-sm" style="width: 135px; background-color:#FCE7CC; border: none;">배송지 주소</span>
					<input style="width: 10px; height: 38px; background-color:#FEF3E5; border: none" type="text" class="form-control" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-sm"
					 value="${mvo.member_address}" readonly>
				</div>
				<div class="input-group input-group-sm mb-3">
					<span class="input-group-text" id="inputGroup-sizing-sm" style="width: 135px; background-color:#FCE7CC; border: none;">배송지 상세주소</span>
					<input style="width: 10px; height: 38px; background-color:#FEF3E5; border: none" type="text" class="form-control" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-sm"
					 value="${mvo.member_detail_address}" readonly>
				</div>
			</div>
			<hr align="left" style="width:50%;height:3px;border:none;background-color:#343a40;">
			
			
			<!-- 배송정보 -->
			<h3>배송정보</h3>
			<hr align="left" style="width:50%;height:2px;border:none;background-color:#F0E68C;">
			<div>
				<label class="box-radio-input"><input id="기존배송지" onclick="original()" type="radio" name="address" value="기존배송지" checked="checked"><span>기존배송지</span></label>
				<label class="box-radio-input"><input id="신규배송지" onclick="test()" type="radio" name="address" value="신규배송지"><span>신규배송지</span></label>
			</div>
			
			
			
			<div class="col-md-5" style="left: 30px;">
				<div class="input-group input-group-sm mb-3" style="height: 28px">
					<span class="input-group-text" id="inputGroup-sizing-sm" style="width: 135px; background-color:#FCE7CC; border: none;">수령인</span>
					<input placeholder="수령인을 입력하세요" style="width: 10px; height: 38px; background-color:#FEF3E5; border: none" type="text" class="form-control" 
					 aria-label="Sizing example input" aria-describedby="inputGroup-sizing-sm" id="receiver" name="receiver" value="${mvo.member_name}">
				</div>
				<div class="input-group input-group-sm mb-3" style="height: 28px">
					<span class="input-group-text" id="inputGroup-sizing-sm" style="width: 135px; background-color:#FCE7CC; border: none;">전화번호</span>
					<input placeholder="전화번호를 입력하세요" style="width: 10px; height: 38px; background-color:#FEF3E5; border: none" type="text" class="form-control" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-sm"
					 id="phone" name="member_phone_number" value="${mvo.member_phone_number}">
				</div>
				<div class="input-group input-group-sm mb-3" style="height: 28px">
					<span class="input-group-text" id="inputGroup-sizing-sm" style="width: 135px; background-color:#FCE7CC; border: none;">주문자이메일</span>
					<input placeholder="이메일을 입력하세요" style="width: 10px; height: 38px; background-color:#FEF3E5; border: none" type="text" class="form-control" aria-labelledby="Sizing example input" aria-describedby="inputGroup-sizing-sm"
					 type="email" id="order_email" name="order_email" name="member_email" value="${mvo.member_email}">
				</div>
				<div class="input-group input-group-sm mb-3" style="height: 28px">
					<span class="input-group-text" id="inputGroup-sizing-sm" style="width: 135px; background-color:#FCE7CC; border: none;">배송지 주소</span>
					<input placeholder="배송지 주소를 입력하세요" style="width: 10px; height: 38px; background-color:#FEF3E5; border: none" type="text" class="form-control" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-sm"
					 id="address" name="member_address" value="${mvo.member_address}">
				</div>
				<div class="input-group input-group-sm mb-3">
					<span class="input-group-text" id="inputGroup-sizing-sm" style="width: 135px; background-color:#FCE7CC; border: none;">배송지 상세주소</span>
					<input placeholder="배송지 상세주소를 입력하세요" style="width: 10px; height: 38px; background-color:#FEF3E5; border: none" type="text" class="form-control" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-sm"
					 id="detail_address" name="member_detail_address" value="${mvo.member_detail_address}">
				</div>
			</div>
			<hr align="left" style="width:50%;height:3px;border:none;background-color:#343a40;">



			<!-- 제품정보 -->
			<h3>제품정보</h3>
			<hr align="left" style="width:50%;height:2px;border:none;background-color:#F0E68C;">
			<c:if test="${not empty clist}">
				<table>
					<tr>
						<th>제품명</th>
						<th>수량</th>
						<th>가격</th>
					</tr>
					<c:forEach items="${clist}" var="cVo">
						<c:forEach items="${ilist}" var="iVo">
							<c:if test="${iVo.item_no == cVo.item_no}">

								<tr>
									<td>${iVo.item_name}</td>
									<td>${cVo.cart_quantity}</td>
									<td>${iVo.item_price*(100-iVo.discount_percentage)/100} 원</td>
								</tr>

							</c:if>

						</c:forEach>
					</c:forEach>
				</table>
			</c:if>



			<c:if test="${empty clist}">
				<c:forEach items="${ilist}" var="iVo">
					<input style="white-space: nowrap;" value="${iVo.item_name}">
					<input style="display:inline" value="${iVo.item_price*(100-iVo.discount_percentage)/100}">
				</c:forEach>
			</c:if>
			<hr align="left" style="width:50%;height:3px;border:none;background-color:#343a40;">
			
			<!-- 총수량 및 총가격 -->
			<div class="col-md-3" style="left: 300px;">
			<div class="input-group input-group-sm mb-3">
					<span class="input-group-text" id="inputGroup-sizing-sm" style="width: 135px; background-color:#FCE7CC; border: none;">총수량</span>
					<input style="width: 10px; height: 38px; background-color:#FEF3E5; border: none" type="text" class="form-control" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-sm"
					  value="${total}개">
				</div>
				<div class="input-group input-group-sm mb-3">
					<span class="input-group-text" id="inputGroup-sizing-sm" style="width: 135px; background-color:#FCE7CC; border: none;">총가격</span>
					<input style="width: 10px; height: 38px; background-color:#FEF3E5; border: none" type="text" class="form-control" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-sm"
					  value="${sum}원">
				</div>
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
		document.getElementById("receiver").readOnly = true;
		document.getElementById("phone").readOnly = true;
		document.getElementById("order_email").readOnly = true;
		document.getElementById("address").readOnly = true;
		document.getElementById("detail_address").readOnly = true;
	}

	function test() {
		document.getElementById("receiver").value = '';
		document.getElementById("phone").value = '';
		document.getElementById("order_email").value = '';
		document.getElementById("address").value = '';
		document.getElementById("detail_address").value = '';
		document.getElementById("receiver").readOnly = false;
		document.getElementById("phone").readOnly = false;
		document.getElementById("order_email").readOnly = false;
		document.getElementById("address").readOnly = false;
		document.getElementById("detail_address").readOnly = false;
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