<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html>
<html>
<meta charset="utf-8">
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="/resources/js/sidebar.js" type="text/javascript"></script>

<title>My page Sidebar</title>
</head>
<body>
	<div class="container-fluid">
		<div class="row">
			<nav id="sidebarMenu"
				class="col-md-3 col-lg-2 d-md-block bg-light sidebar collapse">
				<div class="sidebar-sticky pt-3">

					<ul class="nav flex-column mb-2">
						<li class="nav-item"><a class="nav-link text-muted" href="/order/detail/${login.member_id}">
								<span data-feather="file-text"></span> 주문/배송
						</a></li>
						<li class="nav-item"><a class="nav-link text-muted" href="">
								<span data-feather="file-text"></span> 교환/환불
						</a></li>
						<li class="nav-item"><a class="nav-link text-muted" href="/cart/read/${login.member_id}">
								<span data-feather="file-text"></span> 장바구니
						</a></li>
						<li class="nav-item"><a class="nav-link text-muted" href="">
								<span data-feather="file-text"></span> 좋아요
						</a></li>
						<li class="nav-item"><a class="nav-link text-muted" href="/Myreplies/${login.member_id}">
								<span data-feather="file-text"></span> 리뷰 목록
						</a></li>
						<li class="nav-item"><a class="nav-link text-muted" href="">
								<span data-feather="file-text"></span> QnA 목록
						</a></li>
					</ul>

				</div>
			</nav>
		</div>
	</div>
</body>
</html>