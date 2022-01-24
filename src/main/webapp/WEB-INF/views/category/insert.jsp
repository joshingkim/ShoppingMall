<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Category Insert</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</head>
<body>
	<jsp:include page="../header.jsp" />

	<jsp:include page="../sidebar.jsp" />
	<div class="row mb-2 container">
		<div class="col-md-10">
			<div style="margin-top : 80px; margin-left: 30%;" class="row g-0 border rounded overflow-hidden flex-md-row mb-4 shadow-sm h-md-250 position-relative">
					<div class="col p-4 d-flex flex-column position-static">
						<p class="card-text mb-auto"><h4>카테고리 등록</h4></p>
						<form action="/category/insert" method="post">
							<div class="input-group mb-2"> 
								<span class="input-group-text">category</span>
								<select id="item_category1" name="item_category1" >
									<option>선택하세요</option>
									<option value="direct">직접 입력</option>
									<c:forEach items="${list}" var="list">
										<option>${list.item_category}</option>
									</c:forEach>
								</select>
								<input name="item_category" id="item_category" value="카테고리"><br>
							</div>
							<div class="input-group mb-2"> 
								<span class="input-group-text">item</span>
								<input name="item_name" maxlength="30" style="width: 250px;">
							</div>
							<input type="submit" value="등록 완료">
						</form>
					</div>
			</div>
		</div>
	</div>
	<jsp:include page="../footer.jsp" />
	<script type="text/javascript">
		$(document).ready(function() {
			$("#item_category").hide();
			$("#item_category1").change(function(){
				$("#item_category1 option:selected").each(function () {
						if($(this).val()== 'direct'){ 
							$("#item_category").show();
							$("#item_category").val('');       
						}else{
							$("#item_category").hide();
							$("#item_category").val($(this).text()); 
						}
				   });
				});
			
			$("input[type='submit']").click(function(event) {
				event.preventDefault();
				var item_name = $("[name='item_name']").val();
				if (item_name == '') {
					$("[name='item_name']").focus();
					return;
				}
				var item_category = $("#item_category").val();
				if (item_category == '') {
					$("#item_category").focus();
					return;
				}
				if (item_category == '카테고리') {
					$("[name='item_category1']").focus();
					return;
				}
				$("form").submit();
			});
		});
	</script>
</body>
</html>