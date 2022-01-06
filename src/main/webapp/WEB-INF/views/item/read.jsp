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
</head>
<body>
	아이템 넘버 : ${vo.item_no}<br>
	아이템 명 : ${vo.item_name}<br>
	카테고리 명 : ${vo.item_category}<br>
	아이템 사이즈 : ${vo.item_size}<br>
	아이템 컬러 : ${vo.item_color}<br>
	아이템 가격 : ${vo.item_price}<br>
	할인률 : ${vo.discount_percentage}<br>
	아이템 재고 수량 : ${vo.item_amount}<br>
	아이템 등록일 : ${vo.item_regdate}<br>
	<a href="/item/update/${vo.item_no}">수정</a>/<a href="/item/delete/${vo.item_no}">삭제</a>
</body>
</html>