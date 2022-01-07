/**
 * 
 */
function File(){

}










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
		<nav aria-label="Page navigation example">
  <ul class="pagination">
    <li class="page-item">
      <a class="page-link reply_page_left" href="${data['curPage']}" aria-label="Previous">
        <span aria-hidden="true">&laquo;</span>
      </a>
    </li>
		
		`;
		
		
		for(var i = data.beginPageNum; i < data.endPageNum+1; i++){
			var activeOr = data.curPage == i?"active":"";
			strPage += `<li class="page-item ${activeOr}"><a class="page-link reply_page_no" href="#">${i}</a></li>`;
		}
		
		
		strPage +=`
		    <li class="page-item">
      <a class="page-link reply_page_right" href="${data['curPage']}" data-totalPage="${data['totalPage']}" aria-label="Next">
        <span aria-hidden="true">&raquo;</span>
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
						   <div class="card">

					      <div class="clearfix card-header">

					         <span class="float-left">${member_id}</span><span class="float-right">${review_updatedate}</span>

					      </div>

					      <div class="card-body">
							<p class="card-text">평점: ${review_grade}점</p>
					         <p class="card-text">${review_content}</p>
							 

					         <a data-member_id="${member_id}" data-review_no="${review_no}" href="#" class="btn btn-warning btn-sm btn_review_updateui_form">수정</a> 
					         <a data-review_no="${review_no}" href="#" class="btn btn-danger btn-sm btn_review_delete">삭제</a>

					      </div>
					   </div>
					`;
					
					return msg;
	
}








