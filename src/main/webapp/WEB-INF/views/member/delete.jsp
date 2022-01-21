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
<style type="text/css">
h1 {
	display: flex;
	justify-content: center;
	text-align: center;
}

form {
	padding: 10px;
}

#member_pw {
	position: relative;
	margin: 10px 0;
}

#warning {
	width: 60%;
	height: 60%;
	position: relative;
	text-align: center;
	position: relative;
	margin: 0 auto;
}

#warmen {
	margin-top: 15px;
}

#backhome {
	margin-top: 10px;
}
</style>

</head>
<body>

<jsp:include page="../header.jsp" />
<jsp:include page="../sidebar.jsp" />

		<c:if test="${vo.member_id == login.member_id}">
			<div class="container" style="margin-left: 29%; margin-top: 100px; margin-bottom: 300px; width: 300px;">
				<form class="deletefrom" action="/member/delete" id="deletefrom" method="post">
					<h1 class="h3 mb-3 font-weight-normal">회원탈퇴</h1>
					<hr>		
					<input type="password" id="member_pw" name="member_pw" class="form-control" placeholder="Password">
					<input type="hidden" name="member_id" value="${login.member_id}">
					<button class="btn btn-md btn-primary btn-block" type="submit" id="deleteID">회원 탈퇴</button>
					<button class="btn btn-md btn-danger btn-block" id="logncancle">취소</button> 
				</form>	
			</div>
		</c:if>	
		
		
<c:if test="${vo.member_id != login.member_id}">
	<div  id="warning">
		<img src="../../../resources/img/ban.png" width="350" height="350" id="ban">
		<div id="warmen">
			<h4>다른 회원의 정보를 볼 수 없습니다</h4>
		</div>
		<button type="button" class="btn btn-danger" id="backhome">홈으로 되돌아가기</button>
	</div>
</c:if>
	
<jsp:include page="../footer.jsp" />
	
</body>

<script type="text/javascript">
	$(document).ready(function(){
		$("#member_pw").focus();
		
		$("#logncancle").click(function() {
			location.assign("/");
		});
		
		$("#backhome").click(function() {
			$("form").attr("method", "post");
			$("form").attr("action", "/");
			$("form").submit();
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
				data : $("#deletefrom").serializeArray(),
				success: function(data){					
					if(data==0){
						alert("패스워드가 틀렸습니다.");
						return;
					}else{
						if(confirm("회원탈퇴하시겠습니까?")){
							$("#deletefrom").submit();
						}						
					}
				}
			})
		});		
	});	
</script>
</html>