<%@page import="java.util.Calendar"%>
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

String sysdate = "" + Calendar.getInstance().get(Calendar.YEAR);
sysdate += "/" + ((Calendar.getInstance().get(Calendar.MONTH) + 1) > 9 ? (Calendar.getInstance().get(Calendar.MONTH) + 1) : "0" + (Calendar.getInstance().get(Calendar.MONTH) + 1));
sysdate += "/" + (Calendar.getInstance().get(Calendar.DAY_OF_MONTH) > 9 ? Calendar.getInstance().get(Calendar.DAY_OF_MONTH) : "0" + Calendar.getInstance().get(Calendar.DAY_OF_MONTH));
sysdate += " " + (Calendar.getInstance().get(Calendar.HOUR_OF_DAY) > 9 ? Calendar.getInstance().get(Calendar.HOUR_OF_DAY) : "0" + Calendar.getInstance().get(Calendar.HOUR_OF_DAY));
sysdate += ":" + (Calendar.getInstance().get(Calendar.MINUTE) > 9 ? Calendar.getInstance().get(Calendar.MINUTE) : "0" + Calendar.getInstance().get(Calendar.MINUTE));
sysdate += ":" + (Calendar.getInstance().get(Calendar.SECOND) > 9 ? Calendar.getInstance().get(Calendar.SECOND) : "0" + Calendar.getInstance().get(Calendar.SECOND));

String yyyy = dT.substring(0, 4);
String mm = dT.substring(5, 7);
String dd = dT.substring(8, 10);
String dThh = dT.substring(8, 10);
String dTmi = dT.substring(11, 13);
String aThh = aT.substring(8, 10);
String aTmi = aT.substring(11, 13);

String korDayOfWeek = "";
Calendar cal = Calendar.getInstance();
cal.set(Integer.valueOf(yyyy), Integer.valueOf(mm) - 1, Integer.valueOf(dd));
switch(cal.get(Calendar.DAY_OF_WEEK)) {
case Calendar.MONDAY:
	korDayOfWeek = "월";
	break;
case Calendar.TUESDAY:
	korDayOfWeek = "화";
	break;
case Calendar.WEDNESDAY:
	korDayOfWeek = "수";
	break;
case Calendar.THURSDAY:
	korDayOfWeek = "목";
	break;
case Calendar.FRIDAY:
	korDayOfWeek = "금";
	break;
case Calendar.SATURDAY:
	korDayOfWeek = "토";
	break;
case Calendar.SUNDAY:
	korDayOfWeek = "일";
	break;
default:
	korDayOfWeek = "휴일";
}

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
.ticket-wrapper {
	background-image: url("/web/img/bg/bg_container.jpg");
	background-repeat: repeat;
	background-size: inherit;
	background-position: center;
	background-color: #64053C;
}
		
.ticket-wrapper .ticket-wrapper-center {
	width: 1000px;
	margin: 0 auto;
	background-color: #FFF;
}

.ticket-wrapper .ticket-rootlayer-wrapper {
	width: 940px;
	min-height: 500px;
	padding: 0 30px 30px 30px;
}

.ticket-wrapper .ticket-layer-wrapper {
	width: 890px;
	padding: 25px;
	border: 1px solid lightgray;
	box-shadow: 2px 2px 1px #888888;
}

/* process-number */
.ticket-wrapper .tkting-process-number {
	background-color: gray;
	color:snow;
	padding: 2px 7px;
	border-radius: 50%;
	box-shadow: 1px 1px 1px #888888;
}

