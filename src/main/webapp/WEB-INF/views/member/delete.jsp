<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 탈퇴</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</head>
<body>

<jsp:include page="../header.jsp" />
<jsp:include page="../sidebar.jsp" />

	<h1>회원탈퇴</h1>
	
	<form action="/member/delete" name="delete" id="delete" method="post">		
		비밀번호를 입력 해 주세요 <br>
		<input type="password" name="member_pw" id="member_pw">
		<input type="hidden" name="member_id" value="${login.member_id}">
		<button id="deleteID">탈퇴하기</button> <button id="cencle">취소</button>
	</form>
	
<jsp:include page="../footer.jsp" />
	
</body>

<script type="text/javascript">
	$(document).ready(function(){
		$("#member_pw").focus();
		
		$("#cencle").click(function() {
			location.assign("/");
		});
				
		$("#deleteID").click(function(event) {
			event.preventDefault();
			
			if($("#member_pw").val()==""){
				alert("비밀번호를 입력해주세요.");
				$("#member_pw").focus();
				return false;
			}
			$.ajax({
				url : "/member/passChk",
				type : "POST",
				dataType : "json",
				data : $("#delete").serializeArray(),
				success: function(data){					
					if(data==0){
						alert("패스워드가 틀렸습니다.");
						return;
					}else{
						if(confirm("회원탈퇴하시겠습니까?")){
							$("#delete").submit();
						}						
					}
				}
			})
		});
		
		
		
	});
		
		
		
</script>
</html>