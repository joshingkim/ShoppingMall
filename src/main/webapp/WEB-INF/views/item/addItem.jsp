<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Item Update</title>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
  <script src="/resources/js/file.js" type="text/javascript"></script>
<style type="text/css">
	img{
		width: 300px;
  		height: 300px;
  		margin: 20px;
	}
</style>
</head>
<body>
<jsp:include page="../header.jsp" />
<jsp:include page="../sidebar.jsp" />
<div class="row mb-2 container">
		<div class="col-md-10">
			<div class="row g-0 border rounded overflow-hidden flex-md-row mb-4 shadow-sm h-md-250 position-relative">
				<div class="uploadedList"></div>
					<div class="col p-4 d-flex flex-column position-static">
						<p class="card-text mb-auto">
						<form action="/item/addItem" method="post">
						<input type="hidden" name="item_no" value="${vo.item_no}">
							<div class="input-group mb-2"> 
								<span class="input-group-text">category</span>
								<input name="item_category" maxlength="20" value="${vo.item_category}" readonly="readonly" class="form-control">
							</div>
							<div class="input-group mb-2"> 
								<span class="input-group-text">item</span>
								<input name="item_name" value="${vo.item_name}" readonly="readonly" class="form-control">
							</div>
							<div class="input-group mb-2"> 
								<span class="input-group-text">size</span>
								<input name="item_size" maxlength="10" class="form-control">
							</div>
							<div class="input-group mb-2"> 
								<span class="input-group-text">color</span>
								<input name="item_color" maxlength="10" class="form-control">
							</div>
							<div class="input-group mb-2"> 
								<span class="input-group-text">price</span>
								<input name="item_price" type="number" max="100000000" value="${vo.item_price}" readonly="readonly" class="form-control">
								<span class="input-group-text">원</span>
							</div>
							<div class="input-group mb-2"> 
								<span class="input-group-text">discount</span>
								<input name="discount_percentage" max="100" value="${vo.discount_percentage}" readonly="readonly" class="form-control">
								<span class="input-group-text">%</span>
							</div>
							<div class="input-group mb-2"> 
								<span class="input-group-text">Quantity</span>
								<input name="item_amount" type="number" class="form-control" max="100000">
								<span class="input-group-text">EA</span>
							</div>
							<input type="submit" value="추가 완료">
						</form>
						</p>
					</div>
			</div>
		</div>
	</div>
<jsp:include page="../footer.jsp" />
	<script type="text/javascript">
		var item_no = ${vo.item_no};
		var objFormData = {};
		
		$(document).ready(function() {
			
			$.getJSON("/file/getFile/"+item_no, function(data) {
				/* for(var i=0; i<data.length; i++){ */
					var item = uploadedItemForRead(data[0]);
					$(".uploadedList").append(item);
				/* } */
			});
			
			$("input[type='submit']").click(function(event) {
				event.preventDefault();
				
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
				
				var item_amount = $("[name='item_amount']").val();
				if (item_amount == '') {
					$("[name='item_amount']").focus();
					return;
				}
				
				if (item_amount > 9999) {
					alert("재고 수량은 9999개까지 선택할 수 있습니다.");
					$("[name='item_amount']").focus();
					return;
				}
				
				$("form").submit();
			});
		});
</script>
</body>
</html>