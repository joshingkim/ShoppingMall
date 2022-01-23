/**
 * 
 */
function qnalist(board_no, curPage, el) {
	el.html("");

	$.getJSON("/qna/list/"+board_no+"/"+curPage, function(data) {
		var arr = data["list"];
		if(arr == null){return;}
		for (var i = 0; i < arr.length; i++) {
			var obj = arr[i];
			
			msg = qnaform(obj["qna_no"],obj["qna_title"],obj["member_id"],obj["qna_regdate"]);
			ctnt = qnacontent(obj["qna_no"],obj["qna_content"]);
			ansr = qnaanswer(obj["qna_answer"],obj["qna_updatedate"])
			
			el.append(msg);
			el.append(ctnt);
			el.append(ansr);
		}
		var strPage = `
		<div class="pagingline">
			<nav aria-label="Page navigation example">
  				<ul class="pagination justify-content-center">
    				<li class="page-item">
    				  <a class="page-link qna_page_left" href="${data['curPage']}" aria-label="Previous">
      				 	 <span aria-hidden="true" class="text-secondary">Previous</span>
 				   	  </a>
   					 </li>
		
		`;
		
		for(var i = data.beginPageNum; i < data.endPageNum+1; i++){
			var activeOr = data.curPage == i?"active":"";
			strPage += `<li class="page-item ${activeOr}"><a class="page-link qna_page_no" href="#">${i}</a></li>`;
		}
		
		strPage +=`
		  <li class="page-item">
      				<a class="page-link qna_page_right" href="${data['curPage']}" data-totalPage="${data['totalPage']}" aria-label="Next">
      			  <span aria-hidden="true" class="text-secondary">Next</span>
     		 </a>
   		 </li>
  		</ul>
	</nav>
</div>
		`;
		
			el.append(strPage);
		
	});
}

function qnaform(qna_no, qna_title, member_id, qna_regdate) {
	var msg = `
					<tr>
						<div>
							<td>${qna_no}</td>
							<td><a href="javascript:void(0)" class="viewcontent">${qna_title}</a></td>
							<td>${member_id}</td>
							<td>${qna_regdate}</td>
						</div>
					</tr>
				`;
	return msg;
}
function qnacontent(qna_no, qna_content){
	var ctnt = `
					<tr class="qna_ctnt">
						<div>
							<td colspan="3">
								<p><span style="opacity: 0.5">내용:</span>${qna_content}</p>
							</td>
							<td class="area-answer">
								<input type="hidden" id ="qna_no" "name="qna_no" value="">
								<button data-qna_no="${qna_no}" class="btn btn-primary btn-sm btn_answer" onclick="qnaAnswer(); return false;">답변달기</button>
							</td>
						</div>	
					</tr>
				`;	
	return ctnt;
}
function qnaanswer(qna_answer, qna_updatedate){
	var ansr= `
					<tr class="qna_answer">
						<td></td>
						<td>
							<p style="opacity: 0.5">판매자 답글입니다.</p>
							<p class="qa">${qna_answer}</p>
						</td>
						<td><p>판매자</p></td>
						<td>${qna_updatedate}</td>
					</tr>
				`;
	return ansr;
}
