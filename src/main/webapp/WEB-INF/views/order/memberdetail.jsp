<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="/resources/js/file.js" type="text/javascript"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
  <style type="text/css">
    .btn_ex_re{
  	border-radius: 5px;	
  }
  	.btn_cancel{
  	border-radius: 5px;	
  	}
  	img {
	width: 100px;
	height: 100px;
	}
  </style>
</head>
	<jsp:include page="../header.jsp" />
	<jsp:include page="../sidebar.jsp" />
<body>
	<div class="container" style=" font-size : small;">
		<h2>주문내역</h2>


		<div class="wrap-detail">
			<form action="/exchangeRefund/requestpage">
							<input type="hidden" name="member_id" value="">
							<input type="hidden" name="order_id" value="">
							<input type="hidden" name="price" value="">
							<input type="hidden" name="order_date" value="">
							<input type="hidden" name="ea" value="">

				<table class="table">
					<thead>
						<tr>
							<th scope="col">주문번호</th>
							<th scope="col">이미지</th>
							<th scope="col">상품명</th>
							<th scope="col">제품수량</th>
							<th scope="col">제품가격</th>
							<th scope="col">배송상태</th>
							<th scope="col">결제일</th>
							<th scope="col">비고</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${pt.list}" var="ovo" varStatus="i">
							<tr class="stat">
								
								
								<td><a style="text-decoration: none; color: #000;" href="/order/orderpage/${ovo.order_id}">${ovo.order_id}</a></td>
								<td><div data-item_no="${ovo.item_no}" data-item_name="${ovo.item_name}" data-file_name="${ovo.file_name}" class="uploadedList${i.index}"></div></td>
								<td><a style="text-decoration: none; color: #000;" href="/item/read/${ovo.item_no}">${ovo.item_name}</a></td>
								<td>${ovo.ea}</td>
								<td>${ovo.price}</td>
								<td>${ovo.status}</td>
								<td><fmt:formatDate value="${ovo.order_date}" pattern="yyyy-MM-dd HH:mm" /></td>
								<td><c:if test="${ovo.status == '상품 준비 중'}">
										<button data-ea="${ovo.ea}"
											data-order_date="${ovo.order_date}" data-price="${ovo.price}"
											data-member_id="${ovo.member_id}"
											data-order_id="${ovo.order_id}" class="btn_cancel">주문취소</button>
										
									</c:if> <c:if test="${ovo.status == '교환' || ovo.status == '환불'}">
										<p>진행중</p>
									</c:if> <c:if test="${ovo.status == '배송완료'}">
										<button data-ea="${ovo.ea}"
											data-order_date="${ovo.order_date}" data-price="${ovo.price}"
											data-member_id="${ovo.member_id}"
											data-order_id="${ovo.order_id}" class="btn_ex_re">교환/환불</button>
										<input class="btn_review" data-item_no ="${ovo.item_no}" type="button" value="리뷰쓰기"/>
									</c:if> <c:if
										test="${ovo.status == '교환완료' || ovo.status == '환불완료' || ovo.status == '취소'}">
										<p>완료</p>
									</c:if></td>

							</tr>
						</c:forEach>
					</tbody>
				</table>
			</form>
		</div>
		<div style="margin-left: 40%">
		<jsp:include page="pageForMember.jsp" />
		</div>
	</div>




	<jsp:include page="../footer.jsp" />
	<script type="text/javascript">
	
$(document).ready(function() {
	var vo ="${pt.list}";
	var arr = eval(vo);
	for(var i=0; i<arr.length; i++){
		var div_class = ".uploadedList"+i;
		var item_no = $(div_class).attr("data-item_no");
		var item_name = $(div_class).attr("data-item_name");
		var file_name = $(div_class).attr("data-file_name");
		var item = uploadedItemForRead(file_name,item_no);
		$(div_class).append(item);
	}
	
	$("table").on("click", ".btn_cancel",function(event){
		event.preventDefault();
		var order_id = $(this).attr("data-order_id");
		var member_id = $(this).attr("data-member_id");
		var order_date = $(this).attr("data-order_date");
		var price = $(this).attr("data-price");
		var ea = $(this).attr("data-ea");
		$.ajax({
			type : "POST",
			url : "/exchangeRefund/insertExRefund",
			dataType : "text",
			data : {
				exchange_refund_content : '취소',
				exchange_refund_code : 2,
				order_id : order_id,
				member_id : member_id,
				order_date : order_date,
				price : price,
				ea : ea
			},
			success : function(result){
				window.location.reload();
			}
			
		});
	});
	
	$(".btn_ex_re").click(function(){
		var order_id = $(this).attr("data-order_id");
		var member_id = $(this).attr("data-member_id");
		var order_date = $(this).attr("data-order_date");
		var price = $(this).attr("data-price");
		var ea = $(this).attr("data-ea");
		
		$("[name='member_id']").attr("value",member_id);
		$("[name='order_id']").attr("value",order_id);
		$("[name='order_date']").attr("value",order_date);
		$("[name='price']").attr("value",price);
		$("[name='ea']").attr("value",ea);
		$("form").submit;
	});
	
	$(".btn_review").click(function(){
		var item_no = $(this).attr("data-item_no");
		$.getJSON("/board/getBoard_no/"+item_no, function(board_no) {
			var url="../../board/reviewinsert/"+board_no;
	        window.open(url,"","width=400,height=500,left=600");
		});
	});
	
	
});



</script>



</body>
</html>