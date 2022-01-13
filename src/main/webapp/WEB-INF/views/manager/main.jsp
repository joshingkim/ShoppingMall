<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>



<!DOCTYPE html>
<html>
 <meta charset="utf-8">
<head>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<title>관리자용 페이지</title>


</head>
<body>


<div class="jumbotron">
  <h1 class="display-4">DAPAN&DA</h1>
  <p class="lead">여기는 관리자, 경영자를 위한 페이지입니다.</p>
  <hr class="my-4">
  <p>아래 메뉴 중 선택하십시오.</p>
  <a class="btn btn-light btn-lg" href="/" role="button">Home 바로가기</a> &nbsp; &nbsp;
  <a class="btn btn-light btn-lg" href="#" role="button">관리자/경영자 로그인</a> &nbsp; &nbsp;
  <a class="btn btn-light btn-lg" href="/manager/insert" role="button">관리자 등록하기</a> &nbsp; &nbsp;
  <a class="btn btn-light btn-lg" href="/manager/managerList" role="button">관리자 리스트</a> &nbsp; &nbsp;
  <a class="btn btn-light btn-lg" href="/manager/managerPage" role="button">통계</a> &nbsp; &nbsp;
</div>


<div id="carouselExampleSlidesOnly" class="carousel slide" data-ride="carousel">
  <div class="carousel-inner">
    <div class="carousel-item active">
       <img src="/resources/img/manager01.jpg" class="d-block w-100" alt="...">
    </div>
    <div class="carousel-item">
      <img src="/resources/img/manager02.jpg" class="d-block w-100" alt="...">
    </div>
    <div class="carousel-item">
      <img src="/resources/img/manager03.jpg" class="d-block w-100" alt="...">
    </div>
  </div>
</div>
 
 
 
<div class="container">
<jsp:include page="../manager/managerFooter.jsp" />
</div>
</body>
</html>