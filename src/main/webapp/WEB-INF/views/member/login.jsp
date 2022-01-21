<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login</title>
<meta name="viewport"
	content="width=device-width, height=device-height, minimum-scale=1.0, maximum-scale=1.0, initial-scale=1.0">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

<style type="text/css">
h1 {
	display: flex;
	justify-content: center;
	text-align: center;
}

form {
	padding: 10px;
}

#member_id {
	position: relative;
	margin: 10px 0;
}

#member_pw {
	position: relative;
	margin: 10px 0;
}
</style>

</head>
<body>

	<jsp:include page="../header.jsp" />
	<jsp:include page="../sidebar.jsp" />

	<div class="container" style="margin-left: 29%; margin-top: 100px; margin-bottom: 300px; width: 300px;">
		<form class="loginfrom" action="/member/login" id="loginform" method="post">
			<h1 class="h3 mb-3 font-weight-normal">Login</h1>
			<hr>
			<label for="inputId" class="sr-only">ID</label> 
			<input type="text" id="member_id" name="member_id" class="form-control" placeholder="ID" required>
			<label for="inputPassword" class="sr-only">Password</label> 
			<input type="password" id="member_pw" name="member_pw" class="form-control" placeholder="Password" required>
			<hr>
			<button class="btn btn-lg btn-primary btn-block" type="submit" id="loginbtn">Sign in</button>
		</form>
	</div>
	
	<jsp:include page="../footer.jsp" />

</body>

<script type="text/javascript">
$(document).ready(function() {
	$("#loginbtn").click(function(event) {
		event.preventDefault();
		
		if($("#member_id").val()==""){
			alert("아이디를 입력해주세요.");
			$("#member_id").focus();
			return false;
		}
			
		if($("#member_pw").val()==""){
			alert("비밀번호를 입력해주세요.");
			$("#member_pw").focus();
			return false;
		}
			
		$.ajax({
			url : "/member/passChk",
			type : "POST",
			dataType : "text",
			data : {
				member_id : $("#member_id").val(),
				member_pw : $("#member_pw").val()
				
			},
			success: function(data){
				if(data == 0){
					alert("아이디 또는 패스워드가 틀렸습니다.");
					return;
				}else{
					$("#loginform").submit();
				}						
			}
		})
	});

	
	
	
});
</script> 
</html>