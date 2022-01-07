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
	<form action="/item/insert" method="post">
		카테고리 명 :
		<select id="item_category" name="item_category" >
			<option>선택하세요</option>
			<c:forEach items="${list}" var="list">
				<option>${list.item_category}</option>
			</c:forEach>
		</select><br>
		아이템 명 : 
		<select id="item_name" name="item_name" >
			<option>선택하세요</option>
		</select><br>
		아이템 사이즈 : <input name="item_size" maxlength="10"><br>
		아이템 컬러 : <input name="item_color" maxlength="10"><br>
		아이템 가격 : <input name="item_price"><br>
		할인률 : <input name="discount_percentage">%<br>
		아이템 재고 수량 : <input name="item_amount"><br>
 		<input type="submit" value="등록 완료">
	</form>
	<script type="text/javascript">
		$(document).ready(function() {
			$("select[name=item_category]").change(function() {
				var item_category = $(this).val();
				$.ajax({
					type : "get",
					url : "/category/item_name_list",
					dataType : "text",
					data : {
						"item_category" : item_category
					},
					success : function(data) {
						$("#item_name").html("");
						data = JSON.parse(data);
						$("#item_name").append("<option>선택하세요</option>");
						for(var i=0; i<data.length; i++){
							var obj = data[i];
							var msg = "<option>"+obj.item_name+"</option>";
							$("#item_name").append(msg);
						}
					}
					
				});
			});
			
			
			$("input[type='submit']").click(function(event) {
				event.preventDefault();
				
				var item_category = $("[name='item_category']").val();
				if (item_category == '선택하세요') {
					$("[name='item_category']").focus();
					return;
				}
				var item_name = $("[name='item_name']").val();
				if (item_name == '선택하세요') {
					$("[name='item_name']").focus();
					return;
				}
				var item_size = $("[name='item_size']").val();
				if (item_size == '') {
					$("[name='item_size']").focus();
					return;
				}
				var item_color = $("[name='item_color']").val();
				if (item_color == '') {
					$("[name='item_color']").focus();
					return;
				}
				var item_price = $("[name='item_price']").val();
				if (item_price == '') {
					$("[name='item_price']").focus();
					return;
				}
				var discount_percentage = $("[name='discount_percentage']").val();
				if (discount_percentage == '') {
					$("[name='discount_percentage']").focus();
					return;
				}
				var item_amount = $("[name='item_amount']").val();
				if (item_amount == '') {
					$("[name='item_amount']").focus();
					return;
				}
				$("form").submit();
			});
		});
	</script>
</body>
</html>