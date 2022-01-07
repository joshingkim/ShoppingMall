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

<form action="order/detail">
<h1>회원정보</h1>
주문번호: ${vo.order_no}<br>
회원아이디: ${vo.member_id}<br>
수령자: ${vo.order_name} <br>
회원이메일: ${vo.order_email} <br>
핸드폰번호: ${vo.order_phone_number} <br>
주소: ${vo.order_address} <br>
상세주소: ${vo.order_detail_address} <br>
<hr>
<h2>배송정보</h2>
상품번호:${vo.item_no}<br>
상품수량:${vo.order_quantity}<br>
결제가격:${vo.order_price}<br>
결제시간:${vo.order_date}<br>
배송상태: 배송준비중<br>
<input type="submit" value="확인">
</form>


</body>
</html>