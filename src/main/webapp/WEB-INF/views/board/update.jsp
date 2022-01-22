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
  <script src="/resources/js/test.js" type="text/javascript"></script>
</head>
<body>

<form action="/board/update/${vo.board_no}/${curPage}" method="post">
아이템넘버 :<input name="item_no" value="${vo.item_no}" readonly> <br>
제목 :<input name="board_title" value="${vo.board_title }"> <br>
내용 :<br>
<textarea rows="10" name="board_content">${vo.board_content }</textarea> <br>
	<input type="submit" value="글 수정 완료">

</form>



<script type="text/javascript">

var board_no = ${vo.board_no};

$(document).ready(function() {
	
	
	
	
	$("input[type='submit']").click(function(event) {
		event.preventDefault();
		
		var item_no = $("[name='item_no']").val();
		if(item_no == ''){
			$("[name='item_no']").focus();
			return;
		}
		
		var board_title = $("[name='board_title']").val();
		if(board_title == ''){
			$("[name='board_title']").focus();
			return;
		}
		
		var board_content = $("[name='board_content']").val();
		if(board_content == ''){
			 $("[name='board_content']").focus();
			return;
		}
		
		$("form").submit();
		
	});
	
	
	
)};




</script>

</body>
</html>