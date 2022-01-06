<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
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

<form action="/member/insert" method="post">
아이디: <input name="member_id" maxlength="15" required><button id="idcheck">중복검사</button><p id="idCheckResult"></p>
비밀번호: <input name="member_pw" type="password" maxlength="15" required><br>
이름: <input name="member_name" maxlength="10" required ><br>
생년월일: <input name="member_birthday" type="date" required><br>
Email: <input name="member_email" type="email" required><br>
주소: <input id="member_address" name="member_address" placeholder="클릭시주소검색이뜹니다"><br>
상세주소: <input id="member_detail_address" name="member_detail_address" maxlength="10" required><br>
전화번호: <input name="member_phone_number" maxlength="11" placeholder="숫자만입력하세요" required><br>
<input type="submit" value="회원 등록">
</form>

<script type="text/javascript">
document.getElementById("member_address").addEventListener("click", function(){ //주소입력칸을 클릭하면
    //카카오 지도 발생
    new daum.Postcode({
        oncomplete: function(data) { //선택시 입력값 세팅
            document.getElementById("member_address").value = data.address; // 주소 넣기
            document.querySelector("input[name=member_detail_address]").focus(); //상세입력 포커싱
        }
    }).open();
});

$(document).ready(function() {
	$("#idcheck").click(function(event) {
		event.preventDefault();
		
		var member_id = $("[name='member_id']").val();
		
		if(member_id == ''){
			$("[name ='member_id']").focus();
		}else{
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
		
	})		
});
</script>

</body>
</html>