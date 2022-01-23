<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>주문자세히보기 페이지</title>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
  <script src="/resources/js/file.js" type="text/javascript"></script>
<style type="text/css">
.refundpage{
    width: 1250px;
    padding: 0;
    float: right;
}

.h-detail{
	margin-top: 55px;
	padding-bottom: 10px;
	border-bottom: 1px solid #000000;
}

th{
	width :150px;
}

img{
	width : 150px;
	height : 150px;
}

table {
	text-align: center;
    width: inherit;
}

dt, dd {
	float : left;
}

dd {
	margin-right : 30px;
}

.h-refund{
	display : inline-block;
}

.uploadedList{
	align-content: center;
}

.refundpage{
    padding: 0;
    float: right;
}

.wrap-ordered-detail {
    overflow: hidden;
    position: relative;
}

.sec-oredered-detail{
	float : none;
	width:50%;
	height: 220px;
    padding-right: 30px;
}

.sec-refund-detail{
	width:50%;
	height:220px;
	position: absolute;
	right: 0;
    top: 0;
}

.btn-resist-refund{
 margin-top: 50px;
 float : right;
}
</style>
</head>
<body>
	<jsp:include page="../header.jsp" />
	<jsp:include page="../sidebar.jsp" />

	<section class="refundpage">
						<header class="h-detail">
							<h3 class="h-refund">상품정보</h3>
						</header>
						<table>
							<thead>
								<tr>
									<th>상품정보</th>
									<th>상품명</th>
									<th>사이즈</th>
									<th>색상</th>
									<th>할인률</th>
									<th>가격</th>
									<th>주문상태</th>
								</tr>
							</thead>

							<tbody>
								<tr>
									<td class="uploadedList"></td>
									<td>${ivo.item_name}</td>
									<td>${ivo.item_size}</td>
									<td>${ivo.item_color}</td>
									<td>${ivo.discount_percentage}%</td>
									<td>${ivo.item_price}원</td>
									<td>${ovo.status}</td>
								</tr>
							</tbody>
						</table>
				<div class="wrap-ordered-detail">
					<section class="sec-oredered-detail">
						<header class="h-detail">
							<h3 class="h-refund">배송지정보</h3>
						</header>
						
						<table>
							<tbody>
								<tr>
								<th>이름</th>
								<td>${ovo.receiver}</td>
								</tr>
								<tr>
								<th>연락처</th>
								<td>${ovo.phone}</td>
								</tr>
								<tr>
								<th>배송지주소</th>
								<td>${ovo.address},${ovo.dAddress}</td>
								</tr>
							</tbody>
						</table>
					</section>
				<section class="sec-refund-detail">
					<header class="h-detail">
						<h3 class="h-refund">주문정보</h3>
					</header>
					
					<table>
						<tbody>
							<tr>
								<th>주문번호</th>
								<td>${ovo.order_id}</td>
							</tr>
							<tr>
								<th>주문아이디</th>
								<td>${ovo.member_id}</td>
							</tr>
							<tr>
								<th>주문일자</th>
								<td>${ovo.order_date}</td>
							</tr>
							<tr>
								<th>주문수량</th>
								<td>${ovo.ea}개</td>
							</tr>
							<tr>
								<th>가격</th>
								<td>${ovo.price}원</td>
							</tr>
						</tbody>
					</table>
				</section>
			</div>
			</section>
	<script type="text/javascript">
	
	var item_no = ${ivo.item_no};
	var item_name = "${ivo.item_name}";
	var member_id = "${login.member_id}";
	var item_price = ${ivo.item_price};
		$(document).ready(function() {
			
			$.getJSON("/item/getItem_size/"+item_name, function(data) {
				for(var i=0; i<data.length; i++){
					var msg = "<option>"+data[i]+"</option>";
					$("#item_size").append(msg);
				}
			});
			
			$.getJSON("/item/getItem_color/"+item_name, function(data) {
				for(var i=0; i<data.length; i++){
					var msg = "<option>"+data[i]+"</option>";
					$("#item_color").append(msg);
				}
			});
			
			$.getJSON("/file/getFile/"+item_no, function(data) {
				/* for(var i=0; i<data.length; i++){ */
					var item = uploadedItemForRead(data[0]);
					$(".uploadedList").append(item);
				/* } */
			});

		});
	</script>
</body>
<jsp:include page="../footer.jsp" />
</html>