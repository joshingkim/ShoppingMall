<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %> 
<nav aria-label="Page navigation example">
  <ul class="pagination">
    <li class="page-item">
      <a class="page-link" href="/qna/listOfAll/${pt.curPage>1?pt.curPage-1:1}" aria-label="Previous">
        <span aria-hidden="true">&laquo;</span>
      </a>
    </li>
    
    
    <c:forEach begin="${pt.beginPageNum}" end="${pt.endPageNum}" var="i">

    <li class="page-item ${pt.curPage==i?'active':'' }"><a class="page-link" href="/qna/listOfAll/${i}">${i}</a></li>
    
    </c:forEach>
    
    <li class="page-item">
      <a class="page-link" href="/qna/listOfAll/${pt.curPage<pt.totalPage?pt.curPage+1:pt.totalPage}" aria-label="Next">
        <span aria-hidden="true">&raquo;</span>
      </a>
    </li>
  </ul>
</nav>