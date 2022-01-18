<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원정보 자세히 보기</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</head>
<body>

<jsp:include page="../header.jsp" />
<jsp:include page="../sidebar.jsp" />

아이디 : ${vo.member_id} <br>
이름 : ${vo.member_name} <br>
생년월일 : ${fn:substring(vo.member_birthday, 0, 10)} <br>
Email : ${vo.member_email} <br>
주소 : ${vo.member_address} <br>
상세주소 : ${vo.member_detail_address} <br>
전화번호 : ${vo.member_phone_number} <br>
가입일 : ${vo.member_regdate} <br>
회원정보 마지막 수정일 : ${vo.member_updatedate} <br> 

<button id="read">회원 정보 수정</button> <button id="delete">회원 탈퇴</button>
<form></form>

<jsp:include page="../footer.jsp" />

<script type="text/javascript">
	$(document).ready(function() {
		$("#read").click(function() {
			location.assign("/member/update/${vo.member_id}");
		});
		
		$("#delete").click(function() {	
			//location.assign("/member/delete/${vo.member_id}");
			$("form").attr("method", "post");
			$("form").attr("action", "/member/delete/${vo.member_id}");
			$("form").submit();
		}); 
	});
</script>

</body>
</html>