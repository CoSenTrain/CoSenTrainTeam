/**
 * 
 */


//예약된 좌석들
var bookedSeats = [3, 10, 25];
//스케줄 번호 조회
var runningNo = -1;
//칸 번호
var carNo = -1;

//Seat Booking
var settings = {
             rows: 3,
             cols: 11,
             rowCssPrefix: 'row-',
             colCssPrefix: 'col-',
             seatWidth: 50,
             seatHeight: 60,
             seatCss: 'seat',
             selectedSeatCss: 'selectedSeat',
             selectingSeatCss: 'selectingSeat'
         };
var init = function(reservedSeat) {
	var str = [],
		seatNo, className;
	for (i = 0; i < settings.rows; i++) {
		for (j = 0; j < settings.cols; j++) {
			seatNo = (i + j * settings.rows + 1);
			className = settings.seatCss + ' ' + settings.rowCssPrefix + i.toString() + ' ' + settings.colCssPrefix + j.toString();
			if ($.isArray(reservedSeat) && $.inArray(seatNo, reservedSeat) != -1) {
				className += ' ' + settings.selectedSeatCss;
			}
			str.push('<li class="' + className + '"' + 'style="top:' + (i * settings.seatHeight).toString() + 'px;left:' + (j * settings.seatWidth).toString() + 'px">' + '<a title="' + seatNo + '">' + seatNo + '</a>' + '</li>');
		}
	}
	$('#place').html(str.join(''));
};
var initForAjax = function(reservedSeat, seatList) {
	var str = [],
		seatNo, className;
	var listCnt = 0;
	for (i = 0; i < settings.rows; i++) {
		for (j = 0; j < settings.cols; j++) {	//좌석은 모두 33 개
			seatNo = seatList[listCnt].seatNo;
			className = settings.seatCss + ' ' + settings.rowCssPrefix + i.toString() + ' ' + settings.colCssPrefix + j.toString();
			if ($.isArray(reservedSeat) && $.inArray(seatNo, reservedSeat) != -1) {
				className += ' ' + settings.selectedSeatCss;
			}
			str.push('<li class="' + className + '"' + 'style="top:' + (i * settings.seatHeight).toString() + 'px;left:' + (j * settings.seatWidth).toString() + 'px">' + '<a title="' + seatNo + '">' + seatList[listCnt].seatName + '</a>' + '</li>');
			listCnt++;
		}
	}
	$('#place').html(str.join(''));

	toggleEventSetting();
};

//case I: Show from starting
//init();
//Case II: If already booked
init(bookedSeats);
function toggleEventSetting() {
	$('.' + settings.seatCss).click(function() {
		if ($(this).hasClass(settings.selectedSeatCss)) {
			alert('This seat is already reserved');
		} else {
			$(this).toggleClass(settings.selectingSeatCss);
		}
	});
}
toggleEventSetting();

//비동기 조회 함수
function ajaxProcess(url, method, dataType, data, job) {
	$.ajax({
		url:url,
		type:method,
		dataType:dataType,
		data:data,
		cache:false,
		success:function(rs) {
			
			//do JOB
			switch(job){
			case 'getRunningNo':
				runningNo = rs.runningNo;
				break;
			case 'seatList':
				bookedSeats = rs.bookedSeats;
				initForAjax(bookedSeats, rs.seatList);
				break;
			}
		},
		eror:function(msg) {
			alert("ERROR : " + msg);
		}
	});
}
//car-select Click
$(function() {
	//칸 번호 탭
	$('.car-select').click(function() {
		//Class Setting
		$('.car-select').removeClass(' active');
		$(this).addClass(' active');
		
		//Logic
		//스케줄 번호 조회
		ajaxProcess('/web/view/kwon/tkting/runningNoProcess.jsp', 'GET', 'JSON', data, 'getRunningNo');
		//해당 칸의 좌석 목록 조회
	    data['carNo'] = carNo = $(this).val();
		ajaxProcess('/web/view/kwon/tkting/seatListProcess.jsp', 'GET', 'JSON', data, 'seatList');
	});
	$('.car-select:eq(0)').click();
});
/* 
$('#btnShow').click(function() {
	var str = [];
	$.each($('#place li.' + settings.selectedSeatCss + ' a, #place li.' + settings.selectingSeatCss + ' a'), function(index, value) {
		str.push($(this).attr('title'));
	});
	alert(str.join(','));
});
 */
$('#btnShowNew').click(function() {
	var str = [],
		item;
	$.each($('#place li.' + settings.selectingSeatCss + ' a'), function(index, value) {
		item = $(this).attr('title');
		str.push(item);
	});

	//결제화면 가기
	$('input#selectingSeats').val((str.join(',')));	//선택 좌석
	if((parseInt($('input#selectingSeats').val().split(',').length) == parseInt($('input#personCnt').val())) && $('input#selectingSeats').val() != '') {
		$('input#carNo').val(carNo);	//선택 좌석
		paramChainFrm.submit();
	} else {
		alert($('input#personCnt').val() + "좌석 선택하십시오.");
	}
});
