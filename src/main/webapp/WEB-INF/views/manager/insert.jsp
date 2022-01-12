<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</head>
<body>
<form action="/manager/insert" method="post">
manager_id: <input name="manager_id"><button id="idcheck">중복검사</button><br>
<p id="idCheckResult"></p>
manager_pw: <input name="manager_pw" type="password"><br>
manager_name: <input name="manager_name"><br>
manager_phone: <input type="number" name="manager_phone"> <br>
manager_email: <input type="email" name="manager_email"><br>
manager_code: <input type="hidden" name="manager_code" value=-1>
<input type="submit"  value="관리자로 가입 요청">
</form>

<script type="text/javascript">

	$(document).ready(function() {
		
		
		
		$("input[type='submit']").click(function(event) {
			event.preventDefault();
			var userid = $("[name='manager_id']").val();
			if(userid==''){
				return;
			}
			
			var userpw = $("[name='manager_pw']").val();
			if(userpw==''){
				return;
			}
			
			var username = $("[name='manager_name']").val();
			if(username==''){
				return;
			}
			
			var email = $("[name='manager_email']").val();
			if(email==''){
				return;
			}
			var phone = $("[name='manager_phone']").val();
			if(phone==''){
				return;
			}
			
			$("form").submit();
			
		});
		
		
		
		
		
		
		
		
		
		$("#idcheck").click(function(event) {
			event.preventDefault();
			
			var manager_id = $("[name='manager_id']").val();
			
			if(manager_id == ''){
				$("[name ='manager_id']").focus();
			}else{
				$.ajax({
					type : 'post',
					url : '/manager/idcheck',
					data : {
						'manager_id' : manager_id
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