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
<title>Insert title here</title>
</head>
<body>
	<jsp:include page="../header.jsp"/>

	<jsp:include page="../sidebar.jsp" />



<div class="container">
	
	<form action="/fnq/insert" method="post">
	<div class="form-group">
    <label for="put">번호</label>
    <input type="text" name="fnq_no" class="form-control is-invalid" id="put" value="${vo.fnq_no }" readonly>
  </div>
  <div class="form-group">
    <label for="put1">작성자</label>
    <input type="text" name="manager_id" class="form-control is-invalid" id="put1" value="${vo.manager_id }" readonly>
  </div>
  <div class="form-group">
    <label for="put2">제목</label>
    <input type="text" name="fnq_title" class="form-control is-invalid" id="put2" value="${vo.fnq_title }" readonly >
  </div>
  <div class="form-group">
    <label for="exampleFormControlTextarea1">내용</label>
    <textarea class="form-control is-invalid" id="Textarea1" rows="10" readonly>${vo.fnq_content}</textarea>
  </div>
</form>
	
	</div>








	<jsp:include page="../footer.jsp"/>


</body>
</html>