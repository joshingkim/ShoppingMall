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
	.fileDrop{
		width: 300px;
		height: 300px;
		border: 1px solid red;
		margin-top: 20px;
		
	}
</style>
</head>
<body>
<jsp:include page="../header.jsp" />
<jsp:include page="../sidebar.jsp" />
<div class="row mb-2 container">
		<div class="col-md-10">
			<div style="margin-left: 13%;" class="row g-0 border rounded overflow-hidden flex-md-row mb-4 shadow-sm h-md-250 position-relative">
				<div class="fileDrop"><div style="text-align: center;" class="uploadedList row"></div></div>
					<div class="col p-4 d-flex flex-column position-static">
						<p class="card-text mb-auto">
						<form action="/item/update" method="post">
							<input hidden name="item_no" value="${vo.item_no}">
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
								<input name="item_size" maxlength="10" value="${vo.item_size}" class="form-control">
							</div>
							<div class="input-group mb-2"> 
								<span class="input-group-text">color</span>
								<input name="item_color" maxlength="10" value="${vo.item_color}" class="form-control">
							</div>
							<div class="input-group mb-2"> 
								<span class="input-group-text">price</span>
								<input name="item_price" type="number" value="${vo.item_price}" class="form-control">
								<span class="input-group-text">원</span>
							</div>
							<div class="input-group mb-2"> 
								<span class="input-group-text">discount</span>
								<input name="discount_percentage" type="number" value="${vo.discount_percentage}" class="form-control">
								<span class="input-group-text">%</span>
							</div>
							<div class="input-group mb-2"> 
								<span class="input-group-text">Quantity</span>
								<input name="item_amount" type="number" value="${vo.item_amount}" maxlength="9" class="form-control">
								<span class="input-group-text">EA</span>
							</div>
							<input type="submit" value="수정 완료">
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
				for(var i=0; i<data.length; i++){
					var item = uploadedItem(data[i]);
					$(".uploadedList").append(item);
				}
			});
			
			$(".fileDrop").on("dragenter dragover", function(event) {
				event.preventDefault();
			});
			
			$(".fileDrop").on("drop", function(event) {
				event.preventDefault();
				var files = event.originalEvent.dataTransfer.files;
				var file = files[0];
				var formData = new FormData();
				formData.append("file", file);
				$.ajax({
					type : "post",
					url : "/file/upload",
					dataType : "text",
					data : formData,
					processData : false,
					contentType : false,
					success : function(filename) {
						var item = uploadedItem(filename);
						$(".uploadedList").append(item);
						$.ajax({
							type : "post",
							url : "/file/deletefile",
							dataType : "text",
							data : {
								"filename" : filename
							},
							success : function(result) {
								objFormData[filename] = formData;
								
							}
						});

					}
				});
				
			});
			
			$(".uploadedList").on("click",".deleteitem", function() {
				var isDelete = confirm("삭제됩니다.\n 삭제 하시겠습니까");
				
				if(!isDelete){
					return;
				}
				
				var filename = $(this).attr("data-filename");
				var msg = deleteFile(filename);
				$("form").append(msg);
				$(this).parent().parent().remove();
			});
			
			$("input[type='submit']").click(function(event) {
				event.preventDefault();
				
				var item_category = $("#item_category").val();
				if (item_category == '') {
					$("#item_category").focus();
					return;
				}
				var item_name = $("[name='item_name']").val();
				if (item_name == '') {
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
				if (item_price > 100000000) {
					alert("금액이 초과하였습니다.");
					$("[name='item_price']").focus();
					return;
				}
				var discount_percentage = $("[name='discount_percentage']").val();
				if (discount_percentage == '') {
					$("[name='discount_percentage']").focus();
					return;
				}
				if (discount_percentage > 99) {
					alert("할인률은 99까지 선택할 수 있습니다.");
					$("[name='discount_percentage']").focus();
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
				for(filename in objFormData){
					var msg = insertFile(filename);
					$("form").prepend(msg);
				}
				
				for(filename in objFormData){
					var formData = objFormData[filename];
					formData.append("filename", filename)
					$.ajax({
						type : "post",
						url : "/file/uploadNdb/"+item_no,
						dataType : "text",
						data : formData,
						processData : false,
						contentType : false,
						success : function(filename) {
						}
					});
				}
				var arrDeletedItem = $(this).nextAll(".deletefiles");
				for(var i=0; i<arrDeletedItem.length; i++){
					var filename = $(arrDeletedItem[i]).val();
					$.ajax({
						type : "post",
						url : "/file/deletefileNdb",
						dataType : "text",
						data : {
							filename : filename
						},
						success : function(result) {
							if(result == "SUCCESS"){
							}else{
								alert("삭제 실패");
							}
						}
					});
				}
				$("form").submit();
			});
		});
</script>
</body>
</html>