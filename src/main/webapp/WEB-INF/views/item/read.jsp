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
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.7.2/font/bootstrap-icons.css">
<style type="text/css">
	img{
		width: 300px;
  		height: 300px;
  		margin: 20px;
	}
	li{
		list-style: none;
	}
	.product_article_tit {
    display: inline-block;
    width: 110px;
	}
	.product_article_contents {
		display: inline-block;
		width: 282px;
		font-family: "Apple SD Gothic Neo", "Noto Sans KR", sans-serif;
		font-weight: bold;
	}
	select {
		width: 200px;
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
          <div class="mb-1 text-muted">${ivo.item_regdate}</div><br>
			<p class="card-text mb-auto">
				
				<li>
					<p class="product_article_tit">가격</p>
					<p class="product_article_contents">${ivo.item_price}</p>
				</li>
				<li>
					<p class="product_article_tit">할인률</p>
					<p class="product_article_contents">${ivo.discount_percentage}%</p>
				</li>
				<li>
				<p class="product_article_tit">사이즈</p>
				<select id="item_size" name="item_size" >
					<option>선택하세요</option>
				</select><br>
				</li>
				<li>
				<p class="product_article_tit">색상</p>
				<select id="item_color" name="item_color" >
					<option>선택하세요</option>
				</select><br>
				</li>
				<br>
				<div class="row">
					<div style="margin-left: 10px;">
						<a id="buy" style="width: 200px; height: 50px; text-align:center;" class="btn btn-dark btn-lg" href="/order/insert/${login.member_id}">구매하기</a>
					</div>
					<div style="width: 50px; height: 50px; text-align:center; margin-left: 10px;" class="border rounded border-dark">
						<a id="heart" style="color: red;" href="">
							<i style=" margin-top : 10px; font-size: 30px;" class="bi bi-heart"></i>
						</a>
					</div>
					<div style="width: 50px; height: 50px; text-align:center; margin-left: 10px;" class="border rounded border-dark">
						<a id="cart" style="color: #000;" href="">
							<svg style="margin-top : 5px;" xmlns="http://www.w3.org/2000/svg" width="30" height="30" fill="currentColor" class="bi bi-cart2" viewBox="0 0 16 16">
  								<path d="M0 2.5A.5.5 0 0 1 .5 2H2a.5.5 0 0 1 .485.379L2.89 4H14.5a.5.5 0 0 1 .485.621l-1.5 6A.5.5 0 0 1 13 11H4a.5.5 0 0 1-.485-.379L1.61 3H.5a.5.5 0 0 1-.5-.5zM3.14 5l1.25 5h8.22l1.25-5H3.14zM5 13a1 1 0 1 0 0 2 1 1 0 0 0 0-2zm-2 1a2 2 0 1 1 4 0 2 2 0 0 1-4 0zm9-1a1 1 0 1 0 0 2 1 1 0 0 0 0-2zm-2 1a2 2 0 1 1 4 0 2 2 0 0 1-4 0z"/>
							</svg>
						</a>
					</div>
				</div>
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
var member_id = "${login.member_id}";
var item_price = ${ivo.item_price};
 	$(document).ready(function(){
		
 		if(member_id != null || member_id != ""){
 			$.getJSON("/likeitem/count/"+item_no+"/"+member_id, function(data) {
 				if (data != 0) {
 					$(".bi-heart").addClass("bi-heart-fill").removeClass("bi-heart");
 				}
 			});
 		}
 		
 		$.getJSON("/file/getFile/"+item_no, function(data) {
			/* for(var i=0; i<data.length; i++){ */
				var item = uploadedItemForRead(data[0]);
				$(".uploadedList").append(item);
			/* } */
		});
 		
		$.getJSON("/item/getItem_size/"+item_name, function(data) {
			
			for(var i=0; i<data.length; i++){
				console.log(data[i]);
				var msg = "<option>"+data[i]+"</option>";
				$("#item_size").append(msg);
			}
		});
		
		$.getJSON("/item/getItem_color/"+item_name, function(data) {
			for(var i=0; i<data.length; i++){
				console.log(data[i]);
				var msg = "<option>"+data[i]+"</option>";
				$("#item_color").append(msg);
			}
		});
		
		
		
		$('#delete').click(function() { 
			var result = confirm('삭제 하시겠습니까?'); 
			if(result) { 
				location.assign("/item/delete/${vo.item_no}");
			}else{ 
				
			} 
		});
		
		$('#heart').click(function(event) { 
			event.preventDefault();
			if(member_id == null || member_id == ""){
				alert("로그인시 이용 가능합니다");
				return;
			}
			$.getJSON("/likeitem/count/"+item_no+"/"+member_id, function(data) {
		    	
	            if (data == 0) {
	               $.ajax({
	                  type : "post",
	                  url : "/likeitem/insert/"+item_no+"/"+member_id,
	                  dataType : "text",
	                  success : function() {
	                	$(".bi-heart").addClass("bi-heart-fill").removeClass("bi-heart");
	                  }
	               });
	            } else {
	               $.ajax({
	                  type : "post",
	                  url : "/likeitem/delete",
	                  dataType : "text",
	                  data : {
	                    item_no : item_no,
	                    member_id : member_id,
	                  },
	                  success : function() {
	                	  $(".bi-heart-fill").addClass("bi-heart").removeClass("bi-heart-fill");
	                  }
	               });
	            } 
	          });
		});
		$('#cart').click(function(event) { 
			event.preventDefault();
			var item_size = $("#item_size option:selected").val();
			var item_color = $("#item_color option:selected").val();
			
			if (item_size == '선택하세요') {
				alert("사이즈를 선택하세요");
				return;
			}
			if (item_color == '선택하세요') {
				alert("색상을 선택하세요");
				return;
			}
			$.getJSON("/item/getItme_no/"+item_name+"/"+item_size+"/"+item_color, function(item_no) {
				$.ajax({
	            	type : "post",
	            	url : "/cart/insert/"+member_id,
	            	dataType : "text",
	            	data : {
	                    item_no : item_no,
	                    member_id : member_id,
	             		cart_price : item_price
	             	},
	            	success : function() {
	                	  
	            	}
	            });
				var result = confirm('장바구니에 추가 되었습니다.이동하시겠습니까?'); 
				if(result) { 
					location.assign("/cart/read/"+member_id);
				} else { 
					
				}
			});
		});
		$('#buy').click(function(event) { 
			event.preventDefault();
			var item_size = $("#item_size option:selected").val();
			var item_color = $("#item_color option:selected").val();
			
			if (item_size == '선택하세요') {
				alert("사이즈를 선택하세요");
				return;
			}
			if (item_color == '선택하세요') {
				alert("색상을 선택하세요");
				return;
			}
			$.getJSON("/item/getItme_no/"+item_name+"/"+item_size+"/"+item_color, function(item_no) {
				if(member_id == null || member_id == ""){
					alert("로그인시 이용 가능합니다");
					return;
				}
				location.assign("/order/insert/"+member_id+"/"+item_no);
			});
		});
		
	});
</script>
</body>
</html>