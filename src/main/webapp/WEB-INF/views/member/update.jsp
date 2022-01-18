<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 정보 수정</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
  <script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
</head>
<body>

<jsp:include page="../header.jsp" />

<form action="/member/update" method="post">
아이디: <input readonly name="member_id" value="${vo.member_id}"> <br>
비밀번호: <input name="member_pw" type="password" maxlength="15" required><br>
이름: <input readonly name="member_name" maxlength="10" value="${vo.member_name}" required ><br>
생년월일: <input readonly value="${fn:substring(vo.member_birthday, 0, 10)}" required><br> 
Email: <input name="member_email01" id="member_email01" type="text" value="${fn:substringBefore(vo.member_email, '@')}" required><br>
	   <input name="member_email" id="member_email" type="hidden">
	<select name="member_email02" id="member_email02">
		<option selected>선택하세요</option>
		<option value="@naver.com" >@naver.com</option> 
		<option value="@hanmail.net">@hanmail.net</option>
		<option value="@nate.com">@nate.com</option>
		<option value="@gmail.com">@gmail.com</option>
		<option value="direct">직접입력</option>
	</select> <br>
주소: <input id="member_address" name="member_address" value="${vo.member_address}" placeholder="클릭시주소검색이뜹니다"><br>
상세주소: <input id="member_detail_address" name="member_detail_address" maxlength="10" value="${vo.member_detail_address}" required><br>
전화번호: <input name="member_phone_number" maxlength="11" value="${vo.member_phone_number}" placeholder="숫자만입력하세요" required><br>
<input type="submit" value="정보 수정 완료">
</form>

<jsp:include page="../footer.jsp" />

<script type="text/javascript">

//이메일만 주출받는 코드
var member_email = "${vo.member_email}";
var arr = member_email.split("@");
$("select").val("@" + arr[1]);


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
	//주소 선택에 관한 ajax문	
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
	
	
	$("input[type='submit']").click(function(event) {
		event.preventDefault();		
		//비밀번호를 입력하지 않으면 안바뀌게 하는 코드
		var pw = $("[name='member_pw']").val();		
		if(pw==''){
			alert("비밀번호를 입력 해 주세요");
			return;
		}		
		
		//이메일정보 받아서 합쳐주는 코드
		var member_email01 = $("[name='member_email01']").val();
		var member_email02 = $("[name='member_email02']").val();
		$("[name='member_email']").val(member_email01 + member_email02);		
		
		$("form").submit();
	});
	
	
	
	
});

</script>

</body>
</html>