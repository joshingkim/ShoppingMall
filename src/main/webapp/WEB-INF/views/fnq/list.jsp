<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>



<!DOCTYPE html>
<html>
 <meta charset="utf-8">
<head>

  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<title>Insert title here</title>

<style type="text/css">
#faqWrap #faqTable tr.slide-hide,
#faqWrap #faqTable tr.slide-hide dl {
    display: none;
}
#faqWrap #faqTable tr.slide-show {
    display: table-rows;
    *display: block;
}
#faqWrap #faqTable tr.slide-show dl {
    display: block;
}
#faqWrap #faqTable tr.slide-hide td,
#faqWrap #faqTable tr.slide-show td {
    cursor: default;
    background-color: #fffae5;
}

</style>
</head>
<body>


	<jsp:include page="../header.jsp"/>

	<jsp:include page="../sidebar.jsp" />






<!-- 갈무리 -->

<div id="contentWrapper" class="container">
        <div id="content">
            <div class="container bbs-container">
                <div id="faqWrap">
                    <div class="page-body">
						<div class="bbs-tit">
						<h3 >F & Q 게시판</h3><br>
						</div>
						
                        
                        
                        <div id="faqTable">
                            <table summary="분류 제목" class="table">
                                <caption></caption>
                                <colgroup>
                                    <col width="55" />
                                    <col width="150" />
                                    <col width="*" />
                                </colgroup>
                                <thead>
                                    <tr>
                                        <th scope="col">
                                            <div class="tb-center">no.</div>
                                        </th>
                                        <th scope="col">
                                            <div class="tb-center">분류</div>
                                        </th>
                                        <th scope="col">
                                            <div class="tb-center">제목</div>
                                        </th>
                                    </tr>
                                </thead>
                                <tbody>
                                                                        <tr uid="47">
                                        <td>
                                            <div class="tb-center">25</div>
                                        </td>
                                        <td>
                                            <div class="tb-center">취소/환불</div>
                                        </td>
                                        <td>
                                            <div class="tb-left">주문취소 및 반품 / 적립금 환불 문의내용</div>
                                        </td>
                                    </tr>
                                    <tr class="slide-hide">
                                        <td colspan="3">
                                            <div class="tb-slide">
                                                <dl class="qst">
                                                    <dt><img alt="질문" src="/resources/img/Q&A1.png"></dt>
                                                    <dd>주문취소 및 반품 / 적립금 환불 문의내용</dd>
                                                </dl>
                                                <dl class="adv">
                                                    <dt><img alt="답변" src="/resources/img/Q&A1.png"></dt>
                                                    <dd>이미 적립금으로 환불받아보신 경우 <font color="red">어떠한 경우에도 원결제 수단대로 재환불 처리가 불가</font>합니다.<br>
이점 참고하여 주문취소 및 반품 접수 시 신중하게 환불 수단 선택바랍니다.</dd>
                                                </dl>
                                            </div>
                                        </td>
                                    </tr>
                                                                        <tr uid="31">
                                        <td>
                                            <div class="tb-center">24</div>
                                        </td>
                                        <td>
                                            <div class="tb-center">교환/반품</div>
                                        </td>
                                        <td>
                                            <div class="tb-left">교환 반품 신청을 하고 싶어요</div>
                                        </td>
                                    </tr>
                                    <tr class="slide-hide">
                                        <td colspan="3">
                                            <div class="tb-slide">
                                                <dl class="qst">
                                                    <dt><img alt="질문" src="/resources/img/Q&A1.png"></dt>
                                                    <dd>교환 반품 신청을 하고 싶어요</dd>
                                                </dl>
                                                <dl class="adv">
                                                    <dt><img alt="답변" src="/resources/img/Q&A1.png"></dt>
                                                    <dd>반품 접수방법은 아래와 같이 접수하시어 보내주세요.<br><br>

한진택배(1588-0011/1544-0011) "<font color="red">착불</font>"로 반품택배 접수를 해주세요.<br>
또는  Q&A로 들어가셔서 교환/반품페이지에서 접수해주시거나<br>
고객센터로 교환/반품 내용을 접수해주시면 됩니다.<br><br>

약 2~3일 이내로 택배기사님이 방문하며 주말과 공휴일은 방문이 불가합니다.<br>
영업소 사정의 의해서 시일이 더 소요될 수 도 있습니다.<br>
택배 접수 문의는 한진택배(1588-0011/1544-0011) 에 문의 부탁드립니다.<br>
★편의점 택배는 타 택배로 취급되며, 추가비용이 발생하게 됩니다.★<br><br>


Q. 한진택배가 아닌 다른 택배사를 이용해도 되나요?<br><br>

A. 이용가능하시나, 한진택배가 아닌 <font color="red">다른 택배를 이용하실경우(편의점택배포함)</font><br>
보내주시는 <font color="red">택배비는 선불로 결제</font>하여 보내주셔야 합니다.<br><br>

Q. 택배사측으로 회수예약했으나, 방문하지 않습니다. 다른방법이 없나요? <br><br>

A . 각 영업소(지역별)상황에 따라 택배 물량이 많이 접수되어 방문이 지연 될 수 있습니다.<br>
이럴경우 다시 한번 한진택배(1588-0011/1544-0011) 전화를 하여 방문요청을 해주시거나,<br>
게시판문의나 고객센터로 문의 부탁드리겠습니다.<br><br>

