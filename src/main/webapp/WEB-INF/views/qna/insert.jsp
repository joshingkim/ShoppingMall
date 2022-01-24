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



<<div class="modal-dialog">
<input id="inputed_board_no" name="board_no" value="" hidden><br>
<input id="member_id" name="member_id" value="${login.member_id}" hidden><br>
         <div class="modal-content">
            <div class="modal-header">
               <h5 class="modal-title">
                  <span>상품문의</span>
               </h5>
               
            </div>
            <div class="modal-body">
               <div class="form-group">
                  제목<input class="form-control" id="qna_title" name="qna_title" maxlength="33">
               </div>   
               
                <div class="form-group">

    내용<textarea class="form-control" id="qna_content" name="qna_content" rows="5" maxlength="100"></textarea>
  </div>
            </div>
            <div class="modal-footer">
               <input type="submit" class="btn btn-primary" data-dismiss="modal"value="QnA 문의 완료">
            </div>
         </div>
      </div>

<script type="text/javascript">
var bno = window.opener.document.getElementById("input_board_no").value;
$("#inputed_board_no").attr("value", bno);

$(document).ready(function(){
$("input[type='submit']").click(function(event){
	event.preventDefault();
var board_no = $("input[name='board_no']").val();
var member_id = $("input[name=member_id]").val();
var qna_title = $("input[name=qna_title]").val();
var qna_content = $("[name='qna_content']").val();

	if($("#member_id").val() ==''){
		$("#member_id").focus();
		return;
	}
	if($("#qna_title").val() ==''){
		$("#qna_title").focus();
		return;
	}
	if($("#qna_content").val() ==''){
		$("#qna_content").focus();
		return;
	}
	$.ajax({
		type : "post",
		url : "/qna/insert",
		dataType : "text",
		data : {
			board_no : board_no,
			member_id : member_id,
			qna_title : qna_title,
			qna_content : qna_content
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