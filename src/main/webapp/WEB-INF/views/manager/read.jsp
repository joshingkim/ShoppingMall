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

<div class="container mt-5">
<table class="table">
  <thead>
    <tr>
      <th scope="col">관리자 아이디</th>
      <th scope="col">관리자 이름</th>
      <th scope="col">관리자 이메일</th>
      <th scope="col">관리자 핸드폰 번호</th>
      <th scope="col">코드/등급</th>
    </tr>
  </thead>
  <tbody>
			
				<tr>
					<td>${vo.manager_id}</td>
					<td>${vo.manager_name}</td>
					<td>${vo.manager_email}</td>
					<td>${vo.manager_phone}</td>
					<td>
					
					<div class="row">
					${vo.manager_code } &nbsp;&nbsp;
					
					
					
					<form action="/manager/updateCode/${vo.manager_id}" method="post">
  		<div class="form-row align-items-center">
    
    
    <input type="submit" id="changeRole" name="changeRole" class="btn btn-warning btn-sm" value="승인">
    
    
    </div> 
</form>
  
  
  	

    

    </div> 

					
					</td>
				</tr>
			
		</tbody>
</table>

</div>




<script>
$(document).ready(function(){
	
	$("input#changeRole").click(function() {
		
			alert("승인 완료.")
});
	
});
</script>

</body>
</html>