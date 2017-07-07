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
String carNo = request.getParameter("carNo");
String selectingSeats = request.getParameter("selectingSeats");
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
<!-- 	
	<link href="/web/css/kwon/tktingSchedule.css" rel="stylesheet" type="text/css">
	<link href="/web/css/kwon/login/login.css" rel="stylesheet" type="text/css">
	<link href="/web/css/modal/modalSelectStation.css" rel="stylesheet" type="text/css">
	<link href="/web/css/modal/modalSelectCalendar.css" rel="stylesheet" type="text/css">
-->

<style>

/* wrapper */
.payment-wrapper {
	background-image: url("/web/img/bg/bg_container.jpg");
	background-repeat: repeat;
	background-size: inherit;
	background-position: center;
	background-color: #64053C;
}
		
.payment-wrapper .payment-wrapper-center {
	width: 1000px;
	margin: 0 auto;
	background-color: #FFF;
}

.payment-wrapper .payment-rootlayer-wrapper {
	width: 940px;
	height: 500px;
	padding: 0 30px 30px 30px;
}

.payment-wrapper .payment-layer-wrapper {
	width: 890px;
	height: 450px;
	padding: 25px;
	border: 1px solid lightgray;
	box-shadow: 2px 2px 1px #888888;
}

/* process-number */
.payment-wrapper .tkting-process-number {
	background-color: gray;
	color:snow;
	padding: 2px 7px;
	border-radius: 50%;
	box-shadow: 1px 1px 1px #888888;
}

.payment-wrapper .tkting-process-number-active {
	background-color: crimson;
	color:snow;
	padding: 2px 7px;
	border-radius: 50%;
	box-shadow: 2px 2px 2px #888888;
}


</style>

</head>
<body>
	<div class="container">
		
		<jsp:include page="/view/container/containerTop.jsp" flush="false" />
<!-- LOGIN  Start -->

<div class="payment-wrapper">
	<div class="payment-wrapper-center">
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
			<span class="tkting-process-number">2</span>
			<i>예약</i>
			<i>></i>
			<span class="tkting-process-number-active">3</span>
			<i>결제</i>
			<i>></i>
			<span class="tkting-process-number">4</span>
			<i>발권</i>
		</span>
		<br />
		<br />
		<div class="payment-rootlayer-wrapper">
			<div  class="payment-layer-wrapper"> 
				<h1>선택하신 좌석 번호: <%=selectingSeats%></h1>
				<hr />
				<img src="/web/view/kwon/tkting/temp_payment.JPG" width="100%" style="cursor:pointer" onclick="(function() {paramChainFrm.submit();})()" />
			</div>
		</div>
	</div>
</div>


<!-- ParamChain -->
<form action="/web/view/kwon/tkting/tktingTicketProcess.jsp" name="paramChainFrm" method="post">
	<input type="hidden" id="tType" name="tType" value="<%=tType%>" />
	<input type="hidden" id="srcName" name="srcName" value="<%=srcName%>" />
	<input type="hidden" id="destName" name="destName" value="<%=destName%>" />
	<input type="hidden" id="dT" name="dT" value="<%=dT%>" />
	<input type="hidden" id="aT" name="aT" value="<%=aT%>" />
	<input type="hidden" id="personCnt" name="personCnt" value="<%=personCnt%>" />
	<input type="hidden" id="trainNo" name="trainNo" value="<%=trainNo%>" />
	<input type="hidden" id="carNo" name="carNo" value="<%=carNo%>" />
	<input type="hidden" id="selectingSeats" name="selectingSeats" value="<%=selectingSeats%>" />
</form>


<!-- LOGIN  End   -->
		<jsp:include page="/view/container/containerBottom.jsp" flush="false" />
		
	</div>
	
	<script type="text/javascript"  src="/web/js/container/clock.js" charset="UTF-8"></script>
<!-- 	
	<script type="text/javascript"  src="/web/js/kwon/login/login.js" charset="UTF-8"></script>
	<script type="text/javascript"  src="/web/js/main/main.js" charset="UTF-8"></script>
	<script type="text/javascript"  src="/web/js/kwon/tktingSchedule.js" charset="UTF-8"></script>
	<script type="text/javascript"  src="/web/js/modal/modalSelectStation.js" charset="UTF-8"></script>
	<script type="text/javascript"  src="/web/js/modal/modalSelectCalendar.js" charset="UTF-8"></script>
-->


</body>
</html>