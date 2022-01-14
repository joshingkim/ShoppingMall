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
  <script src="/resources/js/file.js" type="text/javascript"></script>
<style type="text/css">
	img{
		width: 250px;
  		height: 250px;
	}
</style>
</head>
<body>
	<jsp:include page="../header.jsp" />

	<jsp:include page="../sidebar.jsp" />
	
	<div class="row mb-2">
    <div class="col-md-6">
      <div class="row g-0 border rounded overflow-hidden flex-md-row mb-4 shadow-sm h-md-250 position-relative">
      <div class="col-auto d-none d-lg-block">
          <svg class="bd-placeholder-img" width="200" height="250" xmlns="http://www.w3.org/2000/svg" role="img" aria-label="Placeholder: Thumbnail" preserveAspectRatio="xMidYMid slice" focusable="false"><div class="uploadedList row"></div><rect width="100%" height="100%" fill="#55595c"/></svg>
        </div>
        <div class="col p-4 d-flex flex-column position-static">
          <strong class="d-inline-block mb-2 text-primary">${ivo.item_no}/${ivo.item_category}</strong>
          <h3 class="mb-0">${ivo.item_name}</h3>
          <div class="mb-1 text-muted">${ivo.item_regdate}</div>
			<p class="card-text mb-auto">
				사이즈 : ${ivo.item_size}<br>
				색상 : ${ivo.item_color}<br>
				가격 : ${ivo.item_price}<br>
				할인률 :${ivo.discount_percentage}%<br>
				<a href="/item/update/${ivo.item_no}">수정</a>/<a href="/item/list">목록</a>/<a id="delete" href="#">삭제</a>
			</p>
        </div>
      </div>
    </div>
	<jsp:include page="../board/read.jsp" />
<script type="text/javascript">
var item_no = ${ivo.item_no};
	$(document).ready(function(){
		
		$.getJSON("/file/getFile/"+item_no, function(data) {
			for(var i=0; i<data.length; i++){
				var item = uploadedItemForRead(data[i]);
				$(".uploadedList").append(item);
			}
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