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
	item_no : ${vo.item_no}<br>
	item_name : ${vo.item_name}<br>
	item_category : ${vo.item_category}<br>
	item_size : ${vo.item_size}<br>
	item_color : ${vo.item_color}<br>
	item_price : ${vo.item_price}<br>
	discount_percentage : ${vo.discount_percentage}<br>
	item_amount : ${vo.item_amount}<br>
	item_regdate : ${vo.item_regdate}<br>
	<a href="/item/update/${vo.item_no}">수정</a>/<a href="/item/delete/${vo.item_no}">삭제</a>
</body>
</html>