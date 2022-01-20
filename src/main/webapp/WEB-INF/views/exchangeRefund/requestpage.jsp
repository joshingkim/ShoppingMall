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
</head>
<body>

<form action="/exchangeRefund/insertExRefund" method="POST">
<h3>환불/교환 페이지</h3>
<select name="exchange_refund_code">
<option value="0">교환</option>
<option value="1">환불</option>
</select>
주문번호 : <input name="order_id" value="${ovo.order_id}" readonly><br>
주문아이디 : <input name="member_id" value="${ovo.member_id}" readonly><br>
주문일자 : <input value="${ovo.order_date}" readonly><br>
주문수량 : <input value="${ovo.ea}" readonly><br>
가격 : <input value="${ovo.price}" readonly><br>
<textarea name="exchange_refund_content" rows="5" maxlength="300"></textarea>

<input type="submit" value="신청">
</form>
<script type="text/javascript">
$(document).ready(function(){
	
	$("[type='submit']").click(function(event){
		event.preventDefault();
		
	var textval= $("[name='exchange_refund_content']").val();
	if(textval == ''){
		$("[name='exchange_refund_content']").focus();
		alert("환불 및 교환 사유를 작성해주세요. (300자 이내)");
		return;
	}
	$("form").submit();
	});
});

</script>
</body>
</html>