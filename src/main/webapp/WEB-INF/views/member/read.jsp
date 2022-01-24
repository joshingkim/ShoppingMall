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
  
<style type="text/css">
  	#warning{  
  		width:60%;
   	 	height:60%;
    	position:relative;
		text-align: center;	
		position: relative;
		margin: 0 auto;
  	}
  	
  	#warmen{
  		margin-top: 15px;
  	}
  	
  	#backhome{
  		margin-top: 10px; 
  	}
</style>
</head>
<body>

<jsp:include page="../header.jsp" />
<jsp:include page="../sidebar.jsp" />

<c:if test="${vo.member_id == login.member_id || not empty managerLogin}">
<div class="row mb-2 container">
	<div class="col-md-11">
		<div class="row g-0 border rounded overflow-hidden flex-md-row mb-4 shadow-sm h-md-250 position-relative">
			<div class="col p-4 d-flex flex-column position-static">
				
					<div class="input-group mb-2">
						<span class="input-group-text">아이디</span> 
						<input readonly class="form-control" value="${vo.member_id}">
					</div>
						
					<div class="input-group mb-2">
						<span class="input-group-text">이름</span> 
						<input readonly class="form-control" value="${vo.member_name}">
					</div>						
						
					<div class="input-group mb-2">
						<span class="input-group-text">생년월일</span> 
						<input readonly class="form-control" value="${fn:substring(vo.member_birthday, 0, 10)}">
					</div>
						
					<div class="input-group mb-2">
						<span class="input-group-text">이메일</span> 
						<input readonly class="form-control" name="member_email01" value="${vo.member_email}">
						<input class="form-control" name="member_email" id="member_email" type="hidden">
					</div>					
						
					<div class="input-group mb-2">
						<span class="input-group-text">주소</span> 
						<input readonly class="form-control" value="${vo.member_address}">
					</div>
						
					<div class="input-group mb-2">
						<span class="input-group-text">상세주소</span> 
						<input readonly class="form-control" value="${vo.member_detail_address}">
					</div>
						
					<div class="input-group mb-2">
						<span class="input-group-text">전화번호</span> 
						<input readonly class="form-control" value="${vo.member_phone_number}" >
					</div>					
			</div>
		</div>		
		<button type="button" class="btn btn-danger float-right" id="delete">회원 탈퇴</button>
		<button type="button" class="btn btn-secondary float-right" id="read">회원 정보 수정</button> 
	</div>
</div>
</c:if>	

<c:if test="${vo.member_id != login.member_id && empty managerLogin}">
	<div  id="warning">
		<img src="../../../resources/img/ban.png" width="350" height="350" id="ban">
		<div id="warmen">
			<h4>다른 회원의 정보를 볼 수 없습니다</h4>
		</div>
		<button type="button" class="btn btn-danger" id="backhome">홈으로 되돌아가기</button>
	</div>
</c:if>

<jsp:include page="../footer.jsp" />

<script type="text/javascript">
	$(document).ready(function() {
		$("#read").click(function() {
			location.assign("/member/update/${vo.member_id}");
		});
		
		$("#backhome").click(function() {
			location.assign("/");
		});
		
		$("#delete").click(function() {	
			//location.assign("/member/delete/${vo.member_id}");
			$("form").attr("method", "get");
			$("form").attr("action", "/member/delete/${vo.member_id}");
			$("form").submit();
		}); 
	});
</script>

</body>
</html>