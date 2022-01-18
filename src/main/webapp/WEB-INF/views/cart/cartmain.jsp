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
</head>
<body>

<button id="cart" class="btn btn-default btn-cart">장바구니</button>
	<form action="/cart/read">
		<input type="hidden" name="member_id" value="m001"> <input
			type="hidden" name="item_no" value="1234"> <input
			type="submit" value="완료">
	</form>

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