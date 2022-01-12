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
<style type="text/css">
        .layer{
  position:absolute;
  top:40%;
  left:47%;
  width:180px;
  height:150px;
  margin:-50px 0 0 -50px;
}
    </style>

</head>
<body>
<div class="layer card" >

  <ul class="list-group list-group-flush">
    <li class="list-group-item"><a href="/">홈페이지 바로가기</a></li>
    <li class="list-group-item"><a href="#">로그인</a></li>
    <li class="list-group-item"><a href="/manager/insert">관리자 등록하기</a>
    </li>
  </ul>
</div>
 
 
 



</body>
</html>