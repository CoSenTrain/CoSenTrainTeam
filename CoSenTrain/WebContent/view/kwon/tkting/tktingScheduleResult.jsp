<%@page import="java.text.ParseException"%>
<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Calendar"%>
<%@page import="util.kwon.Obj"%>
<%@page import="bean.kwon.TktingSchedule"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
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
	<link href="/web/css/kwon/tkting/tktingSchedule.css" rel="stylesheet" type="text/css">
	<link href="/web/css/modal/modalSelectStation.css" rel="stylesheet" type="text/css">
	<link href="/web/css/modal/modalSelectCalendar.css" rel="stylesheet" type="text/css">
	<style>
		input {
			margin: 0;
			padding: 10px;
			border: 0;
			font-size: 15px;
		}
	</style>
</head>
<body>
	<div class="container">
		
		<jsp:include page="/view/container/containerTop.jsp" flush="false" />
		
		
<!-- ----------------------------------------------------------------------------------------------------------- -->
<%
request.setCharacterEncoding("EUC-KR");
//init
String tktingMethod = (String) request.getAttribute("tktingMethod");
tktingMethod = (Obj.isStrNull(tktingMethod) ? "oneTk" : tktingMethod);

String tripType = (String) request.getAttribute("tripType");
tripType = (Obj.isStrNull(tripType) ? "oneway" : tripType);

String adultCnt = (String) request.getAttribute("adultCnt");
adultCnt = (Obj.isStrNull(adultCnt) ? "1" : adultCnt);

String childCnt = (String) request.getAttribute("childCnt");
childCnt = (Obj.isStrNull(childCnt) ? "0" : childCnt);

String seniorCnt = (String) request.getAttribute("seniorCnt");
seniorCnt = (Obj.isStrNull(seniorCnt) ? "0" : seniorCnt);

String yyyy = (String) request.getAttribute("yyyy");
if(Obj.isStrNull(yyyy)) {
	yyyy = String.valueOf(Calendar.getInstance().get(Calendar.YEAR));
}

String mm = (String) request.getAttribute("mm");
if(Obj.isStrNull(mm)) {
	int month = Calendar.getInstance().get(Calendar.MONTH) + 1;
	mm = String.valueOf(month < 10 ? "0" + month : month);
}

String dd = (String) request.getAttribute("dd");
if(Obj.isStrNull(dd)) {
	int day = Calendar.getInstance().get(Calendar.DAY_OF_MONTH);
	dd = String.valueOf(day < 10 ? "0" + day : day);
}

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

String src = (String) request.getAttribute("src");
src = (Obj.isStrNull(src) ? "수서" : src);

String dest = (String) request.getAttribute("dest");
dest = (Obj.isStrNull(dest) ? "부산" : dest);

String hh = (String) request.getAttribute("hh");
hh = (Obj.isStrNull(hh) ? "00" : hh);

Object o = request.getAttribute("selScheduleList");
List<TktingSchedule> selScheduleList = null;
if(o instanceof List) {
	selScheduleList = (List<TktingSchedule>) o;
}


