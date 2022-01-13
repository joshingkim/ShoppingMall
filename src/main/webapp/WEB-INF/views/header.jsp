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
}

#roll a {
    color: black;
    text-decoration: none;
}

#roll a:hover {
    text-decoration: underline;
}

#roll {
    overflow: hidden;
    width: 160px;
    height: 20px;
    margin: 0;
}


#roll ul {
    position: relative;
    margin: 0;
}

#roll ol {
    position: absolute;
    top: 0;
    left: 0;
    margin: 0;
    padding: 0;
    list-style-type: none;
}

#roll li {
    height: 20px;
    line-height: 20px;
}
</style>
<nav class="navbar navbar-expand-lg navbar-light bg-light">
  <span class="navbar-brand mb-0 h1"><a class="nav-link text-muted" href="/">DAPAN&DA</a></span>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
  <div class="collapse navbar-collapse" id="navbarNavDropdown">
    <ul class="navbar-nav">
      <li class="nav-item active">
        <a class="nav-link" href="/">Home<span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item active">
        <a class="nav-link" href="#">랭킹<span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item">
     <a class="nav-link" href="#">업데이트</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="#">이벤트</a>
      </li>
      <li class="nav-item">
       
      </li>
    </ul>
    <form class="form-inline my-2 my-lg-0">
    <div class="input-group mb-3">
    <div class="input-group-prepend">
    <button class="btn btn-outline-secondary dropdown-toggle" type="button" data-toggle="dropdown" aria-expanded="false">Dropdown</button>
    <div class="dropdown-menu">
      <a class="dropdown-item" href="#">watches</a>
      <a class="dropdown-item" href="#">necklaces</a>
      <a class="dropdown-item" href="#">rings</a>
      <a class="dropdown-item" href="#">braclets</a>
      <a class="dropdown-item" href="#">hairpins</a>
      <a class="dropdown-item" href="#">earings</a>
      <div role="separator" class="dropdown-divider"></div>
      <a class="dropdown-item" href="#">else</a>
    </div>
  </div>
      <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
      <button class="btn btn-outline-dark my-2 my-sm-0" type="submit">Search</button>
      </div>
    </form>
  &nbsp;  순위: <div id="rolling"><div id="roll"><ul><ol class="ranklist"></ol></ul></div></div>
  </div>
</nav>


    <header class="bg-dark d-flex flex-wrap align-items-center justify-content-center justify-content-md-between py-3 mb-4 border-bottom">
      

      <ul class="nav col-12 col-md-auto mb-2 justify-content-center mb-md-0">
        <li><a href="#" class="nav-link px-2 link-secondary text-light">Home</a></li>
        <li><a href="#" class="nav-link px-2 link-dark text-light" >Features</a></li>
        <li><a href="#" class="nav-link px-2 link-dark text-light">Pricing</a></li>
        <li><a href="#" class="nav-link px-2 link-dark text-light">FAQs</a></li>
        <li><a href="#" class="nav-link px-2 link-dark text-light">About</a></li>
     
      </ul>

      <div class="col-md-3 text-end">
        <button type="button" class="btn btn-outline-light me-2">Login</button>
        <button type="button" class="btn btn-light">Sign-up</button>
      </div>
    </header>
    
    
    
    <script type="text/javascript">
	$(document).ready(function(){
	
	$.getJSON("search/rankinglist", function(result){
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
	});
	</script>
  