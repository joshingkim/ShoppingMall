<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

보드리드

board_no : ${vo.board_no} <br>
item_no : ${vo.item_no } <br>
board_title : ${vo.board_title } <br>
board_content : ${vo.board_content} <br>
board_regdate : ${vo.board_regdate } <br>
board_updatedate : ${vo.board_updatedate } <br>
board_viewcnt : ${vo.board_viewcnt }


<button class="updateui">수정 화면</button> 
<button class="delete">삭제</button> 
<button>목록</button> 
<button id="btn_replyui_show">댓글화면</button><br>



</body>
</html>