%>
<div class="tkting-wrapper">
	<div class="tkting-wrapper-center">
		<br />
		<h1 style="padding: 30px 30px 0 30px;" class="tkting-method">일반승차권</h1>
		<span style="float:right;font-size:12px;margin-right:30px;">
			<a href="/web/view/container/container.jsp" class="fa fa-home" style="cursor:pointer;text-decoration:none;color:black;"></a>
			<i style="cursor:default;">&gt;</i>
			<a href="" style="cursor:pointer;text-decoration:none;color:black;">승차권예약</a>
			<i style="cursor:default;">&gt;</i>
			<a href="#" style="cursor:pointer;text-decoration:none;color:black;" class="tkting-method">일반승차권</a>
		</span>
		<br />
		<br />
		<br />
		<span style="float:right;font-size:15px;margin-right:30px;cursor:default;">
			<span class="tkting-process-number-active">1</span>
			<i>조회</i>
			<i>></i>
			<span class="tkting-process-number">2</span>
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
		<div class="tkting-schedule-wrapper">
			<div class="tab">
				<button class="tablinks" onclick="openCity(this, event, 'oneTk')" <%=(tktingMethod.equals("oneTk"))?"id='defaultOpen'":""%>>일반승차권</button>
				<button class="tablinks" onclick="openCity(this, event, 'manyTk')" <%=(tktingMethod.equals("manyTk"))?"id='defaultOpen'":""%>>단체승차권</button>
			</div>
			<form action="/web/view/kwon/tkting/tktingScheduleProcess.jsp" method="post" name="frm" style="box-shadow: 2px 2px 2px #888888;" >
				<input type="hidden" id="tktingMethod" name="tktingMethod" value="oneTk" />
				<div class="tabcontent-common">
						<input id="srcStationName" type="text" value="<%=src%>" name="src" style="border:1px solid gray;" size="10px" />
						<a href="#" class="fa fa-map-marker sel-form-station sel-form-icon" ></a>
						<i class="fa fa-exchange" style="padding: 0 20px;" onclick="(function(){var temp;var src=document.getElementById('srcStationName');var dest=document.getElementById('destStationName');temp=src.value;src.value=dest.value;dest.value=temp;})()"></i>
						<input id="destStationName" type="text" value="<%=dest%>" name="dest" style="border:1px solid gray;" size="10px" />
						<a href="#" class="fa fa-map-marker sel-form-station sel-form-icon" ></a>
						<input type="text" value="<%=yyyy%>.<%=mm%>.<%=dd%>" id="chosenDate" name="chosenDate" style="margin-left: 50px;" size="10px" />
						<a href="#" class="fa fa-calendar sel-form-calendar sel-form-icon"></a>
						<select id="timeAfter" name="timeAfter" style="margin-left: 20px;">
							<option value="00" label="00시 이후" <%=(hh.equals("00")?"selected":"")%> />
							<option value="02" label="02시 이후" <%=(hh.equals("02")?"selected":"")%> />
							<option value="04" label="04시 이후" <%=(hh.equals("04")?"selected":"")%> />
							<option value="06" label="06시 이후" <%=(hh.equals("06")?"selected":"")%> />
							<option value="08" label="08시 이후" <%=(hh.equals("08")?"selected":"")%> />
							<option value="10" label="10시 이후" <%=(hh.equals("10")?"selected":"")%> />
							<option value="12" label="12시 이후" <%=(hh.equals("12")?"selected":"")%> />
							<option value="14" label="14시 이후" <%=(hh.equals("14")?"selected":"")%> />
							<option value="16" label="16시 이후" <%=(hh.equals("16")?"selected":"")%> />
							<option value="18" label="18시 이후" <%=(hh.equals("18")?"selected":"")%> />
							<option value="20" label="20시 이후" <%=(hh.equals("20")?"selected":"")%> />
							<option value="22" label="22시 이후" <%=(hh.equals("22")?"selected":"")%> />
						</select>
						
				</div>	<!-- tabcontent-common -->
				
				
				<div id="oneTk" class="tabcontent">
					<table>
						<tr>
							<td width="100px">. 여정경로</td>
							<td>
								<input type="hidden" id="hiddenTripType" name="tripType" value="oneway" />
								<input type="radio" name="tripTypeForOne" value="oneway" onchange="(function(){document.getElementById('hiddenTripType').value='oneway';})()" <%=(tripType.equals("oneway")?"checked":"")%> /> 직통&nbsp;&nbsp;&nbsp;
								<input type="radio" name="tripTypeForOne" value="transfer" onchange="(function(){document.getElementById('hiddenTripType').value='transfer';})()"  <%=(tripType.equals("transfer")?"checked":"")%>  /> 환승&nbsp;&nbsp;&nbsp;
								<input type="radio" name="tripTypeForOne" value="round" onchange="(function(){document.getElementById('hiddenTripType').value='round';})()"  <%=(tripType.equals("round")?"checked":"")%>  /> 왕복
							</td>
						</tr>
						<tr>
							<td>. 인원정보</td>
							<td>
								<select id="adultCnt" name="adultCntForOne"  style="width:130px;">
									<%
									for(int i = 0; i < 10; i++) {
										StringBuffer option = new StringBuffer();
										option.append("<option ")
										.append("value='" + i + "' ")
										.append(((tktingMethod.equals("oneTk") && adultCnt.equals(String.valueOf(i)))?"selected ":" "))
										.append(">")
										.append("어른 " + i + "명")
										.append("</option>");
										option.trimToSize();
										out.println(option.toString());
									}
									%>
								</select>
								<select id="childCnt" name="childCntForOne" style="width:130px;">
									<%
									for(int i = 0; i < 10; i++) {
										StringBuffer option = new StringBuffer();
										option.append("<option ")
										.append("value='" + i + "' ")
										.append(((tktingMethod.equals("oneTk") && childCnt.equals(String.valueOf(i)))?"selected ":" "))
										.append(">")
										.append("만 4~12세 " + i + "명")
										.append("</option>");
										option.trimToSize();
										out.println(option.toString());
									}
									%>
								</select>
								<select id="seniorCnt" name="seniorCntForOne" style="width:130px;">
									<%
									for(int i = 0; i < 10; i++) {
										StringBuffer option = new StringBuffer();
										option.append("<option ")
										.append("value='" + i + "' ")
										.append(((tktingMethod.equals("oneTk") && seniorCnt.equals(String.valueOf(i)))?"selected ":" "))
										.append(">")
										.append("만 65세 이상 " + i + "명")
										.append("</option>");
										option.trimToSize();
										out.println(option.toString());
									}
									%>
								</select>
							</td>
						</tr>
						<tr>
							<td>. 좌석정보</td>
							<td>
								<select id="seniorCnt" name="carType" style="width:130px;">
									<option value="all" selected="selected">모두</option>
									<option value="regular">일반실</option>
									<option value="advanced">특실</option>
								</select>
								<select id="seniorCnt" name="seatCate" style="width:130px;">
									<option value="all" selected="selected">좌석속성</option>
									<option value="windowSeat">창측좌석</option>
									<option value="aisleSeat">내측좌석</option>
								</select>
							</td>
						</tr>
					</table>
				</div>
				
				<div id="manyTk" class="tabcontent">
					<table>
						<tr>
							<td width="100px">. 여정경로</td>
							<td>
								<input type="radio" name="tripTypeForMany" value="oneway" <%=(tripType.equals("oneway")?"checked":"")%> /> 직통&nbsp;&nbsp;&nbsp;
								<input type="radio" name="tripTypeForMany" value="transfer" <%=(tripType.equals("transfer")?"checked":"")%>  /> 환승
							</td>
						</tr>
						<tr>
							<td width="100px">. 인원정보</td>
							<td>
								어른 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								<%
								if(tktingMethod.equals("manyTk") && !Obj.isStrNull(adultCnt)) {
								%>
								<input type="text" name="adultCntForMany" size="1" value="<%=adultCnt%>" style="padding: 0;width:25px;height:17px; border: 1px solid #BBB;text-align:right;"/>
								<%
								} else {
								%>
								<input type="text" name="adultCntForMany" size="1" value="1" style="padding: 0;width:25px;height:17px; border: 1px solid #BBB;text-align:right;"/>
								<%
								}
								%>
								명,&nbsp;&nbsp;&nbsp;만 4~12세&nbsp;&nbsp;&nbsp;&nbsp;
								<%
								if(tktingMethod.equals("manyTk") && !Obj.isStrNull(childCnt)) {
								%>
								<input type="text" name="childCntForMany" size="1" value="<%=childCnt%>" style="padding: 0;width:25px;height:17px; border: 1px solid #BBB;text-align:right;" />
								<%
								} else {
								%>
								<input type="text" name="childCntForMany" size="1" value="0" style="padding: 0;width:25px;height:17px; border: 1px solid #BBB;text-align:right;" />
								<%
								}
								%>
								명,&nbsp;&nbsp;&nbsp;만 65세 이상&nbsp;
								<%
								if(tktingMethod.equals("manyTk") && !Obj.isStrNull(seniorCnt)) {
								%>
								<input type="text" name="seniorCntForMany" size="1" value="<%=seniorCnt%>" style="padding: 0;width:25px;height:17px; border: 1px solid #BBB;text-align:right;" />
								<%
								} else {
								%>
								<input type="text" name="seniorCntForMany" size="1" value="0" style="padding: 0;width:25px;height:17px; border: 1px solid #BBB;text-align:right;" />
								<%
								}
								%>
								명
							</td>
						</tr>
					</table>
				</div>
				
			</form>
			<br />
			<br />
			<div onclick="(function(){frm.submit();})()" style="width:500px;height:30px;margin:0 auto;padding:10px ;background-color:crimson;color:snow;font-size:20px;cursor:pointer;border-radius: 0 10px;box-shadow: 2px 2px 2px #888888;">
				<div style="width:110px;padding:0;margin:0 auto;">
					<i class="fa fa-search" style="vertical-align:5%;"></i>
					&nbsp;조회하기
				</div>
			</div>
			<br />
			<br />
			<br />
			
			
			<!-- Schedule Selection List -->
			<div id="resultPosition" style="width:920px;border-top:1px solid gray;background-color:#EEE;padding:10px;cursor:default;color:firebrick;box-shadow: 2px 2px 2px #888888;">
				● <%=src%> → <%=dest%> <%=yyyy%>.<%=mm%>.<%=dd%> (<%=korDayOfWeek%>)
			</div>
			<br />
			<div onload="(function(){location.href='#resultPosition';})()" style="width:920px;border-top:1px solid gray;background-color:#EEE;padding:10px;cursor:default;box-shadow: 2px 2px 2px #888888;position:relative;">
				<%
				if(selScheduleList == null || selScheduleList.isEmpty()) {
				%>
				<!-- Schedule NOT FOUND -->
				<p style="width:920px;text-align:center;position:absolute;;margin-top:50px;">
					<span class="danger" style="border-radius:50%;box-shadow: 2px 2px 2px #888888;color:snow;">&nbsp;&nbsp;!&nbsp;&nbsp;</span> 앗, 조회된 운행정보 없음.
				</p>
				<img src="/web/img/empty/rail.jpg" width="100%" height="400px" />
				<%
				} else {
				%>
				<!-- Schedule RESULT -->
				<table class="sel-train-result" style="border-spacing: 0;width:100%;">
					<thead>
						<tr>
							<th>구분</th>
							<th>열차종류</th>
							<th>열차번호</th>
							<th>출발역</th>
							<th>도착역</th>
							<th>출발시간</th>
							<th>도착시간</th>
							<th>소요시간</th>
							<th>운행시간</th>
							<th>운임요금</th>
							<th>예약하기</th>
						</tr>
					</thead>
					<tbody>
						<%!
						public String getDiffHhMm(String dateStart, String dateStop) {
							// Custom date format
							SimpleDateFormat format = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");  

							Date d1 = null;
							Date d2 = null;
							try {
							    d1 = format.parse(dateStart);
							    d2 = format.parse(dateStop);
							} catch (ParseException e) {
							    e.printStackTrace();
							}    

							// Get msec from each, and subtract.
							long diff = d2.getTime() - d1.getTime();
							long diffSeconds = diff / 1000 % 60;
							long diffMinutes = diff / (60 * 1000) % 60;
							long diffHours = diff / (60 * 60 * 1000) % 24;
							long diffDays = diff / (24 * 60 * 60 * 1000);
							return (diffHours<10?"0"+diffHours:diffHours) + ":" + (diffMinutes<10?"0"+diffMinutes:diffMinutes);
						}
						%>
						<%
						for(TktingSchedule e : selScheduleList) {
						%>
						<tr>
							<td>직통</td>
							<td><%=e.getTrainType().toUpperCase()%></td>
							<td><%=e.getTrainNo()%></td>
							<td><%=e.getSrcName()%></td>
							<td><%=e.getDestName()%></td>
							<td><%=e.getDepartureTime().substring(11, 16)%></td>
							<td><%=e.getArrivalTime().substring(11, 16)%></td>
							<td><%=getDiffHhMm(e.getDepartureTime(), e.getArrivalTime())%></td>
							<td><button style="background-color:indigo;border-radius:5px;color:snow;cursor:pointer;"><b>보기</b></button></td>
							<td><button style="background-color:indigo;border-radius:5px;color:snow;cursor:pointer;"><b>보기</b></button></td>
							<td><button style="background-color:crimson;border-radius:5px;color:snow;cursor:pointer;"><b>예약하기</b></button></td>
						</tr>
						<%
						}
						%>
					</tbody>
				</table>
				<%
				}	//데이터 있음
				%>
			</div>
			
		</div>
		
		
		<jsp:include page="/view/modal/selStationModal.jsp" flush="false" />
		<jsp:include page="/view/modal/selCalendarModal.jsp" flush="false" />
	</div>
</div>

<!-- ----------------------------------------------------------------------------------------------------------- -->
		<jsp:include page="/view/container/containerBottom.jsp" flush="false" />
		
	</div>
	
	<script type="text/javascript"  src="/web/js/container/clock.js" charset="UTF-8"></script>
	<!-- <script type="text/javascript"  src="/web/js/main/main.js" charset="UTF-8"></script> -->
	<script type="text/javascript"  src="/web/js/kwon/tkting/tktingSchedule.js" charset="UTF-8"></script>
	<script type="text/javascript"  src="/web/js/modal/modalSelectStation.js" charset="UTF-8"></script>
	<script type="text/javascript"  src="/web/js/modal/modalSelectCalendar.js" charset="UTF-8"></script>
</body>
</html>