Q. 타 상품 교환 가능한가요?<br><br>

A. 안녕하세요 저희 슈퍼스타아이에서는 타 상품교환은 불가능합니다.<br>
같은 가격의 상품도 교환이 불가능 하며,<br>
오직 동일상품의 사이즈 및 색상교환만 가능합니다.<br>
<font color="red">타 상품교환 같은경우는 환불 및 적립금 환불을 받으시고 새로 주문</font>해주시면 됩니다.</dd>
                                                </dl>
                                            </div>
                                        </td>
                                    </tr>
                                                                        <tr uid="33">
                                        <td>
                                            <div class="tb-center">23</div>
                                        </td>
                                        <td>
                                            <div class="tb-center">교환/반품</div>
                                        </td>
                                        <td>
                                            <div class="tb-left">상품은 어디로 보내야 하나요?</div>
                                        </td>
                                    </tr>
                                    <tr class="slide-hide">
                                        <td colspan="3">
                                            <div class="tb-slide">
                                                <dl class="qst">
                                                    <dt><img alt="질문" src="/resources/img/Q&A1.png"></dt>
                                                    <dd>상품은 어디로 보내야 하나요?</dd>
                                                </dl>
                                                <dl class="adv">
                                                    <dt><img alt="답변" src="/resources/img/Q&A1.png"></dt>
                                                    <dd>철회요청서에 고객님 정보와 처리 사항을 적으신 후<br>
받는사람 DAPAN&DA<br>
서울 OO로 OO길 OO-O 으로 보내주시면 됩니다.<br><br>

<font color=red><br>※ 한진택배 택배가 아닌 타택배로 보내주실 경우에는<br>
선불로 직접 결제후 보내주셔야합니다.</font></dd>
                                                </dl>
                                            </div>
                                        </td>
                                    </tr>
                                                                        <tr uid="1">
                                        <td>
                                            <div class="tb-center">22</div>
                                        </td>
                                        <td>
                                            <div class="tb-center">주문관련</div>
                                        </td>
                                        <td>
                                            <div class="tb-left">상품을 구매하려면 어떻게 해야 하나요?</div>
                                        </td>
                                    </tr>
                                    <tr class="slide-hide">
                                        <td colspan="3">
                                            <div class="tb-slide">
                                                <dl class="qst">
                                                    <dt><img alt="질문" src="/resources/img/Q&A1.png"></dt>
                                                    <dd>상품을 구매하려면 어떻게 해야 하나요?</dd>
                                                </dl>
                                                <dl class="adv">
                                                    <dt><img alt="답변" src="/resources/img/Q&A1.png"></dt>
                                                    <dd>주문하실 상품의 사진이나 제품명을 클릭합니다.<br>
주문하실 상품의 사이즈와 색상을 선택 후 주문하기를 클릭합니다.<br>
주문정보입력을 꼼꼼히 적으신 후 결제를 클릭합니다.<br><br>

* 쿠폰 사용은 선택란을 클릭하여 사용가능한 쿠폰번호가 보이며<br>
쿠폰번호를 선택 후 확인버튼을 누르시면 쿠폰적용이 됩니다.<br>
결제란에 무통장 입금시 : 무통장 입금을 선택하시고 원하시는 은행을 선택 후 결제하기를 누르면 됩니다.<br>
결제란에 카드 결제시 : 신용카드 선택을 하시고 결제하실 카드사를 선택 후 결제를 하시면 됩니다.<br><br>

* <font color="red">비씨카드는 "ISP인증"</font>을 따로 받으셔야 합니다.


</dd>
                                                </dl>
                                            </div>
                                        </td>
                                    </tr>
                                                                        <tr uid="27">
                                        <td>
                                            <div class="tb-center">21</div>
                                        </td>
                                        <td>
                                            <div class="tb-center">교환/반품</div>
                                        </td>
                                        <td>
                                            <div class="tb-left">교환/반품 택배비는 얼마인가요?</div>
                                        </td>
                                    </tr>
                                    <tr class="slide-hide">
                                        <td colspan="3">
                                            <div class="tb-slide">
                                                <dl class="qst">
                                                    <dt><img alt="질문" src="/resources/img/Q&A1.png"></dt>
                                                    <dd>교환/반품 택배비는 얼마인가요?</dd>
                                                </dl>
                                                <dl class="adv">
                                                    <dt><img alt="답변" src="/resources/img/Q&A1.png"></dt>
                                                    <dd>-단순 변심으로 인한 색상 및 사이즈 교환 6,000원<br>
-불량/오배송 상품은 주문하신 동일상품 동일사이즈로 무상교환<br><br>

- 구매한 상품 전부 반품 6,000원<br> 
- 반품하는 상품을 제외한 구매상품의 가격이 5만원 미만일 경우 6,000원<br>
- 반품하는 상품을 제외한 구매상품의 가격이 5만원 이상일 경우 3,000원<br><br>

