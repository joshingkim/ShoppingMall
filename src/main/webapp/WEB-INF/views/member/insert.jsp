<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 가입</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
</head>
<body>

<jsp:include page="../header.jsp" />
<jsp:include page="../sidebar.jsp" />

	<div class="row mb-2 container">
		<div class="col-md-10">
			<div class="row g-0 border rounded overflow-hidden flex-md-row mb-4 shadow-sm h-md-250 position-relative">
				<div class="col p-4 d-flex flex-column position-static">

					<form action="/member/insert" method="post" id="insertform">
						<div class="input-group mb-2">
							<span class="input-group-text">아이디</span> 
							<input class="form-control" name="member_id" maxlength="15" required>
							<button id="idcheck">중복검사</button>
							<p id="idCheckResult"></p>
						</div>

						<div class="input-group mb-2">
							<span class="input-group-text">비밀번호</span> 
							<input class="form-control" type="password" name="member_pw" maxlength="10" required>
						</div>

						<div class="input-group mb-2">
							<span class="input-group-text">이름</span> 
							<input class="form-control" name="member_name" maxlength="15" required>
						</div>

						<div class="input-group mb-2">
							<span class="input-group-text">생년월일</span> 
							<input class="form-control" type="date" min="1901-01-01" max="2100-12-31" name="member_birthday" required>
						</div>

						<div class="input-group mb-2">
							<span class="input-group-text">이메일</span> 
							<input class="form-control" id="member_email" maxlength="30" name="member_email" placeholder="사용하시는 이메일 주소를 넣어주세요" required>
						</div>

						<div class="input-group mb-2">
							<span class="input-group-text">주소</span> 
							<input class="form-control" id="member_address" name="member_address" placeholder="클릭 시 주소검색창이 새창으로 열립니다" required>
						</div>

						<div class="input-group mb-2">
							<span class="input-group-text">상세주소</span> 
							<input class="form-control" id="member_detail_address" name="member_detail_address" maxlength="10" required>
						</div>

						<div class="input-group mb-2">
							<span class="input-group-text">전화번호</span> 
							<input class="form-control" name="member_phone_number"  placeholder="숫자만 입력하여 주십시오" maxlength="15" maxlength="13" required>
						</div>

						<input type="submit" id="signup" value="회원 등록">
					</form>
				</div>
			</div>
		</div>
	</div>

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
		//id중복체크
		$("#idcheck").click(function(event) {
			event.preventDefault();
			var member_id = $("[name='member_id']").val();

			if (member_id == '') {
				$("[name ='member_id']").focus();
			} else {
				$.ajax({
					type : 'post',
					url : '/member/idcheck',
					data : {
						'member_id' : member_id
					},
					dataType : 'text',
					success : function(result) {
						$("p#idCheckResult").text(result);
					}
				});
			}
				
		document.getElementById("member_address").addEventListener("click", function() {//주소입력칸을 클릭하면
			new daum.Postcode({
				oncomplete: function(data) {//선택시 입력값 세팅
					document.getElementById("member_address").value = data.address; // 주소 넣기
					document.querySelector("input[name=member_detail_address]").focus(); //상세입력 포커싱
				}
			}).open();
		});
					
		$("#member_email").on('change', function(event){
			var emailString = $(this).val();
			var validationResult = emailcheck(emailString);
			if(validationResult == true){
				return;
			}
			alert("이메일 형식이 올바르지 않습니다.")
			});
		})
		
		$("#signup").click(function(event) {
			event.preventDefault();
			if($("#member_id").val()==""){
				alert("사용하실 아이디를 입력해주세요.");
				$("#member_id").focus();
				return false;
			}
			
			if($("#member_pw").val()==""){
				alert("사용하실 비밀번호를 입력해주세요.");
				$("#member_pw").focus();
				return false;
			}
			
			if($("#member_name").val()==""){
				alert("이름을 입력해주세요.");
				$("#member_name").focus();
				return false;
			}
			
			if($("#member_birthday").val()==""){
				alert("생년월일을 입력해주세요.");
				$("#member_birthday").focus();
				return false;
			}
			
			if($("#member_email").val()==""){
				alert("사용중인 이메일을 입력해주세요.");
				$("#member_email").focus();
				return false;
			}
			
			if($("#member_address").val()==""){
				alert("주소를 검색하여 입력해주세요.");
				$("#member_address").focus();
				return false;
			}
			
			if($("#member_detail_address").val()==""){
				alert("상세주소를 입력해주세요.");
				$("#member_detail_address").focus();
				return false;
			}
			
			if($("#member_phone_number").val()==""){
				alert("사용중인 전화번호를 입력해주세요.");
				$("#member_phone_number").focus();
				return false;
			}
			var str = $('#insertform').serialize();
			if(str != ""){
				alert("정삭적으로 회원가입이 되었습니다. 다시 로그인 하여주십시오.")
				$("#insertform").submit();
			}
		});
		
		
		
		
		
		
		
		
		
			
});
</script>

</body>
</html>