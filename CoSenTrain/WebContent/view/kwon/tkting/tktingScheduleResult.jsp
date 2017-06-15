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
	korDayOfWeek = "��";
	break;
case Calendar.TUESDAY:
	korDayOfWeek = "ȭ";
	break;
case Calendar.WEDNESDAY:
	korDayOfWeek = "��";
	break;
case Calendar.THURSDAY:
	korDayOfWeek = "��";
	break;
case Calendar.FRIDAY:
	korDayOfWeek = "��";
	break;
case Calendar.SATURDAY:
	korDayOfWeek = "��";
	break;
case Calendar.SUNDAY:
	korDayOfWeek = "��";
	break;
default:
	korDayOfWeek = "����";
}

String src = (String) request.getAttribute("src");
src = (Obj.isStrNull(src) ? "����" : src);

String dest = (String) request.getAttribute("dest");
dest = (Obj.isStrNull(dest) ? "�λ�" : dest);

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
		<h1 style="padding: 30px 30px 0 30px;" class="tkting-method">�Ϲݽ�����</h1>
		<span style="float:right;font-size:12px;margin-right:30px;">
			<a href="/web/view/container/container.jsp" class="fa fa-home" style="cursor:pointer;text-decoration:none;color:black;"></a>
			<i style="cursor:default;">&gt;</i>
			<a href="" style="cursor:pointer;text-decoration:none;color:black;">�����ǿ���</a>
			<i style="cursor:default;">&gt;</i>
			<a href="#" style="cursor:pointer;text-decoration:none;color:black;" class="tkting-method">�Ϲݽ�����</a>
		</span>
		<br />
		<br />
		<br />
		<span style="float:right;font-size:15px;margin-right:30px;cursor:default;">
			<span class="tkting-process-number-active">1</span>
			<i>��ȸ</i>
			<i>></i>
			<span class="tkting-process-number">2</span>
			<i>����</i>
			<i>></i>
			<span class="tkting-process-number">3</span>
			<i>����</i>
			<i>></i>
			<span class="tkting-process-number">4</span>
			<i>�߱�</i>
		</span>
		<br />
		<br />
		<div class="tkting-schedule-wrapper">
			<div class="tab">
				<button class="tablinks" onclick="openCity(this, event, 'oneTk')" <%=(tktingMethod.equals("oneTk"))?"id='defaultOpen'":""%>>�Ϲݽ�����</button>
				<button class="tablinks" onclick="openCity(this, event, 'manyTk')" <%=(tktingMethod.equals("manyTk"))?"id='defaultOpen'":""%>>��ü������</button>
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
							<option value="00" label="00�� ����" <%=(hh.equals("00")?"selected":"")%> />
							<option value="02" label="02�� ����" <%=(hh.equals("02")?"selected":"")%> />
							<option value="04" label="04�� ����" <%=(hh.equals("04")?"selected":"")%> />
							<option value="06" label="06�� ����" <%=(hh.equals("06")?"selected":"")%> />
							<option value="08" label="08�� ����" <%=(hh.equals("08")?"selected":"")%> />
							<option value="10" label="10�� ����" <%=(hh.equals("10")?"selected":"")%> />
							<option value="12" label="12�� ����" <%=(hh.equals("12")?"selected":"")%> />
							<option value="14" label="14�� ����" <%=(hh.equals("14")?"selected":"")%> />
							<option value="16" label="16�� ����" <%=(hh.equals("16")?"selected":"")%> />
							<option value="18" label="18�� ����" <%=(hh.equals("18")?"selected":"")%> />
							<option value="20" label="20�� ����" <%=(hh.equals("20")?"selected":"")%> />
							<option value="22" label="22�� ����" <%=(hh.equals("22")?"selected":"")%> />
						</select>
						
				</div>	<!-- tabcontent-common -->
				
				
				<div id="oneTk" class="tabcontent">
					<table>
						<tr>
							<td width="100px">. �������</td>
							<td>
								<input type="hidden" id="hiddenTripType" name="tripType" value="oneway" />
								<input type="radio" name="tripTypeForOne" value="oneway" onchange="(function(){document.getElementById('hiddenTripType').value='oneway';})()" <%=(tripType.equals("oneway")?"checked":"")%> /> ����&nbsp;&nbsp;&nbsp;
								<input type="radio" name="tripTypeForOne" value="transfer" onchange="(function(){document.getElementById('hiddenTripType').value='transfer';})()"  <%=(tripType.equals("transfer")?"checked":"")%>  /> ȯ��&nbsp;&nbsp;&nbsp;
								<input type="radio" name="tripTypeForOne" value="round" onchange="(function(){document.getElementById('hiddenTripType').value='round';})()"  <%=(tripType.equals("round")?"checked":"")%>  /> �պ�
							</td>
						</tr>
						<tr>
							<td>. �ο�����</td>
							<td>
								<select id="adultCnt" name="adultCntForOne"  style="width:130px;">
									<%
									for(int i = 0; i < 10; i++) {
										StringBuffer option = new StringBuffer();
										option.append("<option ")
										.append("value='" + i + "' ")
										.append(((tktingMethod.equals("oneTk") && adultCnt.equals(String.valueOf(i)))?"selected ":" "))
										.append(">")
										.append("� " + i + "��")
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
										.append("�� 4~12�� " + i + "��")
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
										.append("�� 65�� �̻� " + i + "��")
										.append("</option>");
										option.trimToSize();
										out.println(option.toString());
									}
									%>
								</select>
							</td>
						</tr>
						<tr>
							<td>. �¼�����</td>
							<td>
								<select id="seniorCnt" name="carType" style="width:130px;">
									<option value="all" selected="selected">���</option>
									<option value="regular">�Ϲݽ�</option>
									<option value="advanced">Ư��</option>
								</select>
								<select id="seniorCnt" name="seatCate" style="width:130px;">
									<option value="all" selected="selected">�¼��Ӽ�</option>
									<option value="windowSeat">â���¼�</option>
									<option value="aisleSeat">�����¼�</option>
								</select>
							</td>
						</tr>
					</table>
				</div>
				
				<div id="manyTk" class="tabcontent">
					<table>
						<tr>
							<td width="100px">. �������</td>
							<td>
								<input type="radio" name="tripTypeForMany" value="oneway" <%=(tripType.equals("oneway")?"checked":"")%> /> ����&nbsp;&nbsp;&nbsp;
								<input type="radio" name="tripTypeForMany" value="transfer" <%=(tripType.equals("transfer")?"checked":"")%>  /> ȯ��
							</td>
						</tr>
						<tr>
							<td width="100px">. �ο�����</td>
							<td>
								� &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
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
								��,&nbsp;&nbsp;&nbsp;�� 4~12��&nbsp;&nbsp;&nbsp;&nbsp;
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
								��,&nbsp;&nbsp;&nbsp;�� 65�� �̻�&nbsp;
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
								��
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
					&nbsp;��ȸ�ϱ�
				</div>
			</div>
			<br />
			<br />
			<br />
			
			
			<!-- Schedule Selection List -->
			<div id="resultPosition" style="width:920px;border-top:1px solid gray;background-color:#EEE;padding:10px;cursor:default;color:firebrick;box-shadow: 2px 2px 2px #888888;">
				�� <%=src%> �� <%=dest%> <%=yyyy%>.<%=mm%>.<%=dd%> (<%=korDayOfWeek%>)
			</div>
			<br />
			<div onload="(function(){location.href='#resultPosition';})()" style="width:920px;border-top:1px solid gray;background-color:#EEE;padding:10px;cursor:default;box-shadow: 2px 2px 2px #888888;position:relative;">
				<%
				if(selScheduleList == null || selScheduleList.isEmpty()) {
				%>
				<!-- Schedule NOT FOUND -->
				<p style="width:920px;text-align:center;position:absolute;;margin-top:50px;">
					<span class="danger" style="border-radius:50%;box-shadow: 2px 2px 2px #888888;color:snow;">&nbsp;&nbsp;!&nbsp;&nbsp;</span> ��, ��ȸ�� �������� ����.
				</p>
				<img src="/web/img/empty/rail.jpg" width="100%" height="400px" />
				<%
				} else {
				%>
				<!-- Schedule RESULT -->
				<table class="sel-train-result" style="border-spacing: 0;width:100%;">
					<thead>
						<tr>
							<th>����</th>
							<th>��������</th>
							<th>������ȣ</th>
							<th>��߿�</th>
							<th>������</th>
							<th>��߽ð�</th>
							<th>�����ð�</th>
							<th>�ҿ�ð�</th>
							<th>����ð�</th>
							<th>���ӿ��</th>
							<th>�����ϱ�</th>
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
							<td>����</td>
							<td><%=e.getTrainType().toUpperCase()%></td>
							<td><%=e.getTrainNo()%></td>
							<td><%=e.getSrcName()%></td>
							<td><%=e.getDestName()%></td>
							<td><%=e.getDepartureTime().substring(11, 16)%></td>
							<td><%=e.getArrivalTime().substring(11, 16)%></td>
							<td><%=getDiffHhMm(e.getDepartureTime(), e.getArrivalTime())%></td>
							<td><button style="background-color:indigo;border-radius:5px;color:snow;cursor:pointer;"><b>����</b></button></td>
							<td><button style="background-color:indigo;border-radius:5px;color:snow;cursor:pointer;"><b>����</b></button></td>
							<td><button style="background-color:crimson;border-radius:5px;color:snow;cursor:pointer;"><b>�����ϱ�</b></button></td>
						</tr>
						<%
						}
						%>
					</tbody>
				</table>
				<%
				}	//������ ����
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