/**
 * 
 */
function File(){

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

					         <p class="card-text">${review_content}</p>

					         <a data-member_id="${member_id}" data-review_no="${review_no}" href="#" class="btn btn-warning btn-sm btn_review_updateui_form">수정</a> 
					         <a data-review_no="${review_no}" href="#" class="btn btn-danger btn-sm btn_review_delete">삭제</a>

					      </div>
					   </div>
					`;
					
					return msg;
	
}








