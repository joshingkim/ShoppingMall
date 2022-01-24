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




<div class="modal-dialog" id="reviewContainer">
<input hidden name="board_no" value="${board_no}">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title">
						<span>리뷰작성</span>
					</h5>
					
				</div>
				<div class="modal-body">
					<div class="form-group">
						작성자<input class="form-control" name="member_id" id="member_id" value="${login.member_id }" readonly>
					</div>	
					<div>
						평점 : <select name="review_grade" id="review_grade">
							<option value=5 selected>5점</option>
							<option value=4>4점</option>
							<option value=3>3점</option>
							<option value=2>2점</option>
							<option value=1>1점</option>
						</select><br>
					</div><br>
					
					
					 <div class="form-group">

    리뷰<textarea class="form-control" name="review_content" id="review_content" rows="5" maxlength="33"></textarea>
  </div>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-primary" data-dismiss="modal"
						id="btn_review_input">리뷰완료</button>
				</div>
			</div>
		</div>

	<script type="text/javascript">
		var board_no = ${board_no};

		$(document).ready(function() {
			



		
			$("#btn_review_input").click(function() {
				var member_id = $("#member_id").val();
				var review_content = $("#review_content").val();
				var review_grade = $("#review_grade").val();

				if (member_id == '') {
					$("#member_id").focus();
					return;
				}

				if (review_content == '') {
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
						if (result == "SUCCESS") {
							$("#member_id").val("");
							$("#review_content").val("");
							$("#review_grade").val("");
							$("#reviewContainer").hide();

							getAllReplies(board_no, $("#replies"));
							
							opener.parent.location.reload();
							window.close() 
							//팝업창 닫기 및 부모창 새로고침
						}

					}
				});
							
			});

		});
	</script>



</body>
</html>