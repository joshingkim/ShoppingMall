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
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<script src="/resources/js/file.js"></script>
<style type="text/css">
img {
	width: 100px;
	height: 100px;
}
</style>
</head>
<body>

	<jsp:include page="../header.jsp" />
	<jsp:include page="../sidebar.jsp" />
<div class="container" style=" font-size : small;">
<h4>리뷰 목록</h4>
	<table class="table">
		<thead>
			<tr>
				<th scope="col">#</th>
				<th scope="col">이미지</th>
				<th scope="col">상품명</th>
				<th scope="col">리뷰</th>
				<th scope="col">평점</th>
				<th scope="col">리뷰 작성일</th>
				<th scope="col"></th>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${pt.list}" var="vo" varStatus="i">
				<tr>
					<td>${i.count}</td>
					<td><div data-item_no="${vo.item_no}" data-item_name="${vo.item_name}" data-file_name="${vo.file_name}" class="uploadedList${i.index}"></div></td>
					<td><a style="text-decoration: none; color: #000;" href="/item/read/${vo.item_no}">${vo.item_name}</a></td>
					<td>${vo.review_content}</td>
					<td>${vo.review_grade}</td>
					<td>${vo.review_regdate}</td>
					<td>
						 <a data-member_id="${login.member_id}" data-review_content="${vo.review_content}" data-review_grade="${vo.review_grade}" data-review_no="${vo.review_no}" href="#" class="btn btn-light btn-sm btn_review_updateui_form" data-toggle="modal" data-target="#staticBackdrop">수정</a>
					     <a data-review_no="${vo.review_no}" href="#" class="btn btn-light btn-sm btn_review_delete">삭제</a>
					</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
	
	<!-- Modal -->
	<div class="modal fade" id="staticBackdrop" data-backdrop="static"
		data-keyboard="false" tabindex="-1"
		aria-labelledby="staticBackdropLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="staticBackdropLabel">
						<span id="sp_reviewui_review_no">11</span>
					</h5>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
					<p id="sp_reviewui_member_id">홍길동</p>
					<div>
						평점 : <select id="div_reviewui_review_grade">
							<option value=5>5점</option>
							<option value=4>4점</option>
							<option value=3>3점</option>
							<option value=2>2점</option>
							<option value=1>1점</option>
						</select><br>
					</div>
					<div class="form-group">
						<input class="form-control" id="div_reviewui_review_content"
							value="안녕하세요.">
					</div>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-secondary"
						data-dismiss="modal">Close</button>
					<button type="button" class="btn btn-primary" data-dismiss="modal"
						id="btn_reviewui_update">리뷰 수정 완료</button>
				</div>
			</div>
		</div>
	</div>
	
	<div style="margin-left: 40%">
	<jsp:include page="page.jsp" />
	</div>
</div>
	<jsp:include page="../footer.jsp" />
<script type="text/javascript">
$(document).ready(function(){
	var member_id = "${login.member_id}"
	var vo ="${pt.list}";
	vo = eval(vo);
	for(var i=0; i<vo.length; i++){
		var div_class = ".uploadedList"+i;
		var item_no = $(div_class).attr("data-item_no");
		var item_name = $(div_class).attr("data-item_name");
		var file_name = $(div_class).attr("data-file_name");
		var item = uploadedItemlist(file_name,item_no);
		$(div_class).append(item);
	} 

	
	$(".btn_review_updateui_form").click(function() {
		var review_no = $(this).attr("data-review_no");
		console.log(review_no);
		$("#sp_reviewui_review_no").text(review_no);

		var member_id = $(this).attr("data-member_id");
		console.log(member_id);
		$("#sp_reviewui_member_id").text(member_id);

		var review_grade = $(this).attr("data-review_grade");
		console.log(review_grade);
		$("#div_reviewui_review_grade").val(review_grade);

		var review_content = $(this).attr("data-review_content");
		console.log(review_content);
		$("#div_reviewui_review_content").val(review_content);

	});
	
	$("#btn_reviewui_update").click(function() {
		var review_no = $("#sp_reviewui_review_no").text();
		var review_grade = $("#div_reviewui_review_grade").val();
		var review_content = $("#div_reviewui_review_content").val();

		console.log(review_grade);
		console.log(review_content);

		$.ajax({
			type : "put",
			url : "/replies/" + review_no,
			headers : {
				"Content-Type" : "application/json",
				"X-HTTP-Method-Override" : "PUT"
			},
			dataType : "text",
			data : JSON.stringify({
				review_content : review_content,
				review_grade : review_grade

			}),
			success : function(result) {
				if (result == "SUCCESS") {
					alert("수정되었습니다.");
					window.location.reload();
				}
			}
		});
	});
	
	$(".btn_review_delete").click(function() {
		var review_no = $(this).attr("data-review_no");
		$.ajax({
			type : "delete",
			url : "/replies/" + review_no,
			headers : {
				"Content-Type" : "application/json",
				"X-HTTP-Method-Override" : "DELETE"
			},
			dataType : "text",
			success : function(result) {
				if (result == "SUCCESS") {
					alert("삭제되었습니다.");
					window.location.reload();
				}
			}
		});

	});
	
});


</script>

</body>
</html>