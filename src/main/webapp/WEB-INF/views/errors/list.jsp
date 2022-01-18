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
	<table>
		<thead>
			<th>error_no</th>
			<th>regdate</th>
			<th>filename</th>
			<th>methodname</th>
			<th>linenum</th>
			<th>uri</th>
			<th>review</th>
			<th>완료</th>
		</thead>
		<tbody>
			<c:forEach items="${list}" var="vo">
				<tr>
					<td>${vo.error_no}</td>
					<td>${vo.regdate}</td>
					<td>${vo.filename}</td>
					<td>${vo.methodname}</td>
					<td>${vo.linenum}</td>
					<td>${vo.uri}</td>
					<td>${vo.review}</td>
					<td><a href="/errors/update/${vo.error_no}">완료</a></td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
</body>
</html>