/**
 * 
 */

function getMyRepliesPage(member_id, curPage, el){
	el.html("");

	$.getJSON("/Myreplies/"+member_id+"/"+curPage, function(data){
		var arr= data["list"];
		console.log(arr);
		for(var i=0;i<arr.length;i++){
			var obj = arr[i];
			
			msg = Myreplyform(obj["member_id"], obj["review_updatedate"], obj["review_content"],obj["review_grade"], obj["review_no"]);
			el.append(msg);
		}
		
		var strPage = `
		<nav aria-label="Page navigation example" id="review_view_nav">
  <ul class="pagination justify-content-center">
    <li class="page-item">
      <a class="page-link reply_page_left" href="${data['curPage']}" aria-label="Previous">
        <span aria-hidden="true" class="text-secondary">Previous</span>
      </a>
    </li>
		
		`;
		
		for(var i = data.beginPageNum; i < data.endPageNum+1; i++){
			var activeOr = data.curPage == i?"active":"";
			strPage += `<li class="page-item ${activeOr} "><a class="page-link reply_page_no " href="#" >${i}</a></li>`;
		}
		
		strPage +=`
		    <li class="page-item">
      <a class="page-link reply_page_right" href="${data['curPage']}" data-totalPage="${data['totalPage']}" aria-label="Next">
        <span aria-hidden="true" class="text-secondary">Nest</span>	
      </a>
    </li>
  </ul>
</nav>
		`;
		
		el.append(strPage);
		
	});
}

function getMyAllReplies(member_id, el){
	el.html("");
	
	$.getJSON("/Myreplies/"+member_id, function(data){
	
		
		for(var i=0;i<data.length;i++){
			var obj = data[i];
			
			msg = Myreplyform(obj["member_id"], obj["review_updatedate"], obj["review_content"],obj["review_grade"], obj["review_no"]);
			el.append(msg);
		}
		
	});
}

function Myreplyform(member_id, review_updatedate, review_content, review_grade , review_no){
	
	var msg = `
						   <div id="review_view" class="jumbotron" style="padding: 30px 20px 30px 20px">

					

					        <span class="float-left">작성자 : ${member_id}</span>&emsp; | &emsp; <span class="card-text review_grade"> 평점 : ${review_grade}</span> <span class="float-right"  style="opacity: 0.5">작성시간 ${review_updatedate}</span>
								<br>
								<hr>			   

						      
								
					         <p class="card-text review_content font-weight-bold">${review_content}</p>
							 

					         <a data-member_id="${member_id}" data-review_no="${review_no}" href="#" class="btn btn-light btn-sm btn_review_updateui_form" data-toggle="modal" data-target="#staticBackdrop">수정</a> 
					         <a data-review_no="${review_no}" href="#" class="btn btn-light btn-sm btn_review_delete">삭제</a>


					      
					   </div>
					`;
					
					return msg;
	
}

/*----------------------------------------------------------------------------*/


function getRepliesPage(board_no, curPage, el){
	el.html("");

	$.getJSON("/replies/"+board_no+"/"+curPage, function(data){
		var arr= data["list"];
		
		for(var i=0;i<arr.length;i++){
			var obj = arr[i];
			
			msg = replyform(obj["member_id"], obj["review_updatedate"], obj["review_content"],obj["review_grade"], obj["review_no"]);
			el.append(msg);
		}
		
		var strPage = `
		<nav aria-label="Page navigation example" id="review_view_nav">
  <ul class="pagination justify-content-center">
    <li class="page-item">
      <a class="page-link reply_page_left" href="${data['curPage']}" aria-label="Previous">
        <span aria-hidden="true" class="text-secondary">Previous</span>
      </a>
    </li>
		
		`;
		
		for(var i = data.beginPageNum; i < data.endPageNum+1; i++){
			var activeOr = data.curPage == i?"active":"";
			strPage += `<li class="page-item ${activeOr} "><a class="page-link reply_page_no " href="#" >${i}</a></li>`;
		}
		
		strPage +=`
		    <li class="page-item">
      <a class="page-link reply_page_right" href="${data['curPage']}" data-totalPage="${data['totalPage']}" aria-label="Next">
        <span aria-hidden="true" class="text-secondary">Nest</span>	
      </a>
    </li>
  </ul>
</nav>
		`;
		
		el.append(strPage);
		
	});
}

function getAllReplies(board_no, el){
	el.html("");
	
	$.getJSON("/replies/"+board_no, function(data){
	
		
		for(var i=0;i<data.length;i++){
			var obj = data[i];
			
			msg = replyform(obj["member_id"], obj["review_updatedate"], obj["review_content"],obj["review_grade"], obj["review_no"]);
			el.append(msg);
		}
		
	});
}

function replyform(member_id, review_updatedate, review_content, review_grade , review_no){
	
	var msg = `
						   <div id="review_view" class="jumbotron" style="padding: 30px 20px 30px 20px">

					

					        <span class="float-left">작성자 : ${member_id}</span>&emsp; | &emsp; <span class="card-text review_grade"> 평점 : ${review_grade}</span> <span class="float-right"  style="opacity: 0.5">작성시간 ${review_updatedate}</span>
								<br>
								<hr>			   

						      
								
					         <p class="card-text review_content font-weight-bold">${review_content}</p>
							 
							<div class="asd">
					         <a data-member_id="${member_id}" data-review_no="${review_no}" href="#" class="btn btn-light btn-sm btn_review_updateui_form" data-toggle="modal" data-target="#staticBackdrop">수정</a>
					         <a data-review_no="${review_no}" href="#" class="btn btn-light btn-sm btn_review_delete">삭제</a>
							</div>

					      
					   </div>
					`;
					
					return msg;
	
}