<font color=red>※ 꼭 한진택배(1588-0011/1544-0011) "착불"로 보내주세요.<br>
한진택배 선불 및 타 택배로 보낼시에는 더 많은 택배비가 나옵니다.<br>
편의점 택배도 타 택배로 취급 되며, 타 택배 이용시 선불로 보내주세요.</font></dd>
                                                </dl>
                                            </div>
                                        </td>
                                    </tr>
                                                                        <tr uid="44">
                                        <td>
                                            <div class="tb-center">20</div>
                                        </td>
                                        <td>
                                            <div class="tb-center">배송관련</div>
                                        </td>
                                        <td>
                                            <div class="tb-left">배송 소요 기간 (부분배송/지연/품절)	</div>
                                        </td>
                                    </tr>
                                    <tr class="slide-hide">
                                        <td colspan="3">
                                            <div class="tb-slide">
                                                <dl class="qst">
                                                    <dt><img alt="질문" src="/resources/img/Q&A1.png"></dt>
                                                    <dd>배송 소요 기간 (부분배송/지연/품절)	</dd>
                                                </dl>
                                                <dl class="adv">
                                                    <dt><img alt="답변" src="/resources/img/Q&A1.png"></dt>
                                                    <dd>[배송] : 보통은 주문 후 다음날부터 계산하여 평균 주말제외 2~5일 소요될 수 있습니다.<br>
(단, 원단에 따라 추가일정이 생기는 경우도 있음) 거래처에 매일매일 주문건 입고요청하며 체크하고 있습니다.<br>
또한 일정상품이 입고지연이 심하다고 예상될 경우에도 부분발송처리 진행해드리는 
<br>
[지연] : 거래처 사정으로 부득이하게 지연되는 경우 따로 안내되고 있습니다.<br>
<br>
[품절] : 품절상품으로 불편을 드려 죄송합니다.<br>
<br>
* 당일배송 품목 제외 후, 일반 배송 상품들의 경우 결제 왼료된 주문서를 보고 상품 입고가 이루어지기 때문에 공급 업체의 사정에 따라 원단 소진 및 제작중단 등에 의한 사유로 상품이 품절될 수 있습니다.<br>
* 품절상품은 주문시 직접 기재해주신 (품절시 환불수단대로 처리 후) 따로 안내드리고 있습니다.<br>
* 품절된 상품들 중 옵션변경 가능할 시 따로 안내되고 있으며 원하시는 QnA게시판 또는 고객센터로 남겨주시면 감사하겠습니다.</dd>
                                                </dl>
                                            </div>
                                        </td>
                                    </tr>
                                                                        <tr uid="43">
                                        <td>
                                            <div class="tb-center">19</div>
                                        </td>
                                        <td>
                                            <div class="tb-center">기타문의</div>
                                        </td>
                                        <td>
                                            <div class="tb-left">적립금 소멸 관련한 공지사항</div>
                                        </td>
                                    </tr>
                                    <tr class="slide-hide">
                                        <td colspan="3">
                                            <div class="tb-slide">
                                                <dl class="qst">
                                                    <dt><img alt="질문" src="/resources/img/Q&A1.png"></dt>
                                                    <dd>적립금 소멸에 관한 공지사항</dd>
                                                </dl>
                                                <dl class="adv">
                                                    <dt><img alt="답변" src="/resources/img/Q&A1.png"></dt>
                                                    <dd><적립금 관련 추가/변경 내용><br>
<br>
제25조(적립금과 예치금)<br>
1. 적립금은 "몰"내에서만 현금처럼 사용되는 전자화폐이며, 상품 구매시에만 이용할 수 있습니다.<br>
2. 적립금은 "몰" 회원에 한하여 제공되는 서비스입니다.<br>
3. 적립금은 타 결제수단(신용카드, 모바일, 현금)과 함께 사용될 수 있습니다.<br>
4. 회원이 상품 구매나 이벤트 등을 통하여 "몰"로부터 무상 제공받은 적립금의 경우 "몰"에서 정한 사용 조건 내에서만 사용 가능합니다.<br>
(적립금 사용 조건: 적립금은 상품 구매시 결제 금액이 1만원 이상인경우 사용 가능합니다.)<br>
5. "몰"은 각종 할인이벤트 등의 특정 기간에는 적립금 또는 예치금의 신청 및 사용을 제한할 수 있습니다.<br>
6. 회원이 상품 구매나 이벤트 등을 통하여 "몰"로부터 무상 제공받은 적립금의 경우 "몰"에서 정한 기한에 한해서만 사용 가능합니다.<br>
7. 유효기간 : "몰"로부터 제공받은 적립금의 경우 회사가 별도로 유효기간을 정한 경우 이에 따릅니다. 유효기간이 경과한 적립금은 자동 소멸됩니다.<br>
8. 최종 누적일로부터 1년간 추가 누적이 없는 경우, 적립금 소멸일 기준으로 최근 1년간 적립금을 사용 한 이력이 없는 경우 "몰"은 해당 회원의 적립금을 회수합니다.</dd>
                                                </dl>
                                            </div>
                                        </td>
                                    </tr>
                                                                        <tr uid="41">
                                        <td>
                                            <div class="tb-center">18</div>
                                        </td>
                                        <td>
                                            <div class="tb-center">기타문의</div>
                                        </td>
                                        <td>
                                            <div class="tb-left">적립금 관련 문의</div>
                                        </td>
                                    </tr>
                                    <tr class="slide-hide">
                                        <td colspan="3">
                                            <div class="tb-slide">
                                                <dl class="qst">
                                                    <dt><img alt="질문" src="/resources/img/Q&A1.png"></dt>
                                                    <dd>적립금 관련 문의</dd>
                                                </dl>
                                                <dl class="adv">
                                                    <dt><img alt="답변" src="/resources/img/Q&A1.png"></dt>
                                                    <dd>적립금은 실 결제금액 1만원 이상부터 사용 가능합니다.<br>
