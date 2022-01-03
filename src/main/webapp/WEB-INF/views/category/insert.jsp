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
<form action="/category/insert" method="post">
아이템명 : <input name="item_name" maxlength="20"><br>
카테고리명 : <input name="item_category" maxlength="20"><br>
<input type="submit" value="등록 완료">
</form>
<script type="text/javascript">
$(document).ready(function() {
	$("input[type='submit']").click(function(event) {
		event.preventDefault();
		
		var item_name = $("[name='item_name']").val();
		if(item_name == ''){
			$("[name='item_name']").focus();
			return;
		}
		
		var item_category = $("[name='item_category']").val();
		if(item_category == ''){
			$("[name='item_category']").focus();
			return;
		}
		
		$("form").submit();
		
	});
});
</script>
</body>
</html>