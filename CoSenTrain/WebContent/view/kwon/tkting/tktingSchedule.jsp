<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%
request.setCharacterEncoding("EUC-KR");
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
				<button class="tablinks" onclick="openCity(this, event, 'oneTk')" id="defaultOpen">일반승차권</button>
				<button class="tablinks" onclick="openCity(this, event, 'manyTk')">단체승차권</button>
			</div>
			<form action="/web/view/kwon/tkting/tktingScheduleProcess.jsp" method="post" name="frm" style="box-shadow: 2px 2px 2px #888888;" >
				<input type="hidden" id="tktingMethod" name="tktingMethod" value="oneTk" />
				<div class="tabcontent-common">
						<input id="srcStationName" type="text" value="수서" name="src" style="border:1px solid gray;" size="10px" />
						<a href="#" class="fa fa-map-marker sel-form-station sel-form-icon" ></a>
						<i class="fa fa-exchange" style="padding: 0 20px;" onclick="(function(){var temp;var src=document.getElementById('srcStationName');var dest=document.getElementById('destStationName');temp=src.value;src.value=dest.value;dest.value=temp;})()"></i>
						<input id="destStationName" type="text" value="부산" name="dest" style="border:1px solid gray;" size="10px" />
						<a href="#" class="fa fa-map-marker sel-form-station sel-form-icon" ></a>
						<input type="text" class="yyyymmdd" id="chosenDate" name="chosenDate" style="margin-left: 50px;" size="10px" />
						<a href="#" class="fa fa-calendar sel-form-calendar sel-form-icon"></a>
						<select id="timeAfter" name="timeAfter"style="margin-left: 20px;">
							<option value="00" label="00시 이후" />
							<option value="02" label="02시 이후" />
							<option value="04" label="04시 이후" />
							<option value="06" label="06시 이후" />
							<option value="08" label="08시 이후" />
							<option value="10" label="10시 이후" />
							<option value="12" label="12시 이후" />
							<option value="14" label="14시 이후" />
							<option value="16" label="16시 이후" />
							<option value="18" label="18시 이후" />
							<option value="20" label="20시 이후" />
							<option value="22" label="22시 이후" />
						</select>
						
				</div>	<!-- tabcontent-common -->
				
				
				<div id="oneTk" class="tabcontent">
					<table>
						<tr>
							<td width="100px">. 여정경로</td>
							<td>
								<input type="hidden" id="hiddenTripType" name="tripType" value="oneway" />
								<input type="radio" name="tripTypeForOne" value="oneway" onchange="(function(){document.getElementById('hiddenTripType').value='oneway';})()" checked /> 직통&nbsp;&nbsp;&nbsp;
								<input type="radio" name="tripTypeForOne" value="transfer" onchange="(function(){document.getElementById('hiddenTripType').value='transfer';})()"  /> 환승&nbsp;&nbsp;&nbsp;
								<input type="radio" name="tripTypeForOne" value="round" onchange="(function(){document.getElementById('hiddenTripType').value='round';})()"  /> 왕복
							</td>
						</tr>
						<tr>
							<td>. 인원정보</td>
							<td>
								<select id="adultCnt" name="adultCntForOne"  style="width:130px;">
									<option value="0">어른 0명</option>
									<option value="1" selected="selected">어른 1명</option>
									<option value="2">어른 2명</option>
									<option value="3">어른 3명</option>
									<option value="4">어른 4명</option>
									<option value="5">어른 5명</option>
									<option value="6">어른 6명</option>
									<option value="7">어른 7명</option>
									<option value="8">어른 8명</option>
									<option value="9">어른 9명</option>
								</select>
								<select id="childCnt" name="childCntForOne" style="width:130px;">
									<option value="0" selected="selected">만 4~12세 0명</option>
									<option value="1">만 4~12세 1명</option>
									<option value="2">만 4~12세 2명</option>
									<option value="3">만 4~12세 3명</option>
									<option value="4">만 4~12세 4명</option>
									<option value="5">만 4~12세 5명</option>
									<option value="6">만 4~12세 6명</option>
									<option value="7">만 4~12세 7명</option>
									<option value="8">만 4~12세 8명</option>
									<option value="9">만 4~12세 9명</option>
								</select>
								<select id="seniorCnt" name="seniorCntForOne" style="width:130px;">
									<option value="0" selected="selected">만 65세 이상 0명</option>
									<option value="1">만 65세 이상 1명</option>
									<option value="2">만 65세 이상 2명</option>
									<option value="3">만 65세 이상 3명</option>
									<option value="4">만 65세 이상 4명</option>
									<option value="5">만 65세 이상 5명</option>
									<option value="6">만 65세 이상 6명</option>
									<option value="7">만 65세 이상 7명</option>
									<option value="8">만 65세 이상 8명</option>
									<option value="9">만 65세 이상 9명</option>
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
								<input type="radio" name="tripTypeForMany" value="oneway" checked /> 직통&nbsp;&nbsp;&nbsp;
								<input type="radio" name="tripTypeForMany" value="transfer" /> 환승
							</td>
						</tr>
						<tr>
							<td width="100px">. 인원정보</td>
							<td>
								어른 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="adultCntForMany" size="1" value="1" style="padding: 0;width:25px;height:17px; border: 1px solid #BBB;text-align:right;"/>명, 
								 &nbsp;&nbsp;만 4~12세 &nbsp;&nbsp;&nbsp;<input type="text" name="childCntForMany" size="1" value="0" style="padding: 0;width:25px;height:17px; border: 1px solid #BBB;text-align:right;" />명, 
								 &nbsp;&nbsp;만 65세 이상 <input type="text" name="seniorCntForMany" size="1" value="0" style="padding: 0;width:25px;height:17px; border: 1px solid #BBB;text-align:right;" />명
							</td>
						</tr>
					</table>
				</div>
				
			</form>
			<br />
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
			<br />
			
			
		</div>
		
		
		<jsp:include page="/view/modal/selStationModal.jsp" flush="false" />
		<jsp:include page="/view/modal/selCalendarModal.jsp" flush="false" />
	</div>
</div>