(이벤트 /  할인 상품은 적용 불가할 수 있습니다.)</dd>
                                                </dl>
                                            </div>
                                        </td>
                                    </tr>
                                                                        <tr uid="16">
                                        <td>
                                            <div class="tb-center">17</div>
                                        </td>
                                        <td>
                                            <div class="tb-center">배송관련</div>
                                        </td>
                                        <td>
                                            <div class="tb-left">당일출고 및 당일발송이 가능한가요?</div>
                                        </td>
                                    </tr>
                                    <tr class="slide-hide">
                                        <td colspan="3">
                                            <div class="tb-slide">
                                                <dl class="qst">
                                                    <dt><img alt="질문" src="/resources/img/Q&A1.png"></dt>
                                                    <dd>당일출고 및 당일발송이 가능한가요?</dd>
                                                </dl>
                                                <dl class="adv">
                                                    <dt><img alt="답변" src="/resources/img/Q&A1.png"></dt>
                                                    <dd>당일발송 상품은 오후 3시 이전 단독 주문 시 추로 가능하며, 검수과정에서 문제가 있거나 준비된 재고 소진 시 일정이 변동될 수 있습니다.<br>
<br>
이점 양해 부탁드립니다.<br>
(자세한 내용은 고객센터에서 확인 부탁드립니다)</dd>
                                                </dl>
                                            </div>
                                        </td>
                                    </tr>
                                                                        <tr uid="45">
                                        <td>
                                            <div class="tb-center">16</div>
                                        </td>
                                        <td>
                                            <div class="tb-center">배송관련</div>
                                        </td>
                                        <td>
                                            <div class="tb-left">불량, 오배송, 맞교환의 문의내용</div>
                                        </td>
                                    </tr>
                                    <tr class="slide-hide">
                                        <td colspan="3">
                                            <div class="tb-slide">
                                                <dl class="qst">
                                                    <dt><img alt="질문" src="/resources/img/Q&A1.png"></dt>
                                                    <dd>불량, 오배송, 맞교환의 문의내용</dd>
                                                </dl>
                                                <dl class="adv">
                                                    <dt><img alt="답변" src="/resources/img/Q&A1.png"></dt>
                                                    <dd>[불량] : 상품 부득이하게 불량으로 받아보시는 경우 꼭 사전에 고객센터로 연락해주셔야 하며 상의없이 보내주시는 경우 임의 반송 처리될 수 있습니다.<br>
<br>
[오배송] : 오배송으로 받아보신 경우 고객센터로 문의주시면 확인 후 빠른안내 도와드리겠습니다.<br>
<br>
[맞교환] : 맞교환 시 회수와 배소잉 동시에 이루어지면 간혹 상품이 분실되는 경우가 있어 맞교환 서비스를 진행하지 않습니다.<br>
교환은 상품 입고 후 진행이 되며 약 7일 정도의 기간이 소요됩니다.</dd>
                                                </dl>
                                            </div>
                                        </td>
                                    </tr>
                                             <tr uid="5">
                                        <td>
                                            <div class="tb-center">15</div>
                                        </td>
                                        <td>
                                            <div class="tb-center">주문관련</div>
                                        </td>
                                        <td>
                                            <div class="tb-left">여러 개의 상품을 구매하려는데 어떻게 해야 할까요?</div>
                                        </td>
                                    </tr>
                                    <tr class="slide-hide">
                                        <td colspan="3">
                                            <div class="tb-slide">
                                                <dl class="qst">
                                                    <dt><img alt="질문" src="/resources/img/Q&A1.png"></dt>
                                                    <dd>여러 개의 상품을 구매하려는데 어떻게 해야 할까요?</dd>
                                                </dl>
                                                <dl class="adv">
                                                    <dt><img alt="답변" src="/resources/img/Q&A1.png"></dt>
                                                    <dd><font color="red">장바구니를 이용해서 구매</font>해주시면 됩니다.<br><br>

동일상품의 색상은 각각 선택 주문이 불가하니<br>
각각 색상 선택 후 장바구니 담기로 이용해서 주문해주셔야 합니다.<br>
ex) 블랙색상 주문 후 장바구니 담기 -> 계속쇼핑하기 -> 화이트색상 주문 후 장바구니 담기 -> 결제하기<br><br>

<font color="red">고객님 임의로 주문메세지에 남겨주실경우<br>
주문메세지는 택배기사분이 보시는 내용이기때문에 배송시 확인이 불가능</font>합니다.<br>
이로인한 교환시 배송비는 고객님께서 지불하셔야 합니다.</dd>
                                                </dl>
                                            </div>
                                        </td>
                                    </tr>
                                                                        <tr uid="4">
                                        <td>
                                            <div class="tb-center">14</div>
                                        </td>
                                        <td>
                                            <div class="tb-center">주문관련</div>
                                        </td>
                                        <td>
                                            <div class="tb-left">색상/사이즈/배송지 변경은 어떻게 해야하나요?</div>
                                        </td>
                                    </tr>
                                    <tr class="slide-hide">
                                        <td colspan="3">
                                            <div class="tb-slide">
                                                <dl class="qst">
                                                    <dt><img alt="질문" src="/resources/img/Q&A1.png"></dt>
                                                    <dd>색상/사이즈/배송지 변경은 어떻게 해야하나요?</dd>
                                                </dl>
                                                <dl class="adv">
                                                    <dt><img alt="답변" src="/resources/img/Q&A1.png"></dt>
                                                    <dd>이미 결제가 완료된 주문서 상에서는 변경처리가 불가합니다.<br><br>

