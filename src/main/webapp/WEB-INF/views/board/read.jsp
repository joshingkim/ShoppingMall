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
  <script src="/resources/js/board.js" type="text/javascript"></script>
</head>
<body>

보드리드

board_no : ${vo.board_no} <br>
item_no : ${vo.item_no } <br>
board_title : ${vo.board_title } <br>
board_content : ${vo.board_content} <br>
board_regdate : ${vo.board_regdate } <br>
board_updatedate : ${vo.board_updatedate } <br>
board_viewcnt : ${vo.board_viewcnt }


<button class="updateui">수정 화면</button> 
<button class="delete">삭제</button> 
<button>목록</button> 
<button id="btn_reviewui_show">댓글화면</button><br>

<div id="reviewContainer">
	작성자: <input id="member_id"><br>
	리뷰: <input id="review_content"><br>
평점 : <select id="review_grade">

<option value="5" selected>5점</option>

<option value="4">4점</option>

<option value="3">3점</option>

<option value="2">2점</option>

<option value="1">1점</option>

</select><br>
	<button id="btn_review_input">리뷰 완료</button>	
</div>


<div id="replies" class="mt-5">

</div>




<script type="text/javascript">
var board_no = ${vo.board_no};

$(document).ready(function(){
	
	
	
	
	
	getRepliesPage(board_no, 1, $("#replies"));
	
	
	$("#replies").on("click", ".reply_page_left", function(event) {
		event.preventDefault();
		var curPage = $(this).attr("href");
		
		if(curPage > 1){
			
			getRepliesPage(board_no, --curPage, $("#replies"));
		}
		
		
	});
	
	$("#replies").on("click", ".reply_page_right", function(event) {
		event.preventDefault();
		var curPage = $(this).attr("href");
		var totalPage = $(this).attr("data-totalPage");
		
		
		
		if(curPage < totalPage){
			
			getRepliesPage(board_no, ++curPage, $("#replies"));
		}
		
		
	});
	
	
	$("#replies").on("click", ".reply_page_no", function() {
		var curPage = $(this).text();
		
		getRepliesPage(board_no, curPage, $("#replies"));
	});
	
	
	
	
	
	
	
	$("#btn_review_input").click(function() {
		var member_id = $("#member_id").val();
		var review_content = $("#review_content").val();
		var review_grade = $("#review_grade").val();
		
		if(member_id == ''){
			$("#member_id").focus();
			return;
		}
		
		if(review_content == ''){
			$("#review_content").focus();
			return;
		}
		
		if (review_grade == '') {
			$("review_grade").focus();
			return;
		}
	
		
		$.ajax({
			type : "post",
			url : "/replies",
			headers : {
				"Content-Type" : "application/json",
				"X-HTTP-Method-Override" : "POST"
			},
			dataType : "text",
			data : JSON.stringify({
				board_no : board_no,
				member_id : member_id,
				review_content : review_content,
				review_grade : review_grade
			}), 	
			success : function(result) {
				if(result=="SUCCESS"){
					$("#member_id").val("");
					$("#review_content").val("");
					$("#review_grade").val("");
					$("#reviewContainer").hide();
					
					getAllReplies(board_no, $("#replies"));
					
				}
				
			}
		});
		
		
	});
	
	$("#btn_reviewui_show").click(function() {
		$("#reviewContainer").toggle();
	});

	$("body").on("click", ".updateui", function() {
		location.assign("/board/updateui/${vo.board_no}/${curPage}");
	});
	
	
	
	
	
});

</script>

</body>
</html>