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

<title>Insert title here</title>
</head>
<body>
	<div class="container-fluid">
		<div class="row">
			<nav id="sidebarMenu"
				class="col-md-3 col-lg-2 d-md-block bg-light sidebar collapse">
				<div class="sidebar-sticky pt-3">


					<h6 class="sidebar-heading d-flex justify-content-between align-items-center px-3 mt-4 mb-1 text-muted">
						<a class="d-flex align-items-center text-muted" href="/item/list"
							aria-label="Add a new report"> ALL<span
							data-feather="plus-circle"></span>
						</a>
					</h6>
					<ul class="nav flex-column category_list">
					</ul>

					<h6 class="sidebar-heading d-flex justify-content-between align-items-center px-3 mt-4 mb-1 text-muted">
						<span>Saved reports</span> <a
							class="d-flex align-items-center text-muted" href="#"
							aria-label="Add a new report"> <span
							data-feather="plus-circle"></span>
						</a>
					</h6>
					<ul class="nav flex-column mb-2">
						<li class="nav-item"><a class="nav-link text-muted" href="/404page">
								<span data-feather="file-text"></span> 고객센터
						</a></li>
						<li class="nav-item"><a class="nav-link text-muted" href="/fnq/list">
								<span data-feather="file-text"></span> 자주 묻는 질문
						</a></li>
						
					</ul>
				</div>
			</nav>
			<script type="text/javascript">
				$(document).ready(function() {
					$.getJSON("/category/categorylist", function(result) {
						for (var i = 0; i < result.length; i++) {
							var msg = categorylist(result[i].item_category);
							$(".category_list").append(msg)
						}
					});
				});
			</script>
</body>
</html>