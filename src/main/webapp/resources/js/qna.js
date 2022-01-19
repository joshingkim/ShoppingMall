/**
 * 
 */
function qnalist(board_no, curPage, el) {
	el.html("");

	$.getJSON("/qna/list/"+board_no+"/"+curPage, function(data) {
		var arr = data["list"];
		for (var i = 0; i < arr.length; i++) {
			var obj = arr[i];
			
			msg = qnaform(obj["qna_no"],obj["qna_title"],obj["member_id"],obj["qna_regdate"],obj["qna_content"],obj["qna_answer"],obj["qna_updatedate"]);
			el.append(msg);
		}
		var strPage = `
		<nav aria-label="Page navigation example" id="qna_view_nav">
  <ul class="pagination justify-content-center"	>
    <li class="page-item">
      <a class="page-link qna_page_left" href="${data['curPage']}" aria-label="Previous">
        <span aria-hidden="true">&laquo;</span>
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
        <span aria-hidden="true">&raquo;</span>
      </a>
    </li>
  </ul>
</nav>
		`;
		
		el.append(strPage);
		
	});
}

function qnaform(qna_no, qna_title, member_id, qna_regdate, qna_content, qna_answer, qna_updatedate) {
	var msg = `
					<tr>
						<td>${qna_no}</td>
						<td><a href="javascript:void(0)" class="viewcontent">${qna_title}</a></td>
						<td>${member_id}</td>
						<td>${qna_regdate}</td>
					</tr>
					
					<tr class="qna_ctnt">
						<td colspan="6">
							<p>${qna_content}
								<button class="btn btn-primary btn_answer">답변달기</button>
							</p>
								<div class="answer_show">
									<form>
										<input name="qna_no" type="hidden" value="${qna_no}">
										<textarea rows="3" name="qna_answer"></textarea>
										<button class="btn_submit">답변</button>
									</form>
								</div>
						</td>
					</tr>
				
					<tr class="qna_answer">
						<td>
							<p>${qna_answer}</p>
						</td>
						<td>${qna_updatedate}</td>
					
				`;
	return msg;
}