상품준비중 / 배송준비중 상태에서만 게시판문의 및 고객센터로<br>
발송전 변경/취소 를 통하여 접수하신 후 답변을 받으셔야 정상적으로 변경/취소가 가능하세요.<br>
(오후 4시 전까지 게시판문의 답변이달리지 않을경우 꼭 고객센터로 연락주세요)<br><br>

단, 배송준비중 상태의 경우 출고 과정에 있을수있습니다.<br>
출고과정에서 <font color="red">이미 출고가 된 이후에 요청해주실 경우 처리가 어려울 수 있으니</font> 최초 주문 당시에 신중히 주문 부탁드립니다.<br><br>

이미 배송이 이루어졌을 경우 제품의 회수가 불가능하므로 교환절차를 해주셔야 합니다.<br>
이때 발생되는 배송료는 고객님께서 부담하셔야 합니다.<br><br>

주문 후 상품을 변경할 경우 다시 상품을 준비하는 기간이 있기때문에<br>
배송이 1~2일정도 늦어질수 있습니다. </dd>
                                                </dl>
                                            </div>
                                        </td>
                                    </tr>
                                                                        <tr uid="38">
                                        <td>
                                            <div class="tb-center">13</div>
                                        </td>
                                        <td>
                                            <div class="tb-center">취소/환불</div>
                                        </td>
                                        <td>
                                            <div class="tb-left">카드결제를 했는데 현금으로 환불하고 싶은데 가능한가요?</div>
                                        </td>
                                    </tr>
                                    <tr class="slide-hide">
                                        <td colspan="3">
                                            <div class="tb-slide">
                                                <dl class="qst">
                                                    <dt><img alt="질문" src="/resources/img/Q&A1.png"></dt>
                                                    <dd>카드결제를 했는데 현금으로 환불하고 싶은데 가능한가요?</dd>
                                                </dl>
                                                <dl class="adv">
                                                    <dt><img alt="답변" src="/resources/img/Q&A1.png"></dt>
                                                    <dd>카드결제를 한 경우 반품이나 취소시 <font color="red">현금환불은 불가능</font> 하며,<br>
카드결제 취소해드립니다.</dd>
                                                </dl>
                                            </div>
                                        </td>
                                    </tr>
                                                                        <tr uid="36">
                                        <td>
                                            <div class="tb-center">12</div>
                                        </td>
                                        <td>
                                            <div class="tb-center">취소/환불</div>
                                        </td>
                                        <td>
                                            <div class="tb-left">주문한 상품을 취소하고 싶습니다. 어떻게 해야 하나요?</div>
                                        </td>
                                    </tr>
                                    <tr class="slide-hide">
                                        <td colspan="3">
                                            <div class="tb-slide">
                                                <dl class="qst">
                                                    <dt><img alt="질문" src="/resources/img/Q&A1.png"></dt>
                                                    <dd>주문한 상품을 취소하고 싶습니다. 어떻게 해야 하나요?</dd>
                                                </dl>
                                                <dl class="adv">
                                                    <dt><img alt="답변" src="/resources/img/Q&A1.png"></dt>
                                                    <dd>상품준비중/배송준비중 상태에서만 <font color="red">게시판문의글로
발송전 변경/취소 문의를 주신 후 답변을 받으셔야 정상적으로 변경/취소가 가능</font>합니다.<br>
* 오후 4시 전까지 문의게시판 답변이달리지 않을경우 꼭 고객센터로 연락주세요.<br><br>

단, 배송준비중 상태의 경우 출고 과정에 있을수있습니다.<br>
출고과정에서 이미 출고가 된 이후에 요청해주실 경우 처리가 어려울 수 있으니<br>
최초 주문 당시에 신중히 주문 부탁드립니다.<br>
<font color="red">이미 배송이 이루어졌을 경우 상품의 회수가 불가능</font>하므로 반품처리를 해주셔야합니다.<br>
이때 발생되는 배송료는 고객님께서 부담하셔야 합니다.</dd>
                                                </dl>
                                            </div>
                                        </td>
                                    </tr>
                                                                        <tr uid="34">
                                        <td>
                                            <div class="tb-center">11</div>
                                        </td>
                                        <td>
                                            <div class="tb-center">취소/환불</div>
                                        </td>
                                        <td>
                                            <div class="tb-left">무통장결제 후 주문취소 했는데, 환불처리는 언제 입금되나요?</div>
                                        </td>
                                    </tr>
                                    <tr class="slide-hide">
                                        <td colspan="3">
                                            <div class="tb-slide">
                                                <dl class="qst">
                                                    <dt><img alt="질문" src="/resources/img/Q&A1.png"></dt>
                                                    <dd>무통장결제 후 주문취소 했는데, 환불처리는 언제 입금되나요?</dd>
                                                </dl>
                                                <dl class="adv">
                                                    <dt><img alt="답변" src="/resources/img/Q&A1.png"></dt>
                                                    <dd>환불처리는 접수 후 일괄적으로 환불 처리해드리고 있기때문에<br>
