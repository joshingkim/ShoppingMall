<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %> 
<nav aria-label="Page navigation example">
  <ul class="pagination">
    <li class="page-item">
      <a class="page-link" href="/search/search?keyword=${spt.keyword}&item_category=${spt.item_category}&curPage=${spt.curPage>1?spt.curPage-1:1}" aria-label="Previous">
        <span aria-hidden="true">&laquo;</span>
      </a>
    </li>
    
    
    <c:forEach begin="${spt.beginPageNum}" end="${spt.endPageNum}" var="i">

    <li class="page-item ${spt.curPage == i ? 'active' : ''}"><a class="page-link" href="/search/search?keyword=${spt.keyword}&item_category=${spt.item_category}&curPage=${i}">${i}</a></li>
    </c:forEach>
    
    <li class="page-item">
      <a class="page-link" href="/search/search?keyword=${spt.keyword}&item_category=${spt.item_category}&curPage=${spt.curPage<pt.totalPage?spt.curPage+1:spt.totalPage}" aria-label="Next">
        <span aria-hidden="true">&raquo;</span>
      </a>
    </li>
  </ul>
</nav>