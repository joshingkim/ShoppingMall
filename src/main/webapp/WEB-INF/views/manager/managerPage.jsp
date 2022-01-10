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
  <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
 <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<!-- fullcalendar CDN -->
<link href='https://cdn.jsdelivr.net/npm/fullcalendar@5.8.0/main.min.css' rel='stylesheet' />
<script src='https://cdn.jsdelivr.net/npm/fullcalendar@5.8.0/main.min.js'></script>
<!-- fullcalendar 언어 CDN -->
<script src='https://cdn.jsdelivr.net/npm/fullcalendar@5.8.0/locales-all.min.js'></script>
<script src='https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.29.1/moment.min.js'></script>
<script src='https://cdnjs.cloudflare.com/ajax/libs/sql.js/1.6.1/sql-wasm.js'></script>
    
    
    
<script>
var date = new Date();
    
 var list1 = ${list1};
 var saleRank1 = ${saleRank1};
 var daySale1 = ${daySale1};
 var likeRank1 = ${likeRank1};
console.log(list1);
console.log(saleRank1);
console.log(daySale1);
console.log(likeRank1);

for(var i = 0, result = [] ; i < 50 ; i++){
 result.push({ "title" : daySale1[i].ORDERPRICE + "원", "start" : daySale1[i].ORDERDATE});
};                      



</script>


    	<script>
(function(){
$(function(){
// calendar element 취득
var calendarEl = $('#calendar')[0];
// full-calendar 생성하기
var calendar = new FullCalendar.Calendar(calendarEl, {

// 해더에 표시할 툴바
headerToolbar: {
left: 'prev,next today',
center: 'title',
right: 'dayGridMonth,timeGridWeek,timeGridDay,listWeek'
},
initialView: 'dayGridMonth', // 초기 로드 될때 보이는 캘린더 화면(기본 설정: 달)
navLinks: true, // 날짜를 선택하면 Day 캘린더나 Week 캘린더로 링크
editable: true, // 수정 가능?
nowIndicator: true, // 현재 시간 마크
dayMaxEvents: true, // 이벤트가 오버되면 높이 제한 (+ 몇 개식으로 표현)
locale: 'ko', // 한국어 설정
eventAdd: function(obj) { // 이벤트가 추가되면 발생하는 이벤트
console.log(obj);
},
eventChange: function(obj) { // 이벤트가 수정되면 발생하는 이벤트
console.log(obj);
},
eventRemove: function(obj){ // 이벤트가 삭제되면 발생하는 이벤트
console.log(obj);
},
select: function(arg) { // 캘린더에서 드래그로 이벤트를 생성할 수 있다.
var title = prompt('Event Title:');
if (title) {
calendar.addEvent({
title: title,
start: arg.start,
end: arg.end,
allDay: arg.allDay
})
}
calendar.unselect()
},
// 이벤트

	

	
events: result

 
 
});
// 캘린더 랜더링
calendar.render();
});
})();
</script>




   





    



<title>경영자용 페이지</title>
</head>
<body>


 <h3>경영자용페이지</h3>
<div class="container">
  
   
   
   <br><div id="calendar-container">
<div id='calendar'></div> 
</div>	
 



   	<br><div class="accordion" id="accordionExample">
  <div class="card">
    <div class="card-header" id="headingOne">
      <h2 class="mb-0">
        <button class="btn btn-link btn-block text-left" type="button" data-toggle="collapse" data-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
          이번달 판매량 순위
        </button>
      </h2>
    </div>

    <div id="collapseOne" class="collapse show" aria-labelledby="headingOne" data-parent="#accordionExample">
      <div class="card-body">
      <canvas id="myChart4"></canvas>
      </div>
    </div>
  </div>
  <div class="card">
    <div class="card-header" id="headingTwo">
      <h2 class="mb-0">
        <button class="btn btn-link btn-block text-left collapsed" type="button" data-toggle="collapse" data-target="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
          인기(찜) 순위
        </button>
      </h2>
    </div>
    <div id="collapseTwo" class="collapse" aria-labelledby="headingTwo" data-parent="#accordionExample">
      <div class="card-body">
        <canvas id="myChart5"></canvas>
      </div>
    </div>
  </div>
  <div class="card">
    <div class="card-header" id="headingThree">
      <h2 class="mb-0">
        <button class="btn btn-link btn-block text-left collapsed" type="button" data-toggle="collapse" data-target="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
          연령대별 구매1위 품목
        </button>
      </h2>
    </div>
    <div id="collapseThree" class="collapse" aria-labelledby="headingThree" data-parent="#accordionExample">
      <div class="card-body">
        <table class="table">
  <thead>
    <tr>
      <th scope="col">연령대</th>
      <th scope="col">품목</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th scope="row">10~20대</th>
      <td>제품1</td>

    </tr>
    <tr>
      <th scope="row">20~30대</th>
      <td>제품2</td>
    </tr>
    <tr>
      <th scope="row">30~40대</th>
      <td>제품3</td>
    </tr>
     <tr>
      <th scope="row">40~50대</th>
      <td>제품4</td>
    </tr>
     <tr>
      <th scope="row">50~60대</th>
      <td>제품5</td>
    </tr>
    
    
  </tbody>
