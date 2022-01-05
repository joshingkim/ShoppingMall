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
<form action="/order/insert" method="post">
<h1>주문/결제</h1> <br>
주문번호: <input> <br>
수령인: <input name="member_id" value="${vo.member_id}"><br> <!-- 멤버테이블에서 가져옴 -->
휴대전화: <input name="member_phone_number" value="${vo.member_phone_number}"><br> <!-- 멤버테이블에서 가져옴 -->
배송지 주소: <input name="member_address" value="${vo.member_address}"><br> <!-- 멤버테이블에서 가져옴 -->
상세주소: <input name="member_detail_address" value="${vo.member_detail_address}"><br> <!-- 멤버테이블에서 가져옴 -->


<hr>
<h2>제품정보</h2>
<div>
<!--제품번호, 수량, 가격은 장바구니에 있는 정보를 가져옴 -->
제품번호: <input name="item_no"> <br> <!-- 찜테이블에서 가져옴 -->
사이즈: <input name="item_size"> <br> <!-- 찜테이블에서 가져옴 -->
수량: <input name="order_quantity"> <br> <!-- 찜테이블에서 가져옴 -->
가격: <input name="order_price"> <br> <!-- 상품의 가격 * 찜테이블에서 가져온 수량 -->
</div>
<hr>
 <input type="submit" value="결제완료"> <button type="button" id="cancel">결제취소</button>
</form>
<br>

<script type="text/javascript">

	$(document).ready(function() {
		
		$("input[type='submit']").click(function(event) {
			event.preventDefault();
			var member_id = $("[name='member_id']").val();
			var item_no = $("[name='item_no']").val();
			var item_size = $("[name='item_size']").val();
			var order_quantity = $("[name='order_quantity']").val();
			var order_price = $("[name='order_price']").val();
			
		    if(member_id == ''){
		    	alert('수령인을 반드시 입력하세요.');
				$("[name='member_id']").focus();
				return;
			}
			if(item_no == ''){
				alert('제품번호를 반드시 입력하세요.');
				$("[name='item_no']").focus();
				return;
			}
			if(item_size == ''){
				alert('제품 사이즈를 반드시 입력하세요.');
				$("[name='item_size']").focus();
				return;
			}
			if(order_quantity == ''){
				alert('제품수량 반드시 입력하세요.');
				$("[name='order_quantity']").focus();
				return;
			}
			if(order_price == ''){
				alert('가격을 반드시 입력하세요.');
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
		         buyer_email : 'iamport@siot.do',
		         buyer_name : '구매자이름',
		         buyer_tel : '010-1234-5678',
		         buyer_addr : '서울 강남구 도곡동',
		         buyer_postcode : '123-456'
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
		})
		
		

	});
</script>


</body>
</html>