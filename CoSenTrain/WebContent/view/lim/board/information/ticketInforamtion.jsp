<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR" />
<title>Hello</title>
<link rel="shortcut icon" href="">
<link href="/web/css/container/container.css" rel="stylesheet"
	type="text/css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link href="/web/css/container/fa.css" rel="stylesheet" type="text/css">
<link href="/web/css/container/dropdown.css" rel="stylesheet"
	type="text/css">
<link href="/web/css/container/standardColors.css" rel="stylesheet"
	type="text/css">

<style>
input {
	margin: 0;
	padding: 10px;
	border: 0;
	font-size: 15px;
}

.login-wrapper {
	background-image: url("/web/img/bg/bg_container.jpg");
	background-repeat: repeat;
	background-size: inherit;
	background-position: center;
	background-color: #64053C;
}

.login-wrapper-center {
	width: 1000px;
	margin: 0 auto;
	background-color: snow;
}

.buttonTab:hover {
	background-color: crimson;
	color: white;
}

.tab5 {
	width: 940px;
	height: 700px;
}

.buttonTab {
	hover: pink;
	display: inline-block;
	padding: 15px 0;
	font-size: 15px;
	font-weight: bold;
	text-align: center;
	border-width: 1px 1px 1px 0;
	border-style: solid;
	border-color: #ccc;
	background-color: snow;
	color: gray;
	width: 180px;
}
</style>
<script type="text/javascript">
	function start() {
		document.getElementById("defaultOpen").click();

	}
	function modifyTab(o, evt, cityName) {
		//openCity(o, evt, cityName)  

		document.getElementById("changeMethod").value = cityName;

		var tktingMethods = document.getElementsByClassName("tkting-method2");
		for (var i = 0; i < tktingMethods.length; i++) {
			tktingMethods[i].innerText = o.innerText;
		}

		var i, tabcontent, tablinks;
		tabcontent = document.getElementsByClassName("tab10");
		for (i = 0; i < tabcontent.length; i++) {
			tabcontent[i].style.display = "none";
		}
		tablinks = document.getElementsByClassName("buttonTab");
		for (i = 0; i < tablinks.length; i++) {
			tablinks[i].className = tablinks[i].className
					.replace(" active", "");
		}
		document.getElementById(cityName).style.display = "block";
		evt.currentTarget.className += " active";

	}
</script>
</head>
<body onload="start()">
	<div class="container">


		<jsp:include page="/view/container/containerTop.jsp" flush="false" />
		<!-- LOGIN  Start -->
		<div class="login-wrapper">
			<div class="login-wrapper-center">
				<br />
				<h1 style="padding: 30px 30px 0 30px;" class="tkting-method2">승차권
					구입/반환/분실</h1>
				<span style="float: right; font-size: 12px; margin-right: 30px;">
					<a href="/web/view/container/container.jsp" class="fa fa-home"
					style="cursor: pointer; text-decoration: none; color: black;"></a>
					<i style="cursor: default;">&gt;</i> <a href=""
					style="cursor: pointer; text-decoration: none; color: black;">이용안내</a>
					<i style="cursor: default;">&gt;</i> <a href="#"
					style="cursor: pointer; text-decoration: none; color: black;"
					class="tkting-method">승차권이용안내</a> <i style="cursor: default;">&gt;</i>
					<a href="#"
					style="cursor: pointer; text-decoration: none; color: black;"
					class="tkting-method2">승차권 구입/반환/분실</a>
				</span> <br /> <br /> <br />

				<!--  start-->
				<div
					style="width: 940px; padding: 0 30px 30px 30px; height: 3000px; background-color: white;">
					<div style="width: 940px; height: 100px;">
						<div style="text-align: center;">
							<button class="buttonTab"
								onclick="modifyTab(this,event,'ticketbuy')" id="defaultOpen">승차권 구입/반환/분실</button>
							<button class="buttonTab"
								onclick="modifyTab(this,event,'selfticket')">자기발권승차권</button>
							<button class="buttonTab"
								onclick="modifyTab(this,event,'present')">선물하기</button>
							<button class="buttonTab"
								onclick="modifyTab(this,event,'delaytrain')">열차지연/운행중지</button>
							<button class="buttonTab"
								onclick="modifyTab(this,event,'feetable')">열차운임 및 시간표
								</button>
							<button class="buttonTab"
								onclick="modifyTab(this,event,'salecoopon')">할인쿠폰 이용방법
								</button>
							<button class="buttonTab"
								onclick="modifyTab(this,event,'traineticket')">열차이용 에티켓
								</button>
							<button class="buttonTab" onclick="modifyTab(this,event,'faq')">FAQ
								</button>
							<button class="buttonTab"
								onclick="modifyTab(this,event,'reqularticket')">정기승차권
								</button>
							<button class="buttonTab"
								onclick="modifyTab(this,event,'cardinformation')">제휴카드 이용안내
								</button>
							<input type="hidden" id="changeMethod" name="changeMethod"
								value="ticketbuy" />
						</div>
					</div>

					<div id="ticketbuy" class="tab10">
						<div
							style="width: 900px; color: #666; height: 1050px; border: 1px solid lightgray; padding: 10px 30px 30px 5px; margin-top: 20px; margin-bottom: 20px;">
						
						 <h4 style="margin-top: 20px;">구입처</h4>
						  <ul style="margin-top: 15px;">
						   <li style="padding-left: 18px; word-break : keep-all;">홈페이지, 코센트레인</li>
						   <li style="padding-left: 18px; word-break : keep-all;">CS앱</li>
						   <li style="padding-left: 18px; word-break : keep-all;">승차권 자동발매기</li>
						   <li style="padding-left: 18px; word-break : keep-all;">역 (전용역, 공용역 포함)</li>
						  </ul>
						  	 <h4 style="margin-top: 20px;">구입기간</h4>
						  <ul style="margin-top: 15px;">
						   <li style="padding-left: 18px; word-break : keep-all;">열차출발 1개월전 07:00부터 열차출발 20분전까지 (앱은 5분전까지) 승차권 구입이 가능합니다.</li>
						  </ul>
                         <h4 style="margin-top: 20px;">결제/발권</h4>						  
						   <ul style="margin-top: 15px;">
						   <li style="padding-left: 18px; word-break : keep-all;">신용카드, 포인트, 현금계좌이체(홈페이지에 한함)를 이용하여 결제 할 수 있습니다.</li>
						   <li style="padding-left: 18px; word-break : keep-all;">결제금액이 50,000원 이상이면 신용카드 할부 결제가 가능합니다.</li>
						   <li style="padding-left: 18px; word-break : keep-all;">결제 후 스마트폰승차권, 홈티켓으로 직접 발권 하실 수 있습니다.</li>
						  </ul>
						   <h4 style="margin-top: 20px;">반환</h4>	
						     <ul style="margin-top: 15px;">
						   <li style="padding-left: 18px; word-break : keep-all;">승차권에 표기된 출발시각 이전까지 홈페이지, SR앱어플에서 승차권을 반환하실 수 있습니다.</li>
						   <li style="padding-left: 18px; word-break : keep-all;">열차 출발시각 이후에는 역에서 반환하셔야 합니다. (단, 스마트폰승차권의 경우 앱어플을 통해 열차 출발 후 5분 이내에 반환 가능합니다.)</li>
						   <li style="padding-left: 18px; word-break : keep-all;">승차권에 표기된 도착역 도착시각 이후에는 반환 하실 수 없습니다.</li>
						   <li style="padding-left: 18px; word-break : keep-all;">구입한 승차권을 반환하는 경우 반환시점에 따른 반환수수료가 발생합니다.</li>
						   <li style="padding-left: 18px; word-break : keep-all;">취소/반환 수수료 </li>
						  </ul>
						<!-- <table style="width: 100%; margin-top: 15px; border-top-width: 2px; border-top-style: solid; border-top-color: #5e5e5e;">
						<colgroup>
						<col width="50px"/>
						<col width="50px"/>
						<col width="50px"/>
						<col width="75px"/>
						<col width="75px"/>
						<col width="75px"/>
						<col width="75px"/>
						<col width="80px"/>
						<col width="100px"/>
						<col width="80px"/>
						<col width="80px"/>
						<col width="80px"/>
						<col />
						</colgroup>
						<thead>
						 <tr>
						 <th rowspan="2" colspan="3" scope="col">매체</th>
						 <th rowspan="6" scope="col">출발전</th>
						 <th rowspan="4" scope="col">출발후</th>
						 </tr>
						 <tr>
						  <th style="border-left-style :solid;" scope="col">7일 이전 </th>
						  <th style="padding: 10px 0; text-align: center; font-size: 13px; line-height: 100%; border-width: 0 0 1px 1px; border-style: solid; border-color: #dbdbdb; background-color: #f8f8f8;">3일 이전</th>
						  <th style="padding: 10px 0; text-align: center; font-size: 13px; line-height: 100%; border-width: 0 0 1px 1px; border-style: solid; border-color: #dbdbdb; background-color: #f8f8f8;">2일 이전</th>
						  <th style="padding: 10px 0; text-align: center; font-size: 13px; line-height: 100%; border-width: 0 0 1px 1px; border-style: solid; border-color: #dbdbdb; background-color: #f8f8f8;">1일 이전</th>
						  <th style="padding: 10px 0; text-align: center; font-size: 13px; line-height: 100%; border-width: 0 0 1px 1px; border-style: solid; border-color: #dbdbdb; background-color: #f8f8f8;">
						  당일 ~ 
						  <br></br>
						  1시간 이전
						  </th>
						  <th style="padding: 10px 0; text-align: center; font-size: 13px; line-height: 100%; border-width: 0 0 1px 1px; border-style: solid; border-color: #dbdbdb; background-color: #f8f8f8;">
						 1시간 경과후
						  <br></br>
						  출발시각전
						  </th>
						  <th style="padding: 10px 0; text-align: center; font-size: 13px; line-height: 100%; border-width: 0 0 1px 1px; border-style: solid; border-color: #dbdbdb; background-color: #f8f8f8;">5분 이전</th>
						  <th style="padding: 10px 0; text-align: center; font-size: 13px; line-height: 100%; border-width: 0 0 1px 1px; border-style: solid; border-color: #dbdbdb; background-color: #f8f8f8;">20분 이전</th>
						  <th style="padding: 10px 0; text-align: center; font-size: 13px; line-height: 100%; border-width: 0 0 1px 1px; border-style: solid; border-color: #dbdbdb; background-color: #f8f8f8;">60분 이전</th>
						  <th style="padding: 10px 0; text-align: center; font-size: 13px; line-height: 100%; border-width: 0 0 1px 1px; border-style: solid; border-color: #dbdbdb; background-color: #f8f8f8;">도착시간 이전</th>
						 </tr>
						 
						</thead>
						<tbody>
						<tr>
						<th style="border-left-style: none; text-align: center; padding: 10px 0; font-size: 13px; line-height: 100%; font-weight: normal;border-width: 0 0 1px 1px; border-style: solid; border-color: #dbdbdb; background-color: #f8f8f8; " rowspan="4" scope="row">일반</th>
						<th style="border-left-style: none; text-align: center; padding: 10px 0; font-size: 13px; line-height: 100%; font-weight: normal;border-width: 0 0 1px 1px; border-style: solid; border-color: #dbdbdb; background-color: #f8f8f8; " rowspan="2" scope="row">인터넷</th>
						</tr>
						<tr>
						<th style="border-left-style: none; text-align: center; padding: 10px 0; font-size: 13px; line-height: 100%; font-weight: normal;border-width: 0 0 1px 1px; border-style: solid; border-color: #dbdbdb; background-color: #f8f8f8; " scope="row">반환</th>
						<td style="border-left-style: none; text-align: center; padding: 10px 0; font-size: 13px; line-height: 100%; font-weight: normal;border-width: 0 0 1px 1px; border-style: solid; border-color: #dbdbdb; background-color: #f8f8f8; " colspan="4">무료</td>
						<td style="border-left-style: none; text-align: center; padding: 10px 0; font-size: 13px; line-height: 100%; font-weight: normal;border-width: 0 0 1px 1px; border-style: solid; border-color: #dbdbdb; background-color: #f8f8f8; ">400원</td>
						<td style="border-left-style: none; text-align: center; padding: 10px 0; font-size: 13px; line-height: 100%; font-weight: normal;border-width: 0 0 1px 1px; border-style: solid; border-color: #dbdbdb; background-color: #f8f8f8; ">10%</td>
						<td style="border-left-style: none; text-align: center; padding: 10px 0; font-size: 13px; line-height: 100%; font-weight: normal;border-width: 0 0 1px 1px; border-style: solid; border-color: #dbdbdb; background-color: #f8f8f8; ">15%</td>
						<td style="border-left-style: none; text-align: center; padding: 10px 0; font-size: 13px; line-height: 100%; font-weight: normal;border-width: 0 0 1px 1px; border-style: solid; border-color: #dbdbdb; background-color: #f8f8f8; " colspan="3">반환불가</td>
						</tr>
						<tr>
						  <th style="border-left-style: solid;" rowspan="2" scope="row">역창구</th>
						</tr>
						<tr>
						<th style="border-left-style: solid;" scope="row">반환</th>
						<td colspan="3" style="padding: 10px 0; text-align: center; border-width: 0 0 1px 1px; border-style: solid; border-color: #dbdbdb;">400원</td>
						<td colspan="2" style="padding: 10px 0; text-align: center; border-width: 0 0 1px 1px; border-style: solid; border-color: #dbdbdb;">5%</td>
						<td style="padding: 10px 0; text-align: center; border-width: 0 0 1px 1px; border-style: solid; border-color: #dbdbdb;">10%</td>
						<td colspan="2" style="padding: 10px 0; text-align: center; border-width: 0 0 1px 1px; border-style: solid; border-color: #dbdbdb;">15%</td>
						<td style="padding: 10px 0; text-align: center; border-width: 0 0 1px 1px; border-style: solid; border-color: #dbdbdb;">40%</td>
						<td style="padding: 10px 0; text-align: center; border-width: 0 0 1px 1px; border-style: solid; border-color: #dbdbdb;">70%</td>
						
						</tr>
						<tr>
						  <th style="border-left-style: none; text-align: center; padding: 10px 0; font-size: 13px; line-height: 100%; font-weight: normal;border-width: 0 0 1px 1px; border-style: solid; border-color: #dbdbdb; background-color: #f8f8f8;  rowspan="4" scope="row">단체</th>
						  <th style="border-left-style: none; text-align: center; padding: 10px 0; font-size: 13px; line-height: 100%; font-weight: normal;border-width: 0 0 1px 1px; border-style: solid; border-color: #dbdbdb; background-color: #f8f8f8;  rowspan="2" scope="row">인테넷</th>
						</tr>
						<tr>
						 <th></th>
						
						</tr>
						
						
						</tbody>
						
						
						</table>   	 -->
						   	
						   	
						</div>
					</div>
					
					
					
                    <div id="selfticket" class="tab10">
						<div
							style="width: 900px; color: #666; height: 1050px; border: 1px solid lightgray; padding: 10px 30px 30px 5px; margin-top: 20px; margin-bottom: 20px;">
						
						 <h4 style="margin-top: 20px;">스마트폰승차권</h4>
						  <ul style="margin-top: 15px;">
						   <li style="padding-left: 18px; word-break : keep-all;">SR 스마트폰 어플 “SRT”앱에서 승차권을 구입한 후 발권한 승차권입니다.</li>
						   <li style="padding-left: 18px; word-break : keep-all;">캡쳐한 스마트폰승차권은 유효하지 않은 승차권이므로 부정승차로 간주되어 부가운임을 징수합니다.</li>
						  </ul>
						  	 <h4 style="margin-top: 20px;">홈티켓(자가인쇄승차권)</h4>
						  <ul style="margin-top: 15px;">
						   <li style="padding-left: 18px; word-break : keep-all;">홈페이지에서 승차권을 구입한 후 프린터로 출력하여 이용 할 수 있는 승차권입니다.</li>
						   <li style="padding-left: 18px; word-break : keep-all;">홈티켓은 승차권에 승차자명을 표기하는 기명식 승차권으로 승차자로 표기된 고객이 이용하셔야 합니다.</li>
						   <li style="padding-left: 18px; word-break : keep-all;">좌석을 지정하는 모든 열차의 승차권을 홈티켓으로 발권 하실 수 있습니다.(정기승차권, 회수승차권, 단체승차권, 각종 할인증, 무임증을 제출해야 하는 승차권 제외)</li>
						   <li style="padding-left: 18px; word-break : keep-all;">홈티켓을 훼손하거나 분실한 경우 홈페이지 또는 역창구에서 재발권하시기 바랍니다.</li>
						   <li style="padding-left: 18px; word-break : keep-all;">프린터 전원이 꺼져있거나 장애로 홈티켓이 인쇄되지 않은 경우 홈페이지에서 재발권하시기 바랍니다.</li>
						  </ul>
						 
						
						</div>
					</div>
					<div id="present" class="tab10">
						<div
							style="width: 900px; color: #666; height: 1400px; border: 1px solid lightgray; padding: 10px 30px 30px 5px; margin-top: 20px; margin-bottom: 20px;">
						 <h4 style="margin-top: 20px;">서비스 소개</h4>
						  <ul style="margin-top: 15px;">
						   <li style="padding-left: 18px; word-break : keep-all;">승차권을 구입하여 멀리있는 가족이나 지인에게 선물할 수 있는 서비스입니다.</li>
						   <li style="padding-left: 18px; word-break : keep-all;">SR 회원만 선물하기가 가능합니다.</li>
						  </ul>
						  	 <h4 style="margin-top: 20px;">승차권 선물하기</h4>
						  <ul style="margin-top: 15px;">
						   <li style="padding-left: 18px; word-break : keep-all;">선물하기는 홈페이지 및 앱어플에서 이용 하실 수 있습니다.</li>
						   <li style="padding-left: 18px; word-break : keep-all;">선물하기는 예약의 경우 결제를 완료한 후 가능하며, 승차권으로 발권한 이후에도 이용하실 수 있습니다.</li>
						   <li style="padding-left: 18px; word-break : keep-all;">받은 선물은 반드시 <b>발권하기</b>를 누르셔야 정당한 승차권으로 사용하실 수 있습니다. </li>
						  </ul>
						 	 <h4 style="margin-top: 20px;">선물 수령 안내</h4>
						 	   <ul style="margin-top: 15px;">
						   <li style="padding-left: 18px; word-break : keep-all;">SMS 문자를 통해 선물을 받는 고객에게 예약번호를 문자로 발송해 드립니다.</li>
						  </ul>
						 	 <h4 style="margin-top: 20px;">선물하기 이용안내</h4>
						 	 <br>
						 	 <br>
						   <img style="margin-top: 20px; padding-left: 200px; text-align: center; margin: 0 auto;" src="/web/img/lim/notice/board/csticket1.JPG"/>
						
						</div>
					</div>
					<div id="delaytrain" class="tab10">
						<div
							style="width: 900px; color: #666; height: 1050px; border: 1px solid lightgray; padding: 10px 30px 30px 5px; margin-top: 20px; margin-bottom: 20px;">
						 <h4 style="margin-top: 20px;">열차지연</h4>
						  <ul style="margin-top: 15px;">
						   <li style="padding-left: 18px; word-break : keep-all;">천재지변 이외 CS의 귀책사유로 CST가 20분 이상 지연된 경우 소비자분쟁해결기준에 정한 금액을 보상하여 드립니다.</li>
						   <li style="padding-left: 18px; word-break : keep-all;">특실요금은 보상금액에 포함되지 않습니다.</li>
						  </ul>
						  	 <h4 style="margin-top: 20px;">운행중지</h4>
						  <ul style="margin-top: 15px;">
						   <li style="padding-left: 18px; word-break : keep-all;">법령, 정부기관의 명령, 전쟁, 소요, 천재지변 등 불가항력적인 사유로 열차운행이 중지되었을 경우 승차하지 않은 구간의 운임·요금을 반환하여 드립니다.</li>
						   <li style="padding-left: 18px; word-break : keep-all;">여행시작전에 여행을 포기하는 경우, 운임·요금 전액을 반환하여 드립니다.</li>
						   <li style="padding-left: 18px; word-break : keep-all;">열차고장, 선로고장, 파업, 노사분규 등 SR의 책임사유로 열차 운행이 중지되었을 경우 승차권에 표시된 영수금액을 반환하여 드립니다. </li>
						  </ul>
						
						
						</div>
					</div>
					<div id="feetable" class="tab10">
						<div
							style="width: 900px; color: #666; height: 1050px; border: 1px solid lightgray; padding: 10px 30px 30px 5px; margin-top: 20px; margin-bottom: 20px;">
												 <h4 style="margin-top: 20px;">열차운임</h4>
												   <div style="padding: 50px 0; margin-top: 25px; font-weight: bold; text-align: center; border-width: 1px; border-style: solid; border-color: #dbdbdb; background-color: #f3f3f3;">열차운임 <a style="display:inline-block; width:110px; height:21px; padding-top: 9px; padding-left: 30px; margin-left: 10px; font-weight: normal; color:#fff; font-size: 12px; line-height: 12px; vertical-align: middle; background-color: gray;" href="#">PDF 파일보기</a></div>
					  <div style="margin-top:15px; text-align: right;">
					  PDF를 보시려면 Adobe Reader를 설치하셔야 합니다.
					  </div>
												 <h4 style="margin-top: 20px;">시간표</h4>
						  <div style="padding: 50px 0; margin-top: 25px; font-weight: bold; text-align: center; border-width: 1px; border-style: solid; border-color: #dbdbdb; background-color: #f3f3f3;">시간표  <a style="display:inline-block; width:110px; height:21px; padding-top: 9px; padding-left: 30px; margin-left: 10px; font-weight: normal; color:#fff; font-size: 12px; line-height: 12px; vertical-align: middle; background-color: gray;" href="#">PDF 파일보기</a></div>
					  <div style="margin-top:15px; text-align: right;">
					  PDF를 보시려면 Adobe Reader를 설치하셔야 합니다.
					  </div>
						</div>
					</div>
					<div id="salecoopon" class="tab10">
						<div
							style="width: 900px; color: #666; height: 1050px; border: 1px solid lightgray; padding: 10px 30px 30px 5px; margin-top: 20px; margin-bottom: 20px;">
					 <h4 style="margin-top: 20px;">할인쿠폰 이용안내</h4>
					   <ul style="margin-top: 15px;">
						   <li style="padding-left: 18px; word-break : keep-all;">운임할인쿠폰과 좌석승급쿠폰에 대한 이용안내 </li>
						  </ul>
												 <h4 style="margin-top: 20px;">할인쿠폰조회</h4>
				  <ul style="margin-top: 15px;">
						   <li style="padding-left: 18px; word-break : keep-all;">홈페이지 로그인 후 마이페이지 - 할인쿠폰 메뉴에서 할인쿠폰 내역을 조회 할 수 있습니다.</li>
						   <li style="padding-left: 18px; word-break : keep-all;">할인쿠폰의 유효기간은 열차 승차일을 기준으로 적용됩니다.</li>
						  </ul>
						  <h4 style="margin-top: 20px;">SMS로 전송된 할인쿠폰 이용방법</h4>
						   <ul style="margin-top: 15px;">
						   <li style="padding-left: 18px; word-break : keep-all;">로그인 > 마이페이지 > 할인쿠폰 > 페이지 하단의 쿠폰등록 클릭 > SMS로 전송된 쿠폰번호 및 비밀번호 입력 후 사용</li>
						  </ul>
						  <h4 style="margin-top: 20px;">할인쿠폰으로 승차권 구입</h4>
						    <ul style="margin-top: 15px;">
						   <li style="padding-left: 18px; word-break : keep-all;">- 홈페이지 이용방법 -</li>
						   <li style="padding-left: 18px; word-break : keep-all;">- SRT APP 이용방법 -</li>
						  </ul>
						</div>
					</div>
					
					<div id="traineticket" class="tab10">
						<div
							style="width: 900px; color: #666; height: 1050px; border: 1px solid lightgray; padding: 10px 30px 30px 5px; margin-top: 20px; margin-bottom: 20px;">
						  <h4 style="margin-top: 20px;">부가운임 징수기준</h4>
						
						</div>
					</div>
						<div id="faq" class="tab10">
						<div
							style="width: 900px; color: #666; height: 1050px; border: 1px solid lightgray; padding: 10px 30px 30px 5px; margin-top: 20px; margin-bottom: 20px;">
						 <h4 style="margin-top: 20px;">faq</h4>
						</div>
					</div>  
					<div id="reqularticket" class="tab10">
						<div
							style="width: 900px; color: #666; height: 1050px; border: 1px solid lightgray; padding: 10px 30px 30px 5px; margin-top: 20px; margin-bottom: 20px;">
						
							 <h4 style="margin-top: 20px;">SRT 정기승차권 이용특례 안내</h4>
							 <ul style="margin-top: 15px;">
						   <li style="padding-left: 18px; word-break : keep-all;">1.<br>(전 시간대)</br> 정기승차권 구매 시 지정한 열차의 전/후 열차 또는 1시간 이내 운행열차에 한해 탑승 허용</li>
						   <li style="padding-left: 18px; word-break : keep-all;">2.<br>(출퇴근 시간대)</br> 부득이한 사유로 인해 지정열차를 탑승하지 못한 경우 아래의 표시 열차는 탑승허용</li>
						  </ul>
						  
						   <h4 style="margin-top: 20px;">SRT 정기승차권 운영 기본방향</h4>
						   	 <ul style="margin-top: 15px;">
						   <li style="padding-left: 18px; word-break : keep-all;">이용 방법 : 고객 이용편의 및 승차권 유통비용 절감을 위해 SRT앱을 통한 스마트폰승차권으로만 이용</li>
						   <li style="padding-left: 18px; word-break : keep-all;">수요 관리 : 열차 당 수요에 따라 발매수 제한, 20~54매 (열차별 인원을 제한하여 안전 확보 및 차내 혼잡 최소화)</li>
						   <li style="padding-left: 18px; word-break : keep-all;">할 인 율 : 정기승차권 이용객의 경제적인 부담 완화라는 근본 취지를 감안하여 타 고속열차와 비슷한 수준(1개월권 50%)으로 할인율 적용</li>
						   <li style="padding-left: 18px; word-break : keep-all;">명절대수송 기간 및 특실 이용 불가</li>
						   <li style="padding-left: 18px; word-break : keep-all;">운영조정 : 2~3개월 운영 후 추이 분석을 통해 발매수량 및 운영 방안 조정, 회수승차권 발매도 단계적으로 추진</li>
						   <li style="padding-left: 18px; word-break : keep-all;">운임계산 : 유효기간 중 월～금요일(공휴일 제외) 일수(사용일수)와 1일 2회로 계산한 사용횟수에 아래 표와 같이 계산한 1회 운임을 곱한 금액으로 함</li>
						   <li style="padding-left: 18px; word-break : keep-all;">이용요일 확대 : 출퇴근의 다변화, 교대근무자 증가 등을 고려하여 주말 및 공휴일에도 사용 가능하도록 운영</li>
						  </ul>
						    <h4 style="margin-top: 20px;">SRT 정기승차권 이용화면</h4>
						    매진시 구매 가능일자 확인방법</br>
						    SRT 정기승차권 발권</br>
						    SRT 정기승차권 확인</br>
						    SRT 정기승차권 반환</br>
						    SRT 정기승차권 영수증</br>
						        <h4 style="margin-top: 20px;">부가운임을 받는 경우</h4>
						     <ul style="margin-top: 15px;">
						   <li style="padding-left: 18px; word-break : keep-all;">다음 각 호에 해당하는 사람에게 철도사업법 제10조에 의하여 이용한 열차에 따른 승차구간의 기준운임과 사용횟수를 곱한 금액 및 기준운임과 사용횟수를 곱한 금액의 10배에 해당하는 부가운임을 합산한 금액을 수수. </li>
						   <li style="padding-left: 18px; word-break : keep-all;">다만 이용구간을 초과하여 사용한 경우에는 0.5배에 해당하는 부가운임을 수수</li>
						  </ul>
						        <h4 style="margin-top: 20px;">정기승차권 반환</h4>
						     <ul style="margin-top: 15px;">
						   <li style="padding-left: 18px; word-break : keep-all;">정기승차권을 구입한 여객은 정기승차권 유효기간 시작일전에 정기승차권을 SRT 앱에서 반환하면 수수료 없음</li>
						   <li style="padding-left: 18px; word-break : keep-all;">정기승차권 이용 개시 후에 반환을 청구하는 경우 회사는 유효기간 시작일 부터 여객운송약관 제8조에 정한 승차구간의 기준운임(좌석미지정)과 청구당일까지의 사용횟수(1일 2회)를 곱한 금액 및 최저수수료를 공제한 잔액을 반환</li>
						  </ul>
						          <h4 style="margin-top: 20px;">정기승차권의 분실</h4>
						     <ul style="margin-top: 15px;">
						   <li style="padding-left: 18px; word-break : keep-all;">정기승차권에 표시된 승차구간을 지나 계속 여행하는 경우 정기승차권에 표시된 승차구간 이외의 구간에 대하여 새로이 운송계약이 체결된 것으로 보고 약관 제8조에 정한 기준운임 요금 별도 수수</li>
						   <li style="padding-left: 18px; word-break : keep-all;">위 제1항에도 불구하고, 제5조에 정한 유효기간이 남아 있는 정기승차권을 분실한 사람은 1회에 한하여 정기승차권의 재발행을 청구할 수 있음</li>
						   <li style="padding-left: 18px; word-break : keep-all;">회사는 정기승차권의 발행 내역을 확인할 수 있는 경우에는 최저수수료를 받고 분실한 정기승차권과 동일한 정기승차권을 재발행하거나 정기승차권 발급확인서를 발행</li>
						  </ul>
						        <h4 style="margin-top: 20px;">정기승차권 이용 중 열차지연</h4>
						     <ul style="margin-top: 15px;">
						   <li style="padding-left: 18px; word-break : keep-all;">정기승차권을 이용하는 사람이 승차한 열차가 정기승차권에 표시된 도착역(또는 출발역)에 여객운송약관 제14조에 정한 시간이상 지연 도착한 경우 회사는 정기승차권 지연할인권을 발행</li>
						   <li style="padding-left: 18px; word-break : keep-all;">정기승차권 지연할인권은 열차운임 할인쿠폰으로 사용할 수 있으며 회사는 정기승차권 지연배상을 현금으로 지급하지 않음</li>
						  </ul>
						</div>
					</div>
					<div id="cardinformation" class="tab10">
						<div
							style="width: 900px; color: #666; height: 1050px; border: 1px solid lightgray; padding: 10px 30px 30px 5px; margin-top: 20px; margin-bottom: 20px;">
						   <h4 style="margin-top: 20px;">"레일리지" 란?</h4>
						     <ul style="margin-top: 15px;">
						   <li style="padding-left: 18px; word-break : keep-all;">Rail(Railway + Mileage) 항공사 마일리지 개념에서 착안, 철도형 마일리지인 ‘SRT 제휴카드’ 전용 포인트 명칭</li>
						   <li style="padding-left: 18px; word-break : keep-all;">적립된 레일리지는 SRT 승차권 결제시 에만 사용가능</li>
						  </ul>
						     <h4 style="margin-top: 20px;">레일리지 조회</h4>
						       <ul style="margin-top: 15px;">
						   <li style="padding-left: 18px; word-break : keep-all;">방법1. 신한카드 홈페이지(http://www.shinhancard.com) 포인트 조회 확인</li>
						   <li style="padding-left: 18px; word-break : keep-all;">방법2. 모바일 스마트 신한카드 어플리케이션 포인트 조회 확인</li>
						   <li style="padding-left: 18px; word-break : keep-all;">방법3. 신한카드 고객센터를(1544-7000) 통해 확인</li>
						  </ul>
						     <h4 style="margin-top: 20px;">레일리지 사용</h4>
						      <ul style="margin-top: 15px;">
						   <li style="padding-left: 18px; word-break : keep-all;">홈페이지</li>
						   <li style="padding-left: 18px; word-break : keep-all;">모바일</li>
						  </ul>
						  <div style="text-align: center; margin-top: 20px;">제휴카드 신청하기</div>
						</div>
					</div>
				



				</div>









				<!-- end -->


			</div>
		</div>

		<!-- LOGIN  End   -->
	</div>
	<jsp:include page="/view/container/containerBottom.jsp" flush="false" />
	<!-- 수정 부분 -->


	<script type="text/javascript" src="/web/js/container/clock.js"
		charset="UTF-8"></script>

</body>

</html>