환불 처리는 접수된 날짜로부터 <font color="red">1~3일</font>의 처리기간을 거쳐 환불처리 되십니다.</dd>
                                                </dl>
                                            </div>
                                        </td>
                                    </tr>
                                                                        <tr uid="35">
                                        <td>
                                            <div class="tb-center">10</div>
                                        </td>
                                        <td>
                                            <div class="tb-center">취소/환불</div>
                                        </td>
                                        <td>
                                            <div class="tb-left">카드취소 요청했는데, 취소처리가 잘 됐나요?</div>
                                        </td>
                                    </tr>
                                    <tr class="slide-hide">
                                        <td colspan="3">
                                            <div class="tb-slide">
                                                <dl class="qst">
                                                    <dt><img alt="질문" src="/resources/img/Q&A1.png"></dt>
                                                    <dd>카드취소 요청했는데, 취소처리가 잘 됐나요?</dd>
                                                </dl>
                                                <dl class="adv">
                                                    <dt><img alt="답변" src="/resources/img/Q&A1.png"></dt>
                                                    <dd>카드취소처리는 접수 후 <font color="red">주말 제외 후 약 2~4일 후에 카드사에서 취소확인이 가능</font>하십니다.<br><br>

고객님의 소중한 개인정보 유출 피해를 방지하기 위하여<br>
최종 승인취소를 확인할 수 없습니다.<br>
번거로우시겠더라도 카드사로 문의주셔서 확인 부탁드립니다.</dd>
                                                </dl>
                                            </div>
                                        </td>
                                    </tr>
                                                                        <tr uid="46">
                                        <td>
                                            <div class="tb-center">9</div>
                                        </td>
                                        <td>
                                            <div class="tb-center">취소/환불</div>
                                        </td>
                                        <td>
                                            <div class="tb-left">신용카드 부분취소가 가능한가요?</div>
                                        </td>
                                    </tr>
                                    <tr class="slide-hide">
                                        <td colspan="3">
                                            <div class="tb-slide">
                                                <dl class="qst">
                                                    <dt><img alt="질문" src="/resources/img/Q&A1.png"></dt>
                                                    <dd>신용카드 부분취소가 가능한가요?</dd>
                                                </dl>
                                                <dl class="adv">
                                                    <dt><img alt="답변" src="/resources/img/Q&A1.png"></dt>
                                                    <dd>슈퍼스타아이는 <font color="red">고객님의 편의를 위하여 부분취소를 도입</font>하였습니다.<br><br>

결제하신 제품중 부분으로 취소가 가능하여 다시 재결제해야하는 번거로움이 없습니다.<br>
간혹 포인트 결제 및 카드사의 방침에따라 부분결제가 불가능한 경우에는<br>
따로 개인결제창을 열어드리고 있습니다.<br></dd>
                                                </dl>
                                            </div>
                                        </td>
                                    </tr>
                                                                        <tr uid="24">
                                        <td>
                                            <div class="tb-center">8</div>
                                        </td>
                                        <td>
                                            <div class="tb-center">교환/반품</div>
                                        </td>
                                        <td>
                                            <div class="tb-left">불량/오배송 상품을 받았습니다. 어떻게 해야하나요?</div>
                                        </td>
                                    </tr>
                                    <tr class="slide-hide">
                                        <td colspan="3">
                                            <div class="tb-slide">
                                                <dl class="qst">
                                                    <dt><img alt="질문" src="/resources/img/Q&A1.png"></dt>
                                                    <dd>불량/오배송 상품을 받았습니다. 어떻게 해야하나요?</dd>
                                                </dl>
                                                <dl class="adv">
                                                    <dt><img alt="답변" src="/resources/img/Q&A1.png"></dt>
                                                    <dd>번거롭게 해드려서 정말 죄송합니다.<br><br>

상품 수령 후 불량이 발견되실경우 바로 저희쪽으로 게시판문의나 고객센터로 <br>
불량부분 접수해주시면 불량 상품 도착 후 원하시는처리 해드리고있습니다.<br><br>

(상품 착용으로 인한 불량은 고객님의 책임 있는 사유로 재화 및 멸실 또는 훼손된 경우로 간주하여 처리가 불가능합니다.)<br><br>

한진택배(1588-0011/1544-0011) 이용하셔서 "착불"로 보내주시면 되며,<br>
<font color="red">배송비는 고객님께서 따로 부담없이 처리 가능</font>하십니다.<br>
★ 단, 한진택배(1588-0011/1544-0011)로 보내주셔야만 무상처리 가능합니다.<br>
보내주실때에 고객님께서 상품과 함께 받아보신 양식서에<br>
원하시는처리 상세하게 작성하여 보내주시면 신속한 처리 도와드리겠습니다.<br><br>

★<font color="red">맞교환처리는 불가능</font>합니다.★<br><br>

