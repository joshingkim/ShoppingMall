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
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
	<link href="stylesheet.css" media="screen" rel="stylesheet" type="text/css" />
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<style type="text/css">
body {
    font-size: 12px;
    margin: 0;
}

#rolling {
    margin: 20px;
    padding: 10px;
}

#roll a {
    color: black;
    text-decoration: none;
}

#roll a:hover {
    text-decoration: underline;
}

#roll {
    overflow: hidden;
    width: 160px;
    height: 20px;
    margin: 0;
}


#roll ul {
    position: relative;
    margin: 0;
}

#roll ol {
    position: absolute;
    top: 0;
    left: 0;
    margin: 0;
    padding: 0;
    list-style-type: none;
}

#roll li {
    height: 20px;
    line-height: 20px;
}
</style>
</head>
<body>
	<jsp:include page="header.jsp" />
	<div class="container">
		<h1 align="center">다판다</h1>
		<div class="search" align="right">
			<form action="/search/search" method="get" name="q">
				ID:<input name="member_id"> <select name="item_category">
					<option value="all">전체</option>
					<option value="watches">시계</option>
					<option value="necklaces">목걸이</option>
					<option value="rings">반지</option>
					<option value="braclets">팔찌</option>
					<option value="hairpins">머리핀</option>
					<option value="earings">귀걸이</option>
				</select> <input id="search" name="keyword" placeholder="검색 할 상품명을 입력해주세요!">
				<button class="btn_search_btn">
					<span href="javascript:void(0)" class="btn_search"><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-search" viewBox="0 0 16 16">
  							<path d="M11.742 10.344a6.5 6.5 0 1 0-1.397 1.398h-.001c.03.04.062.078.098.115l3.85 3.85a1 1 0 0 0 1.415-1.414l-3.85-3.85a1.007 1.007 0 0 0-.115-.1zM12 6.5a5.5 5.5 0 1 1-11 0 5.5 5.5 0 0 1 11 0z" />
					</svg></span>
				</button>
			</form>
			<br>
			<div id="rolling">

				<div id="roll">
					<ul>
						<ol>
							<li><a href="#">모두들</a></li> <!-- 관련검색어/ 롤링할 데이터 입력공간 -->
							<li><a href="#">고생이</a></li>
							<li><a href="#">많아요</a></li>
							<li><a href="#">화이팅</a></li>
							<li><a href="#">힘내요</a></li>
						</ol>
					</ul>
				</div>
			</div>
		</div>
	</div>


	<jsp:include page="footer.jsp" />
	<script type="text/javascript">
		$(function() {
			var count = $('#rolling li').length;
			var height = $('#rolling li').height();

			function step(index) {
				$('#rolling ol').delay(2000).animate({
					top : -height * index,
				}, 500, function() {
					step((index + 1) % count);
				});
			}

			step(1);
		});
	</script>
</body>
</html>