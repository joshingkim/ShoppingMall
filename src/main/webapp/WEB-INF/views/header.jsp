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
    outline-color: activeborder;
    background-color: inherit;
    
}

#roll a {
    color: white;
    text-decoration: none;
 
}

#roll a:hover {
    text-decoration: underline;
    color: black;
}

#roll {
    overflow: hidden;
    width: 120px;
    height: 38px;
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
    height: 38px;
    line-height: 38px;
    color: white;
    text-overflow: ellipsis;
   white-space: nowrap;
   overflow: hidden;
   width : 100px;
}
</style>
<style type="text/css">
      
.cat-box {
position : relative;
height : 38px;
cursor : pointer;
background-color: inherit;

}

.cat-box:after {
content: '';
display:block;
height : 100%;
position : absolute;
}

.cat-box .cat-label {
color : white;
height : inherit;
width : 100px;
cursor : pointer;
outline: white;
}

.cat-box .cat-menu {
position : absolute;
list-style-type : none;
overflow : hidden;
transition : .3s ease-in;
}

.cat-box.active .cat-menu {
max-height : 500px;
}

.cat-box .cat-item {
transition : .1s;
}

.cat-box .cat-item:hover {
background : gray;
}

.cat-box .cat-item:last-child {
border-bottom:0 none;
}

.area-search {
margin-top : 18px;
display: inline-table;
}

.put {
margin-top : 15px;
display: inline-block;
}
#search_btn {
display : inline-block;
background-color: white;
height : 38px;

}
</style>


<nav class="navbar navbar-expand-lg navbar-dark bg-dark" id="div1">
  <span class="navbar-brand mb-0 h1"><a class="nav-link text-light" href="/">DAPAN&DA</a></span>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
  <div class="collapse navbar-collapse" id="navbarNavDropdown">
    <ul class="navbar-nav">
      <!-- <li class="nav-item active">
        <a class="nav-link text-light" href="/">Home<span class="sr-only">(current)</span></a>
      </li> -->
      <li class="nav-item">
      </li>
    </ul>
  </div>
  <div id="rolling"><div id="roll" ><ul><ol class="ranklist"></ol></ul></div></div>
    <form class="form-inline my-2 my-lg-0 f-search" action="/search/search">
      <div class="input-group mb-3 put">
         <div class="cat-box">
            <button class="btn btn-outline-secondary cat-label" type="button" data-toggle="dropdown" aria-expanded="false">All</button>
            <input id="cat-val" name="item_category" type="hidden" value="">
            <div class="dropdown-menu cat-menu">

            </div>
         </div>
         <input id="area-search" type="text" name="keyword" class="form-control" maxlength="10" onkeypress="enter_f(event)" placeholder="검색어를 입력해 주세요." aria-label="Input group example" aria-describedby="basic-addon1" value="">
         <a href="javascript:void(0)" class="btn_search"><span class="input-group-text" id="search_btn"> 
            <svg xmlns="http://www.w3.org/2000/svg" width="16" height="20" fill="currentColor" class="bi bi-search" viewBox="0 0 16 16">
              <path d="M11.742 10.344a6.5 6.5 0 1 0-1.397 1.398h-.001c.03.04.062.078.098.115l3.85 3.85a1 1 0 0 0 1.415-1.414l-3.85-3.85a1.007 1.007 0 0 0-.115-.1zM12 6.5a5.5 5.5 0 1 1-11 0 5.5 5.5 0 0 1 11 0z" />
            </svg>
            </span> 
         </a>
      </div>
   </form>
  
