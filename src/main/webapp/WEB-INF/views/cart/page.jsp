<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %> 
<nav>
  <ul class="pagination">
    <li class="page-item">
      <a class="page-link" href="/cart/read/${member_id}/${map.pt.curPage>1?map.pt.curPage-1:1}" aria-label="Previous">
        	<span aria-hidden="true">&laquo;</span>
      </a>
    </li>
	    <c:forEach begin="${map.pt.beginPageNum}" end="${map.pt.endPageNum}" var="i">
    		<li class="page-item ${map.pt.curPage==i?'active':'' }"><a class="page-link" href="/cart/read/${member_id}/${i}">${i}</a></li>
	    </c:forEach>
    <li class="page-item">
      <a class="page-link" href="/cart/read/${member_id}/${map.pt.curPage<map.pt.totalPage?map.pt.curPage+1:map.pt.totalPage}" aria-label="Next">
        <span aria-hidden="true">&raquo;</span>
      </a>
    </li>
  </ul>
</nav>