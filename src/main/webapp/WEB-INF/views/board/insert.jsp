<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>보드insert</title>
</head>
<body>
보드인설트

<form action="/board/insert" method="post">
아이템넘버 :<input name="item_no" readonly> <br>
제목 :<input name="board_title"> <br>
내용 :<br>
<textarea rows="10" name="board_content"></textarea> <br>
<input type="submit" value="작성 완료">

</form>






<script type="text/javascript">

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
	 
	 
});

</script>


</body>
</html>