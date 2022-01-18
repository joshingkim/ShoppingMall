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
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<script src="/resources/js/board.js" type="text/javascript"></script>
<style type="text/css">
div, ul, li {
	-webkit-box-sizing: border-box;
	-moz-box-sizing: border-box;
	box-sizing: border-box;
	padding: 0;
	margin: 0
}

a {
	text-decoration: none;
}

.quickmenu {
	position: absolute;
	width: 200px;
	top: 35%;
	margin-top: -100px;
	right: 20px;
	background: #fff;
}

.quickmenu ul {
	position: relative;
	float: left;
	width: 100%;
	display: inline-block;
	*display: inline;
	border: 1px solid #ddd;
}

.quickmenu ul li {
	float: left;
	width: 100%;
	border-bottom: 1px solid #ddd;
	text-align: center;
	display: inline-block;
	*display: inline;
}

.quickmenu ul li a {
	position: relative;
	float: left;
	width: 100%;
	height: 30px;
	line-height: 30px;
	text-align: center;
	color: #999;
	font-size: 9.5pt;
}

.quickmenu ul li a:hover {
	color: #000;
}

.quickmenu ul li:last-child {
	border-bottom: 0;
}

.content {
	position: relative;
	min-height: 1000px;
}
</style>

</head>
<body>
	<div>
		board_content : ${vo.board_content} <br>
		board_regdate : ${vo.board_regdate } <br> 
		board_updatedate : ${vo.board_updatedate } <br> 
		board_viewcnt : ${vo.board_viewcnt } <br> 
		<input type="button" value="리뷰쓰기" onclick="nwindow()" />
		<button class="updateui">수정 화면</button>
		<jsp:include page="../review/list.jsp" />
		<div id="replies" class="mt-5"></div>
		<br>
		<jsp:include page="../qna/list.jsp" />
	</div>

	<div class="quickmenu">
		<ul>
			<li><button id="btn1">div1로 이동</button></li>
			<li><a href="#">1:1문의</a></li>
			<li><a href="#">후기</a></li>
		</ul>
	</div>
	<br>

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
	<script>
		$(document).ready(function() {

			$('#btn1').click(function() {

				var offset = $('#div1').offset(); //선택한 태그의 위치를 반환

				//animate()메서드를 이용해서 선택한 태그의 스크롤 위치를 지정해서 0.4초 동안 부드럽게 해당 위치로 이동함 

				$('html').animate({
					scrollTop : offset.top
				}, 400);

			});

		});
	</script>
	<script type="text/javascript">
	 function nwindow(){
         var url="../../board/reviewinsert/"+${vo.board_no};
         window.open(url,"","width=400,height=400,left=600");
     }
		var board_no = ${vo.board_no};
		$(document).ready(function() {
			$(document).ready(function() {
				var currentPosition = parseInt($(".quickmenu").css("top"));
				$(window).scroll(function() {
					var position = $(window).scrollTop();
					$(".quickmenu").stop().animate({
						"top" : position + currentPosition + "px"
					}, 1000);
				});
			});
			$("body").on("click", ".updateui", function() {
				location.assign("/board/updateui/${vo.board_no}/${curPage}");
			});

		});
	</script>

</body>
</html>