<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Item List</title>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
  <script src="/resources/js/file.js" type="text/javascript"></script>
</head>
<body>
	<jsp:include page="../header.jsp" />

	<jsp:include page="../sidebar.jsp" />
	
	<div class="container container-table">
		<h4>전체 상품 목록</h4>
		<div class="uploadedList row row-cols-3 row-cols-sm-4 row-cols-md-5 g-3">
		</div>
		<div style="margin-top : 100px; margin-bottom : 0px; margin-left: 40%;">
			<jsp:include page="page.jsp"/>
		</div>
	</div>
<jsp:include page="../footer.jsp" />
<script type="text/javascript">
$(document).ready(function(){
	var vo = "${list}";
	var arr = eval(vo);
	for (var i=0; i<arr.length; i++){
		var item_no = arr[i].item_no;
		var item_name = arr[i].item_name;
		var file_name = arr[i].file_name;
		var item = uploadedItemForlist(file_name,item_no,item_name);
		$(".uploadedList").append(item);
	
	}
});		
</script>
</body>
</html>