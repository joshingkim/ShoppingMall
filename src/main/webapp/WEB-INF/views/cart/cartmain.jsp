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

.home {
	float: right;
}

input[type="checkbox"] {
	box-sizing: border-box;
	padding: 0;
}

</style>
</head>
<body>

	<table>
		<thead>
			<tr>
				<th>상품명</th>
				<th scope="col" style="cursor: pointer"><input type="checkbox"
					class="chk_all" id="chk_all" all></th>
				<th>가격</th>
				<th>수량</th>
				<th>합계</th>
				<th>주문</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${map.list}" var="cart" varStatus="status">
				<tr>
					<td>${status.count}:<c:out value="${cart.item_no}" /></td>
					<th scope="col" style="cursor: pointer"><input type="checkbox"
						class="chk_one" id="chk_one" checked></th>
					<td>${cart.cart_price}</td>
					<br>
					<td><input name="cart_quantity1" value="${cart.cart_quantity}"></td>
					<br>
					<td>${cart.money}</td>
					<br>

				</tr>
			</c:forEach>
		</tbody>
	</table>

</body>

<script type="text/javascript">
/* $(document).ready(function() {
	
		$("input[type='submit']").click(function(event) {
			event.preventDefault();
 */
			$.ajax({
				type : "post",
				url : "${contextPath}/cart/insertCart",
				data : {item_no:item_no},
				success : function(data, text) {
						if(data.trum()=="add_success"){
							alert("장바구니에 등록되었습니다.");
						}else if(data.trim() == 'already_existed'){
							alert("이미 카트에 등록된 제품입니다.");
						}
					},
					error : function(data, textStatus){
						alert("에러가 발생했습니다."+data);
					} 
				});
			}); */
	
});
</script>

</body>
</html>