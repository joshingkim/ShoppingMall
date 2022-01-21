<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 정보 수정</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<script
	src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
</head>

<style type="text/css">
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

<body>

<jsp:include page="../header.jsp" />
<jsp:include page="../sidebar.jsp" />

<c:if test="${vo.member_id == login.member_id}">
	<div class="row mb-2 container">
		<div class="col-md-10">
			<div class="row g-0 border rounded overflow-hidden flex-md-row mb-4 shadow-sm h-md-250 position-relative">
				<div class="col p-4 d-flex flex-column position-static">

					<form action="/member/update" method="post">
						
						<div class="input-group mb-2">
							<span class="input-group-text">아이디</span> 
							<input readonly class="form-control" name="member_id" maxlength="15" value="${vo.member_id}">
						</div>

						<div class="input-group mb-2">
							<span class="input-group-text">비밀번호</span> 
							<input class="form-control" type="password" name="member_pw" maxlength="10" required>
						</div>

						<div class="input-group mb-2">
							<span class="input-group-text">이름</span> 
							<input readonly class="form-control" name="member_name" maxlength="15" value="${vo.member_name}">
						</div>

						<div class="input-group mb-2">
							<span class="input-group-text">생년월일</span> 
							<input readonly class="form-control" value="${fn:substring(vo.member_birthday, 0, 10)}" name="member_birthday">
						</div>

						<div class="input-group mb-2">
							<span class="input-group-text">이메일</span> 
							<input class="form-control" id="member_email" name="member_email" value="${vo.member_email}" required>
						</div>

						<div class="input-group mb-2">
							<span class="input-group-text">주소</span> 
							<input class="form-control" value="${vo.member_address}" id="member_address" name="member_address" required>
						</div>

						<div class="input-group mb-2">
							<span class="input-group-text">상세주소</span> 
							<input class="form-control" value="${vo.member_detail_address}" id="member_detail_address" name="member_detail_address" maxlength="10" required>
						</div>

						<div class="input-group mb-2">
							<span class="input-group-text">전화번호</span> 
							<input class="form-control" value="${vo.member_phone_number}" name="member_phone_number" maxlength="13" required>
						</div>

						<button type="button" class="btn btn-secondary float-right" id="update">회원 정보 수정</button>
					</form>
				</div>
			</div>
		</div>
	</div>
</c:if>

<c:if test="${vo.member_id != login.member_id}">
	<div id="warning">
		<img src="../../../resources/img/ban.png" width="350" height="350" id="ban">
			<div id="warmen">
				<h4>다른 회원의 정보를 볼 수 없습니다</h4>
			</div>
		<button type="button" class="btn btn-danger" id="backhome">홈으로 되돌아가기</button>
	</div>
</c:if>

<jsp:include page="../footer.jsp" />



<script type="text/javascript">

function emailcheck(emailString) {
	const regEmail = /^(([^<>()[\].,;:\s@"]+(\.[^<>()[\].,;:\s@"]+)*)|(".+"))@(([^<>()[\].,;:\s@"]+\.)+[^<>()[\].,;:\s@"]{2,})$/i;
   	if (regEmail.test(emailString) === true) {
   		return true;
    }
    return false;
}

$(document).ready(function() {
	

	$("#member_email").on('change', function(event){
		var emailString = $(this).val();
		var validationResult = emailcheck(emailString);
		if(validationResult == true){
			return;
		}
		alert("이메일 형식이 올바르지 않습니다.")
		});
	
	$("#backhome").click(function() {
		$("form").attr("method", "get");
		$("form").attr("action", "/");
		$("form").submit();
	});
	
	document.getElementById("member_address").addEventListener("click", function(){ //주소입력칸을 클릭하면
	    //카카오 지도 발생
	    new daum.Postcode({
	        oncomplete: function(data) { //선택시 입력값 세팅
	            document.getElementById("#member_address").value = data.address; // 주소 넣기
	            document.querySelector("input[name=member_detail_address]").focus(); //상세입력 포커싱
	        }
	    }).open();
	});
	
	$("#update").click(function(event) {
		event.preventDefault();		
		//비밀번호를 입력하지 않으면 안바뀌게 하는 코드
		var pw = $("[name='member_pw']").val();		
		if(pw==''){
			alert("비밀번호를 입력하여 주십시오");
			return;
		}
		$("form").submit();
	});
	
	
	
	
	
	
});
</script>

</body>
</html>