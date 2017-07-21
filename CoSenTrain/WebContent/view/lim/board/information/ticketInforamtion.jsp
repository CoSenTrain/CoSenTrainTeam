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
					<div style="width: 940px; height: 50px;">
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
						<table style="width: 100%; margin-top: 15px; border-top-width: 2px; border-top-style: solid; border-top-color: #5e5e5e;">
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
						
						
						</table>   	
						   	
						   	
						</div>
					</div>
                    <div id="selfticket" class="tab10">
						<div
							style="width: 900px; color: #666; height: 1050px; border: 1px solid lightgray; padding: 10px 30px 30px 5px; margin-top: 20px; margin-bottom: 20px;">
						</div>
					</div>
					<div id="present" class="tab10">
						<div
							style="width: 900px; color: #666; height: 1050px; border: 1px solid lightgray; padding: 10px 30px 30px 5px; margin-top: 20px; margin-bottom: 20px;">
						</div>
					</div>
					<div id="delaytrain" class="tab10">
						<div
							style="width: 900px; color: #666; height: 1050px; border: 1px solid lightgray; padding: 10px 30px 30px 5px; margin-top: 20px; margin-bottom: 20px;">
						</div>
					</div>
					<div id="feetable" class="tab10">
						<div
							style="width: 900px; color: #666; height: 1050px; border: 1px solid lightgray; padding: 10px 30px 30px 5px; margin-top: 20px; margin-bottom: 20px;">
						</div>
					</div>
					<div id="salecoopon" class="tab10">
						<div
							style="width: 900px; color: #666; height: 1050px; border: 1px solid lightgray; padding: 10px 30px 30px 5px; margin-top: 20px; margin-bottom: 20px;">
						</div>
					</div>
					
					<div id="traineticket" class="tab10">
						<div
							style="width: 900px; color: #666; height: 1050px; border: 1px solid lightgray; padding: 10px 30px 30px 5px; margin-top: 20px; margin-bottom: 20px;">
						</div>
					</div>
						<div id="faq" class="tab10">
						<div
							style="width: 900px; color: #666; height: 1050px; border: 1px solid lightgray; padding: 10px 30px 30px 5px; margin-top: 20px; margin-bottom: 20px;">
						</div>
					</div>  
					<div id="reqularticket" class="tab10">
						<div
							style="width: 900px; color: #666; height: 1050px; border: 1px solid lightgray; padding: 10px 30px 30px 5px; margin-top: 20px; margin-bottom: 20px;">
						</div>
					</div>
					<div id="cardinformation" class="tab10">
						<div
							style="width: 900px; color: #666; height: 1050px; border: 1px solid lightgray; padding: 10px 30px 30px 5px; margin-top: 20px; margin-bottom: 20px;">
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
