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
<body>
<div>
<h2>회원정보</h2>
회원이름: ${mvo.member_name} <br>
회원아이디: ${mvo.member_id}
</div>
<hr>
<h2>주문내역</h2>
	<div>
		<c:forEach items="${olist}" var="ovo">
			<table>
				<tr>
					<th>제품번호</th>
					<th>제품수량</th>
					<th>제품가격</th>
					<th>배송상태</th>
					<th>결제일</th>
				</tr>
				<tr>
					<td>${ovo.item_no}</td>
					<td>${ovo.ea}</td>
					<td>${ovo.price}</td>
					<td>${ovo.status}</td>
					<td>${ovo.order_date}</td>
				</tr>
			</table>
		</c:forEach>
	</div>





<jsp:include page="../footer.jsp" />
	<!-- <script type="text/javascript">
	var a = ${odvo.order_detail_code}

$(document).ready(function() {
	
	$("button#status").click(function(event) {
		event.preventDefault();
		console.log(a);
		if (a < 2){
			$.ajax({
				type : 'post',
				url : '/detail/check',
				data : {
					'order_detail_code' : a
				},
				dataType : 'text',
				success : function(result) {
					console.log(result);
					
				}
				
			});
						
		} else{
			alert("이미 배송완료된 상품입니다");
		}
		
	});
	
	
	if(a == 0){
		var str = document.getElementById("text");
		str.innerHTML = "상품준비중"
	} if(a == 1){
		var str = document.getElementById("text");
		str.innerHTML = "배송중"
	} if(a ==2){
		var str = document.getElementById("text");
		str.innerHTML = "배송완료"		
	} 
	
});



</script> -->



</body>
</html>