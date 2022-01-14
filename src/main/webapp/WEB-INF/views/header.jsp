<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>



<style type="text/css">
body {
    font-size: 12px;
    margin: 0;
}

#rolling {
    margin: 20px;
    padding: 10px;
    color: black;
    outline-color:  white;
    outline-style: outset;
    background-color: white;
    
}

#roll a {
    color: black;
    text-decoration: none;
 
}

#roll a:hover {
    text-decoration: underline;
    color: black;
}

#roll {
    overflow: hidden;
    width: 160px;
    height: 20px;
    margin: 0;
    color: white;
}


#roll ul {
    position: relative;
    margin: 0;
    color: white;
}

#roll ol {
    position: absolute;
    top: 0;
    left: 0;
    margin: 0;
    padding: 0;
    list-style-type: none;
    color: white;
}

#roll li {
    height: 20px;
    line-height: 20px;
    color: white;
}
</style>
<style type="text/css">
      
.category-box {
position : relative;
width : 90px;
height : 35px;
cursor : pointer;
}

.category-box:after {
content: '';
display:block;
width : 2px;
height : 100%;
position : absolute;
}

.category-box .label {
display : flex;
width : inherit;
height : inherit;
align-items :center;
cursor : pointer;
}

.category-box .menu {
position : absolute;
list-style-type : none;
overflow : hidden;
transition : .3s ease-in;
}

.category-box.active .menu {
max-height : 500px;
}

.category-box .item {
transition : .1s;
}

.category-box .item:hover {
background : rgb(175,93,93);
}

.category-box .item:last-child {
border-bottom:0 none;
}
</style>

<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
  <span class="navbar-brand mb-0 h1"><a class="nav-link text-light" href="/">DAPAN&DA</a></span>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
  <div class="collapse navbar-collapse" id="navbarNavDropdown">
    <ul class="navbar-nav">
      <li class="nav-item active">
        <a class="nav-link text-light" href="/">Home<span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item active">
        <a class="nav-link text-light" href="#">랭킹<span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item">
     <a class="nav-link text-light" href="#">이벤트</a>
      </li>
      <li class="nav-item">
        <a class="nav-link text-light" href="#">순위:</a>
      </li>
      <li class="nav-item">
       
      </li>
    </ul>
   <div id="rolling"><div id="roll" ><ul><ol class="ranklist "></ol></ul></div></div>
  </div>
    <form class="form-inline my-2 my-lg-0" action="/search/search">
    <div class="input-group mb-3 put">
    <div class="category-box">
    <button class="btn btn-outline-secondary label" type="button" data-toggle="dropdown" aria-expanded="false">category</button>
    <div class="dropdown-menu menu">
      <a class="dropdown-item item" href="#">watches</a>
      <a class="dropdown-item item" href="#">necklaces</a>
      <a class="dropdown-item item" href="#">rings</a>
      <a class="dropdown-item item" href="#">braclets</a>
      <a class="dropdown-item item" href="#">hairpins</a>
      <a class="dropdown-item item" href="#">earings</a>
      <div role="separator" class="dropdown-divider"></div>
      <a class="dropdown-item item" href="#">else</a>

    </div>
  </div>
      <input class="form-control mr-sm-2" name="keyword" type="search" placeholder="Search" aria-label="Search">
      <button id="search_btn" class="btn btn-outline-dark my-2 my-sm-0 btn_search" type="button">Search</button>
      </div>
    </form>
  
</nav>


    <header class="bg-light d-flex flex-wrap align-items-center justify-content-center justify-content-md-between py-3 mb-4 border-bottom">
      

      <ul class="nav col-12 col-md-auto mb-2 justify-content-center mb-md-0 ml-5">
        <li><a href="#" class="nav-link px-2 link-secondary text-dark">Home</a></li>
        <li><a href="#" class="nav-link px-2 link-dark text-dark" >마이페이지</a></li>
        <li><a href="#" class="nav-link px-2 link-dark text-danger">좋아요
        <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-heart-fill" viewBox="0 0 16 16">
  <path fill-rule="evenodd" d="M8 1.314C12.438-3.248 23.534 4.735 8 15-7.534 4.736 3.562-3.248 8 1.314z"/>
</svg>
        <i class="bi bi-heart-fill"></i></a></li>
        <li><a href="#" class="nav-link px-2 link-dark text-dark">장바구니</a></li>
        <li><a href="#" class="nav-link px-2 link-dark text-dark">고객센터</a></li>
     
      </ul>

      <div class="col-md-3 text-end">
        <c:choose>
          <c:when test="${empty login}">
            <a class="btn btn-outline-primary" href="/member/loginUI">로그인</a>
            <a class="btn btn-outline-primary" href="/member/insert">회원가입</a>
          </c:when>
          
          <c:when test="${not empty login}">
            ${login.member_id} 님, 환영합니다. <a class="btn btn-outline-primary" href="/member/read/${login.member_id}">회원 정보 보기</a> <a class="btn btn-outline-primary" href="/member/logout">로그아웃</a>
          </c:when>
        </c:choose>
      </div>
    </header>
    
    
    
    <script type="text/javascript">
	$(document).ready(function(){
		
		
		 $(".btn_search").click(function(){
	         var item_category = $(".label").text();
	         $(".put").append("<input name='item_category' type='hidden' value='"+item_category+"'>");
	         $("form").submit();
	         });
		
	
	$.getJSON("/search/rankinglist", function(result){
		for(var i =0; i<10;i++){
			var list = result[i];
			
			var pre = "<li><a href='#'>";
			var sur = "</a></li>";
			$(".ranklist").append(pre+list.keyword+sur);
			rolltext();
		}
	});
	
	function rolltext(){
		$(function() {
			var count = $('#rolling li').length;
			var height = $('#rolling li').height();

			function step(index) {
				$('#rolling ol').delay(100).animate({
					top : -height * index,
				}, 300, function() {
					step((index + 1) % count);
				});
			}

			step(1);
		});
	}
	
	const label = document.querySelector('.label');
	   const items = document.querySelectorAll('.item');
	   const handleSelect = function(eachitem) {
	      label.innerHTML = eachitem.textContent;
	      label.parentNode.classList.remove('active');
	   }
	   items.forEach(function(option){
	      option.addEventListener('click', function(){
	         handleSelect(option)})
	   });
	});
	
	
	
	
	
	
	
	
	</script>
  
