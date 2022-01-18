<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
	<script src="/resources/js/qna.js" type="text/javascript"></script>
	
	
</head>
<style>
.qna_ctnt {
	display: none;
}

.answer_show {
	display: none;
}

.qna_answer {
	display: none;
}
</style>
<body>
	<div id="header">
		<h3>QnA</h3>
	</div>
<%-- 	<jsp:include page="../qna/insert.jsp" /> --%>
<input id="input_board_no" type="hidden" value="${vo.board_no}">
<div class="wrap-qna-board">
	<button type = "button" class='btn_insert' onclick="qnaInsert(); return false;">작성하기</button>
<div>
</div>
	<table>
		<thead>
			<tr>
				<th>번호</th>
				<th>제목</th>
				<th>작성자</th>
				<th>작성일자</th>
			</tr>
		</thead>
		<tbody>
		</tbody>
	</table>
	</div>
	<script type="text/javascript">
	var windowObj;
	function qnaInsert(){
		         var url="../../qna/insert"; //팝업창 열기
		         var settings = "width=400,height=400,left=600";
		         
		         window.open(url,"QnA작성",settings);
		     }
		$(document).ready(function() {
			
			qnalist(board_no, 1 ,$("tbody"));
			
			$("tbody").on("click", ".qna_page_left", function(event) {
				event.preventDefault();
				var curPage = $(this).attr("href");

				if (curPage > 1) {

					qnalist(board_no, --curPage, $("tbody"));
				}

			});

			$("tbody").on("click", ".qna_page_right", function(event) {
				event.preventDefault();
				var curPage = $(this).attr("href");
				var totalPage = $(this).attr("data-totalPage");

				if (curPage < totalPage) {

					qnalist(board_no, ++curPage, $("tbody"));
				}

			});

			$("tbody").on("click", ".qna_page_no", function() {
				var curPage = $(this).text();

				qnalist(board_no, curPage, $("tbody"));
			});
			
		$("tbody").on("click",".btn_submit",function(event) {
			event.preventDefault();
			var instIdx = $(".btn_submit").index($(this));
			var qna_answer = $("[name='qna_answer']").eq(instIdx).val();
			var qna_no = $("[name='qna_no']").eq(instIdx).val();
			var curPage = $(this).text();
			
			if(qna_answer == ''){
				$("[name='qna_answer']").eq(instIdx).focus();
				return;
			}
			$.ajax({
				type : "post",
				url : "/qna/answer",
				dataType : "text",
				data : {
					qna_answer : qna_answer,
					qna_no : qna_no
				}
			});
			qnalist(board_no,curPage,$("tbody"));
		});
		
		$("tbody").on("click",".viewcontent",function() {
			var clkIdx = $(".viewcontent").index($(this));
			var qid = $(".qno").attr("id","q" + clkIdx);
			var qno = qid.eq(clkIdx).text();
			if ($(".qna_ctnt").eq(clkIdx).css("display") == "none"&& $(".qna_answer").eq(clkIdx).css("display") == "none") {
				$(".qna_ctnt").eq(clkIdx).css("display","block");
				$(".qna_answer").eq(clkIdx).css("display","block");
			} else {
				$(".qna_ctnt").eq(clkIdx).css("display","none");
				$(".qna_answer").eq(clkIdx).css("display","none");
					};
			});
		
		$("tbody").on("click",".btn_answer",function() {
			var btnIdx = $(".btn_answer").index($(this));
				$(".answer_show").toggle();
			});
		});
		
	</script>
</body>
</html>