.ticket-wrapper .tkting-process-number-active {
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

<div class="ticket-wrapper">
	<div class="ticket-wrapper-center">
		<br />
		<h1 style="padding: 30px 30px 0 30px;" class="tkting-method">결제 완료</h1>
		<span style="float:right;font-size:12px;margin-right:30px;">
			<a href="/web/view/container/container.jsp" class="fa fa-home" style="cursor:pointer;text-decoration:none;color:black;"></a>
			<i style="cursor:default;">&gt;</i>
			<a href="/web/view/kwon/tkting/kwonTkting.jsp" style="cursor:pointer;text-decoration:none;color:black;">승차권예약</a>
			<i style="cursor:default;">&gt;</i>
			<a href="#" style="cursor:pointer;text-decoration:none;color:black;">결제 완료</a>
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
			<span class="tkting-process-number">3</span>
			<i>결제</i>
			<i>></i>
			<span class="tkting-process-number-active">4</span>
			<i>발권</i>
		</span>
		<br />
		<br />
		<div class="ticket-rootlayer-wrapper">
			<div  class="ticket-layer-wrapper"> 
				<h1>티켓</h1>
				<hr />
				<!--
				runningNo=668144, 
				fare=50000, 
				discountNo=1, 
				srcName=수서, 
				destName=부산, 
				tType=cosen, 
				userNo=72, 
				discount=0, 
				pwTicketing=33333, 
				trainNo=19, 
				personCnt=1, 
				dT=2017/07/12 22:00:00, 
				paymentNo=3012, 
				aT=2017/07/14 00:26:00, 
				seatFullName=19호차 11C석, 
				money=50000, 
				phone=010-1922-3912, 
				carNo=145, 
				name=sdasfda, 
				userType=nonuser, 
				emailRecivable=N, 
				selectingSeats=4785, 
				email=2rr2@nav.com
				-->
				<!-- width:890px; -->
				<div style="border: 3px solid darkgray;border-radius: 5px;margin: 10px 0;">
					<div style="width: 830px;height: 300px;margin: 20px auto;">
						<div style="width: 340px;height: 280px;border: 1px solid lightgray;border-radius: 5px;float: left;padding: 10px;">
							<b>이용안내</b>
							<ol>
								<li>홈티켓(Home-Ticket)은 승차권에 표시된 승차지가 이용하여야 하며, 도착역을 벗어날 때까지 소지하셔야 합니다.</li>
								<li>(주)CoSen 직원이 본인 확인을 요구할 경우 신분증을 제시하셔야 합니다.</li>
							</ol>
							<div style="padding: 5px; text-align: center;">
								<img src="/web/img/qrCode/qrCode.jpg" alt="QR Code" width="100px" height="100px" />
							</div>
							<div style="padding: 10px; background-color: lightgray; border-radius: 5px;">
								문의 전화 : 02) 1222-3111
							</div>
						</div>
						<div style="width: 430px;height: 280px;border: 2px solid black;border-radius: 5px;float: right;padding: 10px;background: url('/web/img/bg/flower-crimson.png');-webkit-background-size: cover;-moz-background-size: cover;-o-background-size: cover;background-size: cover;">
							<b>승차일 <%=yyyy%>년 <font size="5"><%=mm%>월 <%=dd%>일 (<%=korDayOfWeek%>)</font></b>
							<br />
							<table>
								<colgroup>
									<col width="120px" />
									<col width="50px" />
									<col width="120px" />
								</colgroup>
								<tr>
									<th><font size="6" style="text-shadow: 2px 2px white;"><%=srcName%></font></th>
									<th rowspan="2" align="right"><font size="7"><i class="fa fa-caret-right"></i></font></th>
									<th><font size="6" style="text-shadow: 2px 2px white;"><%=destName%></font></th>
								</tr>
								<tr>
									<th><font size="4" color="snow" style="background-color: black; padding: 3px; border-radius: 2px;"><%=dThh%>:<%=dTmi%></font></th>
									<th><font size="4" color="black" style="background-color: lightgray; opacity: .8; padding: 3px; border-radius: 2px;"><%=aThh%>:<%=aTmi%></font></th>
								</tr>
							</table>
							<br />
							<b>CoSen</b>
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							<b><font size="4" style="text-shadow: 2px 2px white;"><%=trainNo%> 열차</font></b>
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							<span style="border: 1px solid gray; border-radius: 2px; padding: 1px;background-color: lightgray;opacity: .8;font-size: 20px;"><b><%=request.getAttribute("seatFullName")%></b></span>
							<br />
							<br />
							<div style="padding: 7px;font-weight: bold;font-size: 17px;background-color: rgba(130, 0, 130, 0.3);">
								티켓 번호 : <%=request.getAttribute("ticketNo")%>
							</div>
							<table>
								<colgroup>
									<col width="80px" />
									<col width="145px" />
									<col width="80px" />
									<col width="145px" />
								</colgroup>
								<tr>
									<th><font size="2">영수 금액</font></th>
									<td><font size="2"><b><%=request.getAttribute("money")%></b></font></td>
									<th><font size="2">인원</font></th>
									<td><font size="2"><b><%=request.getAttribute("personCnt")%></b></font></td>
								</tr>
								<tr>
									<th><font size="2">예약자명</font></th>
									<td><font size="2"><b><%=request.getAttribute("name")%></b></font></td>
									<th><font size="2">인쇄일시</font></th>
									<td>
										<font size="2">
											<b>
												<%=sysdate%>
											</b>
										</font>
									</td>
								</tr>
							</table>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>




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