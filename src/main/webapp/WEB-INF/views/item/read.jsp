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
</head>
<body>
	아이템 넘버 : ${vo.item_no}<br>
	아이템 명 : ${vo.item_name}<br>
	카테고리 명 : ${vo.item_category}<br>
	아이템 사이즈 : ${vo.item_size}<br>
	아이템 컬러 : ${vo.item_color}<br>
	아이템 가격 : ${vo.item_price}<br>
	할인률 : ${vo.discount_percentage}%<br>
	아이템 재고 수량 : ${vo.item_amount}<br>
	아이템 등록일 : ${vo.item_regdate}<br>
	<div class="uploadedList row"></div>
	<a href="/item/update/${vo.item_no}">수정</a>/<a href="/item/list">목록</a>/<a id="delete" href="#">삭제</a>
<script type="text/javascript">
var item_no = ${vo.item_no};
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