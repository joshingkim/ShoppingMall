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


<div class="modal-dialog">
<form action="/board/update/${vo.board_no}/${item_no}" method="post">
			<div class="modal-content">
				<div class="modal-header">	
					<h5 class="modal-title">
						<span>보드수정</span>
					</h5>
					
				</div>
				<div class="modal-body">
					<div class="form-group">
						아이템넘버<input class="form-control" name="item_no" value="${vo.item_no}" readonly>
					</div>	
					<div class="form-group">
						제목<input class="form-control" name="board_title" value="${vo.board_title }">
					</div>	
					
					 <div class="form-group">

    내용<textarea class="form-control" name="board_content" rows="5">${vo.board_content }</textarea>
  </div>
				</div>
				<div class="modal-footer">
					<input type="submit" class="btn btn-primary" data-dismiss="modal"
							 value="보드 수정 완료">
				</div>
			</div>
			</form>
		</div>

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