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
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.7.2/font/bootstrap-icons.css">
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
	width: 100px;
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
<div class="container">
<p style="margin-left:75%; opacity: 0.6">조회수 : ${vo.board_viewcnt } </p>

<hr style="margin-right: 15%">

<br> <div class="container" style=" white-space: normal; white-space: pre;"> ${vo.board_content}</div>	
	<br> <br>
	
	<c:if test="${!empty managerLogin.manager_code}">
	
		
		<button class="updateui">수정 화면</button>
		</c:if>
</div>
	<div style="border: 1px solid #ddd; margin-right: 15%; margin-bottom: 20px" class="container-fluid"	>
	
		<div class="container-fluid" >
		<jsp:include page="../review/list.jsp" />
		</div>
		
		<br>	
		
	</div>
	
	<div class="quickmenu" >
		
			<button id="btn1" class=" btn btn-secondary btn-sm btn-block "> <i class="bi bi-chevron-bar-up" style="font-size: 20px"></i> </button> <br> <br>
			<button id="btn3" class=" btn btn-secondary btn-sm btn-block">리뷰 <br>바로가기</button>
			<button id="btn2" class=" btn btn-secondary btn-sm btn-block">QnA <br>바로가기</button> <br> <br>
			<button id="btn4" class=" btn btn-secondary btn-sm btn-block "> <i class="bi bi-chevron-bar-down" style="font-size: 20px"></i> </button>
		
	</div>
	<br>
	<div style="border: 1px solid #ddd; float: left; width: 85%">
<jsp:include page="../qna/list.jsp" />
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
	
	$(document).ready(function() {
		
		$('#btn1').click(function() {

			var offset = $('#div1').offset(); //선택한 태그의 위치를 반환

			//animate()메서드를 이용해서 선택한 태그의 스크롤 위치를 지정해서 0.4초 동안 부드럽게 해당 위치로 이동함 

			$('html').animate({
				scrollTop : offset.top
			}, 400);

		});

		$('#btn2').click(function() {

			var offset = $('#div2').offset(); //선택한 태그의 위치를 반환

			//animate()메서드를 이용해서 선택한 태그의 스크롤 위치를 지정해서 0.4초 동안 부드럽게 해당 위치로 이동함 

			$('html').animate({
				scrollTop : offset.top
			}, 400);

		});
		
		$('#btn3').click(function() {

			var offset = $('#div3').offset(); //선택한 태그의 위치를 반환

			//animate()메서드를 이용해서 선택한 태그의 스크롤 위치를 지정해서 0.4초 동안 부드럽게 해당 위치로 이동함 

			$('html').animate({
				scrollTop : offset.top
			}, 400);

		});
		
		$('#btn4').click(function() {

			var offset = $('#div4').offset(); //선택한 태그의 위치를 반환

			//animate()메서드를 이용해서 선택한 태그의 스크롤 위치를 지정해서 0.4초 동안 부드럽게 해당 위치로 이동함 

			$('html').animate({
				scrollTop : offset.top
			}, 400);

		});

	});
	
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
				location.assign("/board/updateui/${vo.board_no}/${curPage}/${item_no}");
			});

		});
	</script>

</body>
</html>