아무리 불량 및 오배송상품이라도 맞교환은 불가능한 부분 양해부탁드립니다.<br>
시스템 전산상 보내주신 상품이 입고가 되어야 상품확인 후<br>
교환상품을 출고해드릴수 있습니다.<br><br>
상품을 보내주시면 최대한 신속한 처리를 해드리겠습니다.</dd>
                                                </dl>
                                            </div>
                                        </td>
                                    </tr>
                                                                        <tr uid="28">
                                        <td>
                                            <div class="tb-center">7</div>
                                        </td>
                                        <td>
                                            <div class="tb-center">교환/반품</div>
                                        </td>
                                        <td>
                                            <div class="tb-left">교환 상품을 빨리 받고 싶습니다. 얼마나 걸리나요?</div>
                                        </td>
                                    </tr>
                                    <tr class="slide-hide">
                                        <td colspan="3">
                                            <div class="tb-slide">
                                                <dl class="qst">
                                                    <dt><img alt="질문" src="/resources/img/Q&A1.png"></dt>
                                                    <dd>교환 상품을 빨리 받고 싶습니다. 얼마나 걸리나요?</dd>
                                                </dl>
                                                <dl class="adv">
                                                    <dt><img alt="답변" src="/resources/img/Q&A1.png"></dt>
                                                    <dd>상품 보내주신 날짜로부터 1~2일 후에 회수되어 교환접수 되며,<br>
교환상품의 입고 및 준비기간 또한 일반 배송일과 동일하게 약 2~3일정도 소요되어,<br>
총 <font color="red">4~7일 후에 수령</font>이 가능하십니다.<br><br>
최대한 빠른 교환 처리해드리겠습니다.<br></dd>
                                                </dl>
                                            </div>
                                        </td>
                                    </tr>
                                                                        <tr uid="12">
                                        <td>
                                            <div class="tb-center">6</div>
                                        </td>
                                        <td>
                                            <div class="tb-center">결제/입금확인</div>
                                        </td>
                                        <td>
                                            <div class="tb-left">입금 했는데 입금확인이 안되고 있습니다</div>
                                        </td>
                                    </tr>
                                    <tr class="slide-hide">
                                        <td colspan="3">
                                            <div class="tb-slide">
                                                <dl class="qst">
                                                    <dt><img alt="질문" src="/resources/img/Q&A1.png"></dt>
                                                    <dd>입금 했는데 입금확인이 안되고 있습니다</dd>
                                                </dl>
                                                <dl class="adv">
                                                    <dt><img alt="답변" src="/resources/img/Q&A1.png"></dt>
                                                    <dd>입금확인이 안 되는 경우는 크게 두가지로 나뉘어집니다.<br><br>

1. 입금금액과 주문금액이 일치하지 않는 경우 (예:주문금액 35500원, 입금금액 36000원)<br>
2. 입금자명과 주문자명이 일치하지 않는 경우 (예:주문자 홍길동, 입금자 홍길수)<br><br>

이는, 자동입금확인 시스템에서 자동확인을 할 수가 없다보니 실시간 입금확인이 되지 않습니다.<br>
이와같은 사유로 인해 입금자명, 주문금액이 변경되는 경우 꼭 게시판문의글이나<br>
고객센터로 문의 남겨주셔야 담당자가 확인하여 처리 도와드리고있습니다.</dd>
                                                </dl>
                                            </div>
                                        </td>
                                    </tr>                      
 <tr uid="11">
                                        <td>
                                            <div class="tb-center">5</div>
                                        </td>
                                        <td>
                                            <div class="tb-center">결제/입금확인</div>
                                        </td>
                                        <td>
                                            <div class="tb-left">입금을 더 많이 했거나 적게 했는데 어떻게 해야하나요?</div>
                                        </td>
                                    </tr>
                                    <tr class="slide-hide">
                                        <td colspan="3">
                                            <div class="tb-slide">
                                                <dl class="qst">
                                                    <dt><img alt="질문" src="/resources/img/Q&A1.png"></dt>
                                                    <dd>입금을 더 많이 했거나 적게 했는데 어떻게 해야하나요?</dd>
                                                </dl>
                                                <dl class="adv">
                                                    <dt><img alt="답변" src="/resources/img/Q&A1.png"></dt>
                                                    <dd>간혹 <font color="red">주문금액 보다 입금을 더 하거나 적게하는 경우</font>가 있습니다.<br>
이런경우에는 <font color="red">자동으로 입금확인이 안되기때문에 고객님께서 배송을 늦게</font> 받으실수도 있습니다.<br><br>
입금을 적게하신 경우에는 저희 고객센터에서 따로 연락을 드리고 있으며,<br>
입금을 많이 하신 경우에는 적립금으로 일단 예치를 해드리고 있으며 출금을 원할시에는<br>
게시판 또는 고객센터로 연락을 주시면 고객님 계좌로 환불처리를 해드리고 있습니다.


</dd>
                                                </dl>
                                            </div>
                                        </td>
                                    </tr>
                                                                        <tr uid="15">
                                        <td>
                                            <div class="tb-center">4</div>
                                        </td>
                                        <td>
                                            <div class="tb-center">결제/입금확인</div>
                                        </td>
                                        <td>
                                            <div class="tb-left">결제를 하였는데 잘되었는지 궁금합니다</div>
                                        </td>
                                    </tr>
                                    <tr class="slide-hide">
                                        <td colspan="3">
                                            <div class="tb-slide">
                                                <dl class="qst">
                                                    <dt><img alt="질문" src="/resources/img/Q&A1.png"></dt>
                                                    <dd>결제를 하였는데 잘되었는지 궁금합니다</dd>
                                                </dl>
                                                <dl class="adv">
                                                    <dt><img alt="답변" src="/resources/img/Q&A1.png"></dt>
                                                    <dd>마이페이지에서 주문내역으로 확인이 가능합니다.<br><br>

1. 카드결제 : 카드결제는 결제함과 동시에 승인이 되므로 바로 확인이 가능합니다.<br>
단, 한도초과로 인하여 승인취소가 될수도 있습니다.<br><br>

2. 실시간계좌이체 : 실시간계좌이체는 결제함과 동시에 승인이 되므로 바로 확인이 가능합니다.<br><br>

3. 무통장입금 : 입금 후 약 30분~1시간 단위로 자동 입금확인 시스템을 이용하여 입금확인처리가 되며,<br>
주문금액과 입금금액 / 주문자와 입금자가 일치하지 않는 경우 입금확인이 누락될 수 있습니다.<br>
이 경우 게시판문의나 고객센터로 문의주시기 바랍니다.<br><br>

4. 핸드폰결제 : 핸드폰결제는 결제와 동시에 바로 승인 처리가 됩니다.</dd>
                                                </dl>
                                            </div>
                                        </td>
                                    </tr>
                                                                        <tr uid="3">
                                        <td>
                                            <div class="tb-center">3</div>
                                        </td>
                                        <td>
                                            <div class="tb-center">주문관련</div>
                                        </td>
                                        <td>
                                            <div class="tb-left">주문내역 확인은 어디서 하나요?</div>
                                        </td>
                                    </tr>
                                    <tr class="slide-hide">
                                        <td colspan="3">
                                            <div class="tb-slide">
                                                <dl class="qst">
                                                    <dt><img alt="질문" src="/resources/img/Q&A1.png"></dt>
                                                    <dd>주문내역 확인은 어디서 하나요?</dd>
                                                </dl>
                                                <dl class="adv">
                                                    <dt><img alt="답변" src="/resources/img/Q&A1.png"></dt>
                                                    <dd>회원 -> 로그인 후 마이페이지 -> 주문내역에서 확인
비회원 -> 사이트상단 배송조회 -> 비회원 조회 주문자,주문번호 -> 조회하기</dd>
                                                </dl>
                                            </div>
                                        </td>
                                    </tr>
                                                                        <tr uid="2">
                                        <td>
                                            <div class="tb-center">2</div>
                                        </td>
                                        <td>
                                            <div class="tb-center">주문관련</div>
                                        </td>
                                        <td>
                                            <div class="tb-left">전화로 주문할수 있나요?</div>
                                        </td>
                                    </tr>
                                    <tr class="slide-hide">
                                        <td colspan="3">
                                            <div class="tb-slide">
                                                <dl class="qst">
                                                    <dt><img alt="질문" src="/resources/img/Q&A1.png"></dt>
                                                    <dd>전화로 주문할수 있나요?</dd>
                                                </dl>
                                                <dl class="adv">
                                                    <dt><img alt="답변" src="/resources/img/Q&A1.png"></dt>
                                                    <dd><font color="red">전화주문은 불가</font>합니다.<br>
인터넷쇼핑으로 고객님께서 직접 작성해주신 주문서를 기준으로<br>
상품준비를 하고 있음으로 인터넷으로 사이트 접속 후 주문 부탁드립니다.</dd>
                                                </dl>
                                            </div>
                                        </td>
                                    </tr>
                                                                        <tr uid="39">
                                        <td>
                                            <div class="tb-center">1</div>
                                        </td>
                                        <td>
                                            <div class="tb-center">기타문의</div>
                                        </td>
                                        <td>
                                            <div class="tb-left">현금 영수증은 어떻게 발급하나요?</div>
                                        </td>
                                    </tr>
                                    <tr class="slide-hide">
                                        <td colspan="3">
                                            <div class="tb-slide">
                                                <dl class="qst">
                                                    <dt><img alt="질문" src="/resources/img/Q&A1.png"></dt>
                                                    <dd>현금 영수증은 어떻게 발급하나요?</dd>
                                                </dl>
                                                <dl class="adv">
                                                    <dt><img alt="답변" src="/resources/img/Q&A1.png"></dt>
                                                    <dd>현금영수증을 원하시는 고객님께서는<br>
<font color="red">구매하신 상품 수령 후 고객센터 또는 게시판</font>에<br>
요청해주시면 발급처리 해드리고 있습니다.<br>
발급 된 영수증은 국세청 홈페이지를 통해 확인 하실 수 있습니다.</dd>
                                                </dl>
                                            </div>
                                        </td>
                                    </tr>                                                                  
                                                                   
                                                                   
                                                                   
                                                                   
                                                                    </tbody>
                            </table>
                        </div>
                    </div><!-- .page-body -->
                    
                </div><!-- #faqWrap -->
            </div>
        </div>
    </div>
  <hr/>
    
                   


<!-- 갈무리 -->





<jsp:include page="../footer.jsp" />









<!-- 갈무리 -->


<script type="text/javascript">




jQuery('#faqTable tr').click(function() {
    if (jQuery(this).next(':first').hasClass('slide-hide')) {
        jQuery('.slide-show').removeClass('slide-show').addClass('slide-hide');
        jQuery(this).next('.slide-hide:first').removeClass('slide-hide').addClass('slide-show');
        faqUpdateHits(jQuery(this).attr('uid'));
    } else if (jQuery(this).next(':first').hasClass('slide-show')) {
        jQuery(this).next('.slide-show:first').removeClass('slide-show').addClass('slide-hide');
    }
});


</script>








<!-- 갈무리 -->

</body>
</html>