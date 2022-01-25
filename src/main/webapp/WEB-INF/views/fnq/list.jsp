<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>



<!DOCTYPE html>
<html>
<meta charset="utf-8">
<head>

<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<title>Insert title here</title>

<style type="text/css">
#faqWrap #faqTable tr.slide-hide, #faqWrap #faqTable tr.slide-hide dl {
	display: none;
}

#faqWrap #faqTable tr.slide-show {
	display: table-rows;
	*display: block;
}

#faqWrap #faqTable tr.slide-show dl {
	display: block;
}

#faqWrap #faqTable tr.slide-hide td, #faqWrap #faqTable tr.slide-show td
	{
	cursor: default;
	background-color: #fffae5;
}
</style>
</head>
<body>


<script src="http://cdn.jquerytools.org/1.2.5/jquery.tools.min.js"></script>
<script language="javascript" type="text/javascript">
$(function () {
$('#contents tr').hide(); 
$('#contents').find('.title').parent().show();

$('#contents .title').parent().click(function(){ 
$('#contents tr').hide();
$('#contents').find('.title').parent().show();
$('#contents').find('.title').css('background-color', '#fff'); 
var tr = $('#contents tr');
var rindex = $(this).parent().children().index(this); 
$(this).children().css('background-color', '#f7f7f7'); 
for(var i = rindex; i < rindex + 2; i++){ 
$(tr[i]).show(); 
}
});
});
</script>




	<jsp:include page="../header.jsp" />

	<jsp:include page="../sidebar.jsp" />






	<div class="container">
                            <table id="contents" class="table" style="width: 100%;">
<c:if test="${not empty managerLogin && empty login}">
			<a href="/fnq/insertui" class="btn btn-outline-primary btn-sm float-right">글쓰기</a><br>
		</c:if>

                               <h4>F&Q 게시판</h4>
                                
                                <tbody>
                                <c:forEach items="${pt.list }" var="vo">
                                     <tr >
                                        <td class="title">
                                           ${vo.fnq_no }
                                        <td style="cursor:pointer" class="title">
                                            ${vo.fnq_title }
                                        </td>
                                        <td class="title">
                                           ${vo.manager_id }
                                        </td>
                                    </tr>
                                    <tr >
                                        <td class="conts" colspan="3">
                                                 
                                                   질문: <a href="/fnq/read/${vo.fnq_no}/${curPage}">${vo.fnq_title}</a><br><br>
                                                   
                                                  답변: ${vo.fnq_content }  
                                        </td>
                                        </td>
                                        
                                    </tr></c:forEach>
                                                                                                 </tbody>
                            </table>
                        

		<jsp:include page="page.jsp" />
		
	</div>


	



	<jsp:include page="../footer.jsp" />





	









</body>
</html>