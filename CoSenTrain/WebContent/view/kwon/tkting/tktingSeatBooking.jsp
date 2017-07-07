<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@page import="java.util.List"%>
<%

request.setCharacterEncoding("EUC-KR");

String job = request.getParameter("job");

String tType = request.getParameter("tType");
String srcName = request.getParameter("srcName");
String destName = request.getParameter("destName");
String dT = request.getParameter("dT");
String aT = request.getParameter("aT");
String personCnt = request.getParameter("personCnt");
String trainNo = request.getParameter("trainNo");

%>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR" />
	<title>Hello</title>
	<link rel="shortcut icon" href="">
	<link href="/web/css/container/container.css" rel="stylesheet" type="text/css">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	<link href="/web/css/container/fa.css" rel="stylesheet" type="text/css">
	<link href="/web/css/container/dropdown.css" rel="stylesheet" type="text/css">
	<link href="/web/css/container/standardColors.css" rel="stylesheet" type="text/css">
	<link href="/web/css/kwon/tkting/tktingSeatBooking.css" rel="stylesheet" type="text/css">
<!-- 	
	<link href="/web/css/kwon/tktingSchedule.css" rel="stylesheet" type="text/css">
	<link href="/web/css/kwon/login/login.css" rel="stylesheet" type="text/css">
	<link href="/web/css/modal/modalSelectStation.css" rel="stylesheet" type="text/css">
	<link href="/web/css/modal/modalSelectCalendar.css" rel="stylesheet" type="text/css">
-->


</head>
<body>
	<div class="container">
		
		<jsp:include page="/view/container/containerTop.jsp" flush="false" />
<!-- LOGIN  Start -->

<div class="seat-booking-wrapper">
	<div class="seat-booking-wrapper-center">
		<br />
		<h1 style="padding: 30px 30px 0 30px;" class="tkting-method">좌석 선택</h1>
		<span style="float:right;font-size:12px;margin-right:30px;">
			<a href="/web/view/container/container.jsp" class="fa fa-home" style="cursor:pointer;text-decoration:none;color:black;"></a>
			<i style="cursor:default;">&gt;</i>
			<a href="/web/view/kwon/tkting/kwonTkting.jsp" style="cursor:pointer;text-decoration:none;color:black;">승차권예약</a>
			<i style="cursor:default;">&gt;</i>
			<a href="#" style="cursor:pointer;text-decoration:none;color:black;">좌석 선택</a>
		</span>
		<br />
		<br />
		<br />
		<span style="float:right;font-size:15px;margin-right:30px;cursor:default;">
			<span class="tkting-process-number">1</span>
			<i>조회</i>
			<i>></i>
			<span class="tkting-process-number-active">2</span>
			<i>예약</i>
			<i>></i>
			<span class="tkting-process-number">3</span>
			<i>결제</i>
			<i>></i>
			<span class="tkting-process-number">4</span>
			<i>발권</i>
		</span>
		<br />
		<br />
		<div class="seat-booking-rootlayer-wrapper">
			<div  class="seat-booking-layer-wrapper"> 
				<!-- Start of seat booking -->
<%
List<Integer> getCarNoList = (List<Integer>) request.getAttribute("getCarNoList");
if(getCarNoList == null) {
	getCarNoList = new ArrayList<Integer>();
}
%>				
				<div class="btn-group" style="width:100%;margin: 5px auto;text-align:center;">
					<span class="fa fa-long-arrow-left" style="display:inline-block;"></span>
					<%
					for(int i = 0; i < getCarNoList.size(); i++) {
					%>
					<button class="car-select" value="<%=getCarNoList.get(i)%>"><%=getCarNoList.get(i)%></button>
					<%
					}
					%>
					<span class="fa fa-long-arrow-left" style="display:inline-block;"></span>
				</div>
				
				<div id="seatBox">
					<div id="holder">
						<ul id="place"></ul>
					</div>
					<div style="float:left;width:100%;margin-top:20px;">
						<ul id="seatDescription">
							<li style="background:url('/web/img/booking/available_seat_img.gif') no-repeat scroll 0 0 transparent; width:130px;">예약 가능</li>
							<li style="background:url('/web/img/booking/booked_seat_img.gif') no-repeat scroll 0 0 transparent; width:130px;">예약 불가능</li>
							<li style="background:url('/web/img/booking/selected_seat_img.gif') no-repeat scroll 0 0 transparent; width:130px;">좌석 선택</li>
						</ul>
					</div>
					<div style="clear:both;width:100%; text-align:center;">
						<input id="btnShowNew" type="button" value="좌석 선택" style="margin-top:10px;" />
						<!-- <input id="btnShow" type="button" value="Show All" /> -->
					</div>
					<br />
				</div>
				
				<!-- End of seat booking -->
			</div>
		</div>
	</div>
</div>



<!-- Param Chain -->
<form action="/web/view/kwon/tkting/tktingPaymentProcess.jsp" name="paramChainFrm" method="post">
	<input type="hidden" id="tType" name="tType" value="<%=tType%>" />
	<input type="hidden" id="srcName" name="srcName" value="<%=srcName%>" />
	<input type="hidden" id="destName" name="destName" value="<%=destName%>" />
	<input type="hidden" id="dT" name="dT" value="<%=dT%>" />
	<input type="hidden" id="aT" name="aT" value="<%=aT%>" />
	<input type="hidden" id="personCnt" name="personCnt" value="<%=personCnt%>" />
	<input type="hidden" id="trainNo" name="trainNo" value="<%=trainNo%>" />
	<input type="hidden" id="carNo" name="carNo" value="" />
	<input type="hidden" id="selectingSeats" name="selectingSeats" value="" />
</form>

<!-- LOGIN  End   -->
		<jsp:include page="/view/container/containerBottom.jsp" flush="false" />
		
	</div>
	
	<script src="https://code.jquery.com/jquery-2.2.4.min.js"></script>
	<script type="text/javascript"  src="/web/js/container/clock.js" charset="UTF-8"></script>
	<script type="text/javascript"  src="/web/js/kwon/tkting/seatBooking.js" charset="UTF-8"></script>
<!-- 	
	<script type="text/javascript"  src="/web/js/kwon/login/login.js" charset="UTF-8"></script>
	<script type="text/javascript"  src="/web/js/main/main.js" charset="UTF-8"></script>
	<script type="text/javascript"  src="/web/js/kwon/tktingSchedule.js" charset="UTF-8"></script>
	<script type="text/javascript"  src="/web/js/modal/modalSelectStation.js" charset="UTF-8"></script>
	<script type="text/javascript"  src="/web/js/modal/modalSelectCalendar.js" charset="UTF-8"></script>
-->

<script>
var data = {trainNo:'<%=trainNo%>',tType:'<%=tType%>',dT:'<%=dT%>',aT:'<%=aT%>'};
</script>

</body>
</html>