</nav>


    <header class="bg-light d-flex flex-wrap align-items-center justify-content-center justify-content-md-between py-3 mb-4 border-bottom">
      

      <ul class="nav col-12 col-md-auto mb-2 justify-content-center mb-md-0 ml-5">
      <c:choose>
          <c:when test="${empty login}">
            <li><a href="/" class="nav-link px-2 link-secondary text-dark">Home</a></li>
           <li><a href="/member/loginUI" class="nav-link px-2 link-dark text-dark">좋아요
           <li><a href="/member/loginUI" class="nav-link px-2 link-dark text-dark">장바구니</a></li>
           <li><a href="/member/loginUI" class="nav-link px-2 link-dark text-dark">주문배송조회</a></li>
           <li><a href="/member/loginUI" class="nav-link px-2 link-dark text-dark">리뷰 목록</a></li>
           <li><a href="/member/loginUI" class="nav-link px-2 link-dark text-dark">QnA 목록</a></li>
          </c:when>
          
          <c:when test="${not empty login}">
            <li><a href="/" class="nav-link px-2 link-secondary text-dark">Home</a></li>
           <li><a href="/likeitem/list/${login.member_id}" class="nav-link px-2 link-dark text-dark">좋아요
           <li><a href="/cart/read/${login.member_id}" class="nav-link px-2 link-dark text-dark">장바구니</a></li>
           <li><a href="/order/detail/${login.member_id}" class="nav-link px-2 link-dark text-dark">주문배송조회</a></li>
           <li><a href="/Myreplies/list/${login.member_id}" class="nav-link px-2 link-dark text-dark">리뷰 목록</a></li>
           <li><a href="/qna/listForMember/${login.member_id}" class="nav-link px-2 link-dark text-dark">QnA 목록</a></li>
          </c:when>
        </c:choose>
     
      </ul>

      <div class="col-md-3 text-end">
        <c:choose>
          <c:when test="${empty login}">
            <a class="btn btn-outline-primary btn-sm" href="/member/loginUI">로그인</a>
            <a class="btn btn-outline-primary btn-sm" href="/member/insert">회원가입</a>
          </c:when>
          
          <c:when test="${not empty login}">
            ${login.member_id} 님, 환영합니다. 
            <a class="btn btn-outline-primary btn-sm" href="/member/read/${login.member_id}">회원 정보 보기</a> 
            <a class="btn btn-outline-primary btn-sm" href="/member/logout">로그아웃</a>
          </c:when>
        </c:choose>
      </div>
    </header>
    
     <script type="text/javascript">
      var item_category = $(".cat-label").text();
     
     
      function enter_f(e){
      var keyword = document.getElementById("area-search").value;
      item_category = $(".cat-label").text();
         var code = e.keyCode;
         if(code == 13 || code == 108){
         $("#cat-val").attr("value",item_category);
         $("#area-search").attr("value",keyword);
          if(keyword==''){
             $("#area-search").focus();
             alert("검색어를 입력해주세요");
              e.preventDefault();
              return;
            }
         }
      }
      function querySelect(){
          const label = document.querySelector('.cat-label');
             const items = document.querySelectorAll('.cat-item');
             const handleSelect = function(eachitem) {
                label.innerHTML = eachitem.textContent;
                label.parentNode.classList.remove('active');
             }
             items.forEach(function(option){
                option.addEventListener('click', function(){
                   handleSelect(option)
                   })
             });
    }
   $(document).ready(function(){
      
      $.getJSON("/category/categorylist", function(result) {
         for (var i = 0; i < result.length; i++) {
            var cat_items = result[i];
            $(".cat-menu").append("<a class='dropdown-item cat-item' javascript:void(0)>"+cat_items.item_category+"</a>");
            querySelect();
         }
      });
      
       $(".btn_search").click(function(event){
          event.preventDefault();
       var keyword = document.getElementById("area-search").value;
       item_category = $(".cat-label").text();
            if(keyword==''){
               $("#area-search").focus();
               alert("검색어를 입력해주세요");
               return;
            }
            $("#cat-val").attr("value",item_category);
            $(".f-search").submit();
            });
      
   
   $.getJSON("/search/rankinglist", function(result){
      for(var i =0; i<result.length;i++){
                if(i< 10){
                var lists = result[i].keyword;
                $("ol").append("<li><a javascript:void(0)>"+(i+1)+"위 :"+lists+"</a></li>");
                rolltext();
                }
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
   
   
   });
   
   </script>