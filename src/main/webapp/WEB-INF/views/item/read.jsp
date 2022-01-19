<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Item Read</title>
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
	
	<div class="row mb-2 container" style="margin-left: 5%;">
    <div class="col-md-10">
      <div class="row g-0 border rounded overflow-hidden flex-md-row mb-4 shadow-sm h-md-250 position-relative">
        <div class="uploadedList"></div>
        <div class="col p-4 d-flex flex-column position-static">
          <strong class="d-inline-block mb-2 text-primary">${ivo.item_category}</strong>
          <h3 class="mb-0">${ivo.item_name}</h3>
          <div class="mb-1 text-muted">${ivo.item_regdate}</div>
			<p class="card-text mb-auto">
				<select id="item_size" name="item_size" >
					<option>선택하세요</option>
				</select><br>
				<select id="item_color" name="item_color" >
					<option>선택하세요</option>
				</select><br>
				가격 : ${ivo.item_price}<br>
				할인률 :${ivo.discount_percentage}%<br>
				<a href="">찜</a>/<a href="">구매</a>				
			</p>
        </div>
      </div>
      </div>
      <jsp:include page="../board/read.jsp" />
    </div>
<jsp:include page="../footer.jsp" />
<script type="text/javascript">
var item_no = ${ivo.item_no};
var item_name = "${ivo.item_name}";
	$(document).ready(function(){
		
		$.getJSON("/item/getItem_size/"+item_name, function(data) {
			for(var i=0; i<data.length; i++){
				var msg = "<option>"+data[i]+"</option>";
				$("#item_size").append(msg);
			}
		});
		
		$.getJSON("/item/getItem_color/"+item_name, function(data) {
			for(var i=0; i<data.length; i++){
				var msg = "<option>"+data[i]+"</option>";
				$("#item_color").append(msg);
			}
		});
		
		$.getJSON("/file/getFile/"+item_no, function(data) {
			/* for(var i=0; i<data.length; i++){ */
				var item = uploadedItemForRead(data[0]);
				$(".uploadedList").append(item);
			/* } */
		});
		
		$('#delete').click(function() { 
			var result = confirm('삭제 하시겠습니까?'); 
			if(result) { 
				location.assign("/item/delete/${vo.item_no}");
			}else{ 
				
			} 
		}); 
	});
</script>
</body>
</html>