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
    
 var list1 = ${list1};
 var saleRank1 = ${saleRank1};
 var daySale1 = ${daySale1};
console.log(list1);
console.log(saleRank1);
console.log(daySale1);

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



<div class="container">
   <h3>경영자용페이지</h3><br><br>
   
   
   


<p>
  <a class="btn btn-primary" data-toggle="collapse" href="#multiCollapseExample4" role="button" aria-expanded="false" aria-controls="multiCollapseExample4">이번달 판매량 순위</a>
  <button class="btn btn-primary" type="button" data-toggle="collapse" data-target="#multiCollapseExample5" aria-expanded="false" aria-controls="multiCollapseExample5">인기(찜) 순위</button>
 <button class="btn btn-primary" type="button" data-toggle="collapse" data-target="#multiCollapseExample6" aria-expanded="false" aria-controls="multiCollapseExample6">연령대별 판매량1위 품목</button>
</p>
<div class="row">
  <div class="col">
    <div class="collapse multi-collapse" id="multiCollapseExample4">
      <div class="card card-body">
       <canvas height="300" id="myChart4"></canvas>
      </div>
    </div>
  </div>
  <div class="col">
    <div class="collapse multi-collapse" id="multiCollapseExample5">
      <div class="card card-body">
      <canvas id="myChart5"></canvas>
      </div>
    </div>
  </div>
  <div class="col">
    <div class="collapse multi-collapse" id="multiCollapseExample6">
      <div class="card card-body">
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
   	
   	<br><div id="calendar-container">
<div id='calendar'></div> 
</div>	<br><br>
 </div>









<script>
const ctx4 = document.getElementById('myChart4').getContext('2d');
const myChart4 = new Chart(ctx4, {
    type: 'bar',
    data: {
        labels: [(saleRank1[0].ITEM_NO + '번 제품'), 
        		(saleRank1[1].ITEM_NO + '번 제품'),
        		(saleRank1[2].ITEM_NO + '번 제품'),
        		(saleRank1[3].ITEM_NO + '번 제품'),
        		(saleRank1[4].ITEM_NO + '번 제품'),
        		(saleRank1[5].ITEM_NO + '번 제품')],
        datasets: [{
            label: (saleRank1[0].ORDERDATE + '월 판매량 순위'),
            data: [(saleRank1[0].ORDERQUNTITY), 
        		(saleRank1[1].ORDERQUNTITY),
        		(saleRank1[2].ORDERQUNTITY),
        		(saleRank1[3].ORDERQUNTITY),
        		(saleRank1[4].ORDERQUNTITY),
        		(saleRank1[5].ORDERQUNTITY)],
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
        labels: ['제품1', '제품2', '제품3', '제품4', '제품5', '제품6'],
        datasets: [{
            label: '# of Votes',
            data: [12, 19, 3, 5, 2, 3],
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