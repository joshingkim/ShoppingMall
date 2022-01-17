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
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <script src="/resources/js/file.js" type="text/javascript"></script>
</head>
<body>
	<jsp:include page="../header.jsp" />
	<jsp:include page="../sidebar.jsp" />
	
<input name="item_category-sp" type="hidden" value="${svo.item_category}">
<input name= "keyword-sp" type="hidden" value="${svo.keyword}">
<div><td><div class="uploadedList row"></div></td></div>
<script type="text/javascript">
$(document).ready(function(){
	var keyword =$("[name='keyword-sp']").val();
	var item_category =$("[name='item_category-sp']").val();
	var spt = "${spt}";
	var vo = "${spt.list}";
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
<jsp:include page="page.jsp" />
</body>
<jsp:include page="../../views/manager/managerFooter.jsp" />
</html>