</table>
      </div>
    </div>
  </div>
</div>
</div>  	
   	<br><br><br>









<script>
const ctx4 = document.getElementById('myChart4').getContext('2d');
const myChart4 = new Chart(ctx4, {
    type: 'bar',
    data: {
        labels: [
        	(saleRank1[0].ITEM_NO + '번 제품'), 
        		(saleRank1[1].ITEM_NO + '번 제품'),
        		(saleRank1[2].ITEM_NO + '번 제품'),
        		(saleRank1[3].ITEM_NO + '번 제품'),
        		(saleRank1[4].ITEM_NO + '번 제품'),
        		(saleRank1[5].ITEM_NO + '번 제품')
        		],
        datasets: [{
            label: (date.getMonth()+1 + '월 판매량 순위'),
            data: [
            	(saleRank1[0].ORDERQUNTITY), 
        		(saleRank1[1].ORDERQUNTITY),
        		(saleRank1[2].ORDERQUNTITY),
        		(saleRank1[3].ORDERQUNTITY),
        		(saleRank1[4].ORDERQUNTITY),
        		(saleRank1[5].ORDERQUNTITY)
        		],
            backgroundColor: [
                'rgba(255, 99, 132, 0.2)'
               
            ],
            borderColor: [
                'rgba(255, 99, 132, 1)'
               
            ],
            borderWidth: 1
        }]
    },
    options: {
        scales: {
            y: {
                beginAtZero: true
            }
        }
    }
});
</script>

<script>
const ctx5 = document.getElementById('myChart5').getContext('2d');
const myChart5 = new Chart(ctx5, {
    type: 'doughnut',
    data: {
        labels: [ 
        	(likeRank1[0].ITEM_NO + '번 제품'), 
        	(likeRank1[1].ITEM_NO + '번 제품'), 
        	(likeRank1[2].ITEM_NO + '번 제품'), 
        	(likeRank1[3].ITEM_NO + '번 제품'), 
        	(likeRank1[4].ITEM_NO + '번 제품'), 
        	(likeRank1[5].ITEM_NO + '번 제품')
        	],
        datasets: [{
            label: '총 찜 횟수',
            data: [
            	(likeRank1[0].SUMITEMNO ), 
            	(likeRank1[1].SUMITEMNO ), 
            	(likeRank1[2].SUMITEMNO ), 
            	(likeRank1[3].SUMITEMNO ), 
            	(likeRank1[4].SUMITEMNO ), 
            	(likeRank1[5].SUMITEMNO )
            	],
            backgroundColor: [
                'rgba(255, 99, 132, 0.2)',
                'rgba(54, 162, 235, 0.2)',
                'rgba(255, 206, 86, 0.2)',
                'rgba(75, 192, 192, 0.2)',
                'rgba(153, 102, 255, 0.2)',
                'rgba(255, 159, 64, 0.2)'
            ],
            borderColor: [
                'rgba(255, 99, 132, 1)',
                'rgba(54, 162, 235, 1)',
                'rgba(255, 206, 86, 1)',
                'rgba(75, 192, 192, 1)',
                'rgba(153, 102, 255, 1)',
                'rgba(255, 159, 64, 1)'
            ],
            borderWidth: 1
        }]
    },
    options: {
        scales: {
            y: {
                beginAtZero: true
            }
        }
    }
});
</script>







</body>
</html>