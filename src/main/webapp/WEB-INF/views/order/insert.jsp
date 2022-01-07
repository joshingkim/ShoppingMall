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
<body>

<h1>주문/결제</h1> <br>
주문번호: <input value="seq값으로 들어감" readonly> <br>
<hr>
<form action="/order/insert" method="post">
<div>
회원아이디: <input name="member_id" id="member_id" value="${vo.member_id}"><br> <!-- 멤버테이블에서 가져옴 -->
주문자이름: <input name="member_name" value="${vo.member_name}"> <br> <!-- 멤버테이블에서 가져옴 -->
전화번호: <input name="member_phone_number" value="${vo.member_phone_number}"><br> <!-- 멤버테이블에서 가져옴 -->
주문자이메일: <input name="member_email" value="${vo.member_email}"> <br> <!-- 멤버테이블에서 가져옴 -->
배송지 주소: <input name="member_address" value="${vo.member_address}"><br> <!-- 멤버테이블에서 가져옴 -->
배송지 상세주소: <input name="member_detail_address" value="${vo.member_detail_address}"><br> <!-- 멤버테이블에서 가져옴 -->
</div>
<hr>

<label for="기존배송지">기존배송지</label><input id="기존배송지" type="radio" name="address" value="기존배송지" checked>
<label for="신규배송지">신규배송지</label><input id="신규배송지" type="radio" name="address" value="신규배송지">  <br>
수령인: <input id="order_name" name="order_name" value="${vo.member_id}"><br> <!-- 멤버테이블에서 가져옴 -->
전화번호: <input id="order_phone_number" name="order_phone_number" value="${vo.member_phone_number}"><br> <!-- 멤버테이블에서 가져옴 -->
주문자이메일: <input type="email" id="order_email" name="order_email" value="${vo.member_email}"> <br> <!-- 멤버테이블에서 가져옴 -->
배송지 주소: <input id="order_address" name="order_address" value="${vo.member_address}"><br> <!-- 멤버테이블에서 가져옴 -->
배송지 상세주소: <input id="order_detail_address" name="order_detail_address" value="${vo.member_detail_address}"><br> <!-- 멤버테이블에서 가져옴 -->

<hr>
<h2>제품정보</h2>
<div>
<!--제품번호, 수량, 가격은 장바구니에 있는 정보를 가져옴 -->
제품번호: <input name="item_no" id="item_no"> <br> <!-- 장바구니테이블에서 가져옴 -->
사이즈: <input name="item_size" id="item_size"> <br> <!-- 장바구니테이블에서 가져옴 -->
수량: <input> <br> <!-- 장바구니테이블에서 가져옴 -->
가격: <input> <br> <!-- 상품의 가격 * 장바구니테이블에서 가져온 수량 -->
</div>
<hr>
<div>
총수량: <input name="order_quantity" id="order_quantity"> <br>
총가격: <input name="order_price" id="order_price">
</div>
<hr>
 <input type="submit" value="결제완료"> <button type="button" id="cancel">결제취소</button>
</form>
<br>

<script type="text/javascript">

	$(document).ready(function() {
		
		$("input[type='submit']").click(function(event) {
			event.preventDefault();
			var member_id = $("#member_id").val();
			var item_no = $("#item_no").val();
			var order_quantity = $("#order_quantity").val();
			var order_price = $("#order_price").val();
			var order_email = $("#order_email").val();
			var order_name = $("#order_name").val();
			var order_phone_number = $("#order_phone_number").val();
			var order_address = $("#order_address").val();
			var order_detail_address = $("#order_detail_address").val();
			
		    if(member_id == ''){
		    	alert('회원번호를 반드시 입력하세요.');
				$("[name='member_id']").focus();
				return;
			}
		    if(order_name == ''){
		    	alert('수령인을 반드시 입력하세요.');
				$("[name='order_name']").focus();
				return;
			}
		    if(order_phone_number == ''){
				alert('전화번호를 반드시 입력하세요.');
				$("[name='order_phone_number']").focus();
				return;
			}
		    if(order_email == ''){
				alert('이메일을 반드시 입력하세요.');
				$("[name='order_email']").focus();
				return;
			}
		    if(order_address == ''){
				alert('주소를 반드시 입력하세요.');
				$("[name='order_address']").focus();
				return;
			}
		    if(order_detail_address == ''){
				alert('상세주소를 반드시 입력하세요.');
				$("[name='order_detail_address']").focus();
				return;
			}
			if(item_no == ''){
				alert('제품번호를 반드시 입력하세요.');
				$("[name='item_no']").focus();
				return;
			}
			if(order_quantity == ''){
				alert('총수량 반드시 입력하세요.');
				$("[name='order_quantity']").focus();
				return;
			}
			if(order_price == ''){
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
		         buyer_addr : order_address + order_detail_address,
		         /* buyer_postcode : order_detail_address */
		      }, function(rsp) {
		         console.log(rsp);
		         if (rsp.success) {
		            var msg = '결제가 완료되었습니다.';
		            msg += '고유ID : ' + rsp.imp_uid;
		            msg += '상점 거래ID : ' + rsp.merchant_uid;//merchant_uid
		            msg += '결제 금액 : ' + rsp.paid_amount;
		            msg += '카드 승인번호 : ' + rsp.apply_num;
		            alert(msg);
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