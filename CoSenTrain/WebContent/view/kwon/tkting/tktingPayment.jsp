<%@page import="bean.kwon.Discount"%>
<%@page import="util.kwon.Obj"%>
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
String runningNo = (request.getAttribute("runningNo") == null ? "-1" : String.valueOf(request.getAttribute("runningNo")).trim());
int fare = (Obj.isStrNull(String.valueOf(request.getAttribute("fare"))) ? -1 : Integer.valueOf(String.valueOf(request.getAttribute("fare"))));
String getSelectedSeatNames = String.valueOf(request.getAttribute("getSelectedSeatNames"));
getSelectedSeatNames = (Obj.isStrNull(getSelectedSeatNames) ? "" : getSelectedSeatNames);
Object getSelectedSeatAsListObj = request.getAttribute("getSelectedSeatAsList");
List<String> getSelectedSeatAsList = new ArrayList<String>();
if(getSelectedSeatAsListObj instanceof List) {
	getSelectedSeatAsList = (List<String>) getSelectedSeatAsListObj;
}
Object discountListObj = request.getAttribute("discountList");
List<Discount> discountList = new ArrayList<Discount>();
if(discountListObj instanceof List) {
	discountList = (List<Discount>) discountListObj;
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
	<link href="/web/css/kwon/tkting/tktingPayment.css" rel="stylesheet" type="text/css">
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

<div class="payment-wrapper">
	<div class="payment-wrapper-center">
		<br />
		<h1 style="padding: 30px 30px 0 30px;" class="tkting-method">결제 하기</h1>
		<span style="float:right;font-size:12px;margin-right:30px;">
			<a href="/web/view/container/container.jsp" class="fa fa-home" style="cursor:pointer;text-decoration:none;color:black;"></a>
			<i style="cursor:default;">&gt;</i>
			<a href="/web/view/kwon/tkting/kwonTkting.jsp" style="cursor:pointer;text-decoration:none;color:black;">승차권예약</a>
			<i style="cursor:default;">&gt;</i>
			<a href="#" style="cursor:pointer;text-decoration:none;color:black;">결제 하기</a>
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
				<h2>선택하신 좌석명 : <%=getSelectedSeatNames%></h2>
				<table>
					<colgroup>
						<col width="95px"/>
						<col width="95px"/>
						<col width="95px"/>
						<col width="95px"/>
						<col width="170px"/>
						<col width="170px"/>
						<col width="50px"/>
						<col />
					</colgroup>
					<tr bgcolor="f3f3f3">
						<th>열차 종류</th>
						<th>열차 번호</th>
						<th>출발 역</th>
						<th>도착 역</th>
						<th>출발 시간</th>
						<th>도착 시간</th>
						<th>인원</th>
						<th>운임 요금</th>
					</tr>
					<tr>
						<td align="center"><%=tType.toUpperCase()%></td>
						<td align="center"><%=trainNo%></td>
						<td align="center"><%=srcName%></td>
						<td align="center"><%=destName%></td>
						<td align="center"><%=dT%></td>
						<td align="center"><%=aT%></td>
						<td align="center"><%=personCnt%></td>
						<td align="right"><b><%=fare * Integer.valueOf(personCnt)%></b>&nbsp;</td>
					</tr>
				</table>
				<form  action="/web/view/kwon/tkting/tktingTicketProcess.jsp" name="paramChainFrm" method="post">
					<table>
						<colgroup>
							<col width="130px" />
							<col width="130px" />
							<col width="130px" />
							<col width="130px" />
							<col width="130px" />
							<col />
						</colgroup>
						<tr bgcolor="f3f3f3">
							<th>열차 번호</th>
							<th>객실 등급</th>
							<th>좌석 정보</th>
							<th>가용 포인트</th>
							<th>할인 금액</th>
							<th>운임 추가 할인 해택</th>
						</tr>
						<%
						for(int i = 0; i < getSelectedSeatAsList.size(); i++) {
						%>
						<tr>
							<td align="center"><%=trainNo%></td>
							<td align="center">일반실</td>
							<td align="center">
								<%=trainNo%>호차 <%=getSelectedSeatAsList.get(i)%>석
								<input type="hidden" id="seatFullName" name="seatFullName" value="<%=trainNo%>호차 <%=getSelectedSeatAsList.get(i)%>석" />
							</td>
							<td align="right"><b>0</b>&nbsp;</td>
							<td align="right"><b id="discountTarget">0</b>&nbsp;</td>
							<td align="center">
								<select name="discountNo" onchange="setDiscount(this)">
									<%
									for(int j = 0; j < discountList.size(); j++) {
									%>
									<option value="<%=discountList.get(j).getDiscountNo()%>" title="<%=discountList.get(j).getDiscount()%>" <%=(j == 0 ? "selected='selected'" : "")%>>&nbsp;<%=discountList.get(j).getCondition()%></option>
									<%
									}
									%>
								</select>
							</td>
						</tr>
						<%
						}
						%>
					</table>
					<!--
					//seatNo	//already
					//userNo
					//runningNo	//already
					//paymentNo
					//discountNo//already
					-->
					<input type="hidden" id="runningNo" name="runningNo" value="<%=runningNo%>" />
					<input type="hidden" id="personCnt" name="personCnt" value="<%=personCnt%>" />
					<input type="hidden" id="selectingSeats" name="selectingSeats" value="<%=selectingSeats%>" />
					<input type="hidden" id="discount" name="discount" value="0" />
					<input type="hidden" id="fare" name="fare" value="<%=fare%>" />
					<%
					if(request.getSession().getAttribute("user") == null) {	//User Insert
					%>
					<br />
					&nbsp;* 인적사항 기입 (서비스에 도움이 됩니다.)
					
					<table>
						<colgroup>
							<col />
							<col />
							<col />
							<col />
						</colgroup>
						<tr bgcolor="f3f3f3">
							<th>성명</th>
							<th>티켓 비밀번호</th>
							<th>이메일</th>
							<th>연락처</th>
						</tr>
						<tr>
							<td align="center"><input type="text" name="name" required="required" /></td>
							<td align="center"><input type="text" name="pwTicketing" required="required" placeholder="5자리 숫자!" onkeyup="(function(o) {if(o.value.length > 5) o.value = o.value.substring(0, 5);})(this)" /></td>
							<td align="center">
								<input type="email" name="email" required="required" />
								<input type="checkbox" name="emailRecivable" /> 수신여부
							</td>
							<td align="center">
								<input type="tel" name="phone" required="required" />
								<input type="hidden" name="userType" value="nonuser" />
							</td>
						</tr>
					</table>
					<%
					}
					%>
					<!-- others -->
					<input type="hidden" id="tType" name="tType" value="<%=tType%>" />
					<input type="hidden" id="srcName" name="srcName" value="<%=srcName%>" />
					<input type="hidden" id="destName" name="destName" value="<%=destName%>" />
					<input type="hidden" id="dT" name="dT" value="<%=dT%>" />
					<input type="hidden" id="aT" name="aT" value="<%=aT%>" />
					<input type="hidden" id="trainNo" name="trainNo" value="<%=trainNo%>" />
					<input type="hidden" id="carNo" name="carNo" value="<%=carNo%>" />
				</form>
				
				<div>
					<button onclick="paypay()">결제 하기</button>
					<button onclick="(function() {location.href='/web/view/kwon/tkting/cancelingProcess.jsp?runningNo=<%=runningNo%>&selectingSeats=<%=selectingSeats%>';})()">취소 하기</button>
				</div>
			</div>
		</div>
	</div>
</div>



<!-- LOGIN  End   -->
		<jsp:include page="/view/container/containerBottom.jsp" flush="false" />
		
	</div>
	
	<script type="text/javascript"  src="/web/js/container/clock.js" charset="UTF-8"></script>
<script>
function setDiscount(o) {
	var discountTarget = document.getElementById('discountTarget');
	var discount = document.getElementById('discount');
	<%
	for(int j = 0; j < discountList.size(); j++) {
	%>
	if(o.value == <%=discountList.get(j).getDiscountNo()%>) {
		discountTarget.innerHTML = <%=discountList.get(j).getDiscount()%>;
		discount.value = <%=discountList.get(j).getDiscount()%>;
	}	//JS if
	<%
	}	//JAVA for
	%>
}
function paypay() {
	if(paramChainFrm.name.value.trim() == ''
	|| paramChainFrm.pwTicketing.value.trim() == ''
	|| paramChainFrm.email.value.trim() == ''
	|| paramChainFrm.phone.value.trim() == '' && <%=request.getSession().getAttribute("user") == null%>) {
		alert('인적 사항 기입!');
	} else if(paramChainFrm.pwTicketing.value.length != 5 && <%=request.getSession().getAttribute("user") == null%>) {
		alert('티켓 비밀번호는 5자!!');
	} else {
		paramChainFrm.submit();
	}
}
</script>
<!-- 	
	<script type="text/javascript"  src="/web/js/kwon/login/login.js" charset="UTF-8"></script>
	<script type="text/javascript"  src="/web/js/main/main.js" charset="UTF-8"></script>
	<script type="text/javascript"  src="/web/js/kwon/tktingSchedule.js" charset="UTF-8"></script>
	<script type="text/javascript"  src="/web/js/modal/modalSelectStation.js" charset="UTF-8"></script>
	<script type="text/javascript"  src="/web/js/modal/modalSelectCalendar.js" charset="UTF-8"></script>
-->


</body>
</html>