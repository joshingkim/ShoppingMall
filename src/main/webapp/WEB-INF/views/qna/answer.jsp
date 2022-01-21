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
<body>
<p>상품문의</p>
Q&A 번호: <input id="inputed_qna_no" name="qna_no" value="" readonly><br>
내용 : <textarea id="qna_answer" name="qna_answer" rows="5" maxlength="300"></textarea><br>
<input type="submit" value="답변하기">
<script type="text/javascript">
var qno = window.opener.document.getElementById("qna_no").value;
$("#inputed_qna_no").attr("value", qno);

$(document).ready(function(){
	
$("input[type='submit']").click(function(event){
	event.preventDefault();
var qna_no = $("input[name='qna_no']").val();
var qna_answer = $("[name='qna_answer']").val();

	if($("#qna_answer").val() ==''){
		$("#qna_answer").focus();
		return;
	}
	$.ajax({
		type : "post",
		url : "/qna/answer",
		dataType : "text",
		data : {
			qna_no : qna_no,
			qna_answer : qna_answer
		},
		success : function(result){
	window.opener.location.reload();
	window.close();	
		}
	
	});
});

});
</script>
</body>
</html>