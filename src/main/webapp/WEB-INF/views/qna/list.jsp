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
</head>
<style>
.qna_ctnt{
display : none;
}
.answer_show{
display : none;
}
.qna_answer{
display : none;
}
</style>
<body>

<h3>QnA</h3>
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
<c:forEach items="${qvo}" var="qna">
<tr>
<td id="q" class="qno">${qna.qna_no}</td>
<td><a href="javascript:void(0)" class="viewcontent">${qna.qna_title}</a></td>
<td>${qna.member_id}</td>
<td>${qna.qna_regdate}</td>
</tr>
<tr class="qna_ctnt">
<td colspan="6">
<p>${qna.qna_content}
<button class="btn btn-primary btn_answer">답변달기</button>
</p>
<div class="answer_show">
<form action="/qna/answer" method="POST">
<input name="qna_no" type="hidden">
<textarea rows="3" name="qna_answer"></textarea>
<input type="submit" value="답변">

</form>
</div>
</td>
</tr>
<tr class="qna_answer">
<td>
<p>${qna.qna_answer}
</p>
</td>
<td>${qna.qna_updatedate}</td>
</tr>
</c:forEach>
</tbody>
</table>
	<script type="text/javascript">
	
		$(document).ready(function() {
			
			$("[type='submit']").click(function(){
				var clkIdx = $("[type='submit']").index($(this));
				var qid = $(".qno").attr("id", "q"+clkIdx);
				var qno = qid.eq(clkIdx).text();
				$("[name='qna_no']").val(qno);
				console.log(qno);
			});
			$(".viewcontent").click(function() {
				var clkIdx = $(".viewcontent").index($(this));
				var qid = $(".qno").attr("id", "q"+clkIdx);
				var qno = qid.eq(clkIdx).text();
				console.log(qno);
				if ($(".qna_ctnt").eq(clkIdx).css("display") == "none" && $(".qna_answer").eq(clkIdx).css("display")== "none") {
					$(".qna_ctnt").eq(clkIdx).css("display", "block");
					$(".qna_answer").eq(clkIdx).css("display","block");
				} else {
					$(".qna_ctnt").eq(clkIdx).css("display", "none");
					$(".qna_answer").eq(clkIdx).css("display","none");
				}
				;
			});
			$(".btn_answer").click(function() {
				var btnIdx = $(".btn_answer").index($(this));
				$(".answer_show").toggle();
			});
		});
	</script>
</body>
</html>