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
table {
table-layout: fixed;
}
.qna_ctnt {
display: none;
}

.answer_show {
display: none;
}

.qna_answer {
display: none;
}
.area-answer {
display: none;
width : auto;
}

tr {
valign : baseline;
text-align: center;
}

.table td {
text-overflow: ellipsis;
overflow: hidden;
white-space: nowrap;
}

tr, .qna_ctnt{
width : 250px;
}
p {
text-overflow: ellipsis;
overflow: hidden;
white-space : pre-line;
word-break: break-all;
}
.pagingline {
display : table-row;
justify-content: space-around;
position: relative;
top: 10px;
left : 365px;
}


</style>
<body>
	<div id="div2" class="table-responsive" style="margin: 50px 0px 20px 20px;">
		<h3>QnA</h3>
	</div>
<form>
<input id="input_board_no" type="hidden" value="${vo.board_no}">
<input id="managerCode" type="hidden" value="${managerLogin.manager_code}">
<div class="wrap-qna-board container">
	<button type = "button" class='btn_insert btn btn-secondary btn-sm btn_showqna' onclick="qnaInsert(); return false;">QnA 작성하기</button>

	
	</div>
	<br>
<div class="">
	<table class="table">
		<colgroup>
			<col width="10%">
			<col width="auto%">
			<col width="15%">
			<col width="25%">
		</colgroup>
		<thead class="thead">
			<tr>
				<th scope="col">번호</th>
				<th scope="col">제목</th>
				<th scope="col">작성자</th>
				<th scope="col">작성일자</th>
			</tr>
		</thead>
		
		<tbody>
		
		</tbody>
	</table>
	</div>
	</form>
	<script type="text/javascript">
	var mcode = $("#managerCode").val();
	function qnaInsert(){
		         var url="../../qna/insert"; //Q&A작성 팝업창 열기
		         var settings = "width=400,height=500,left=600";
		         
		         window.open(url,"QnA작성",settings);
		     }
	
	function qnaAnswer(){
		         var url="../../qna/answer"; //Q&A답변 팝업창 열기
		         var settings = "width=400,height=500,left=600";
		         
		         window.open(url,"QnA답변",settings);
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
			
		$("tbody").on("click",".btn_answer",function(event) {
			event.preventDefault();
			var qna_no = $(this).attr("data-qna_no");
			$("#qna_no").attr("value", qna_no);
			qnaAnswer();
		});
// 		$(".btn_answerform").click(function(){
// 			var clkIdx = $(".btn_answerform").index($(this));
// 			if ($(".area-answer").css("display") == "none"){
// 				$(".area-answer").css("display","table-row")
// 			} else {
// 				$(".area-answer").css("display","none");
// 			}
// 		});
		
		$("tbody").on("click",".viewcontent",function() {
	         var clkIdx = $(".viewcontent").index($(this));
	         var val = $(".qa").eq(clkIdx).text();
	         
	         if ($(".qna_ctnt").eq(clkIdx).css("display") == "none"&& $(".qna_answer").eq(clkIdx).css("display") == "none") {
	            $(".qna_ctnt").eq(clkIdx).css("display","table-row");
	            if(val != 'null'){
	            $(".qna_answer").eq(clkIdx).css("display","table-row");
	            }
	            if(mcode > 0 ){
	               $(".area-answer").css("display", "inline-flex");
	               if(val != 'null'){
	               $(".btn_answer").eq(clkIdx).text("답변수정");
	               console.log(val);
	               }else{
	                  
	               }
	               
	            }
	         } else {
	            $(".qna_ctnt").eq(clkIdx).css("display","none");
	            $(".qna_answer").eq(clkIdx).css("display","none");
	         };
	         });
	      
	      });
		
	</script>
</body>
</html>