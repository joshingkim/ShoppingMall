<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>

<div class="container" style="margin-bottom: 50px; width: 100%;">
	<header
		class="d-flex flex-wrap align-items-center justify-content-center justify-content-md-between py-3 mb-4 border-bottom">
		<a href="/"
			class="d-flex align-items-center col-md-3 mb-2 mb-md-0 text-dark text-decoration-none">
			<svg class="bi me-2" width="40" height="32" role="img"
				aria-label="Bootstrap">
				<use xlink:href="#bootstrap" /></svg>
		</a>

		<ul class="nav justify-content-center">
			<li><a href="/" class="nav-link px-2 text-muted">홈</a></li>
			<li><a href="#" class="nav-link px-2 text-muted">게시판</a></li>
			<li><a href="#" class="nav-link px-2 text-muted">FAQs</a></li>
			<li><a href="#" class="nav-link px-2 text-muted">About</a></li>
		</ul>

		<div class="col-md-3 text-end">
			<a class="btn btn-outline-primary" href="/member/loginUI">로그인</a> 
			<a class="btn btn-outline-primary" href="/member/insert">회원가입</a>
		</div>
	</header>
</div>