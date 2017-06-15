<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%
request.setCharacterEncoding("EUC-KR");
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
				<button class="tablinks" onclick="openCity(this, event, 'oneTk')" id="defaultOpen">�Ϲݽ�����</button>
				<button class="tablinks" onclick="openCity(this, event, 'manyTk')">��ü������</button>
			</div>
			<form action="/web/view/kwon/tkting/tktingScheduleProcess.jsp" method="post" name="frm" style="box-shadow: 2px 2px 2px #888888;" >
				<input type="hidden" id="tktingMethod" name="tktingMethod" value="oneTk" />
				<div class="tabcontent-common">
						<input id="srcStationName" type="text" value="����" name="src" style="border:1px solid gray;" size="10px" />
						<a href="#" class="fa fa-map-marker sel-form-station sel-form-icon" ></a>
						<i class="fa fa-exchange" style="padding: 0 20px;" onclick="(function(){var temp;var src=document.getElementById('srcStationName');var dest=document.getElementById('destStationName');temp=src.value;src.value=dest.value;dest.value=temp;})()"></i>
						<input id="destStationName" type="text" value="�λ�" name="dest" style="border:1px solid gray;" size="10px" />
						<a href="#" class="fa fa-map-marker sel-form-station sel-form-icon" ></a>
						<input type="text" class="yyyymmdd" id="chosenDate" name="chosenDate" style="margin-left: 50px;" size="10px" />
						<a href="#" class="fa fa-calendar sel-form-calendar sel-form-icon"></a>
						<select id="timeAfter" name="timeAfter"style="margin-left: 20px;">
							<option value="00" label="00�� ����" />
							<option value="02" label="02�� ����" />
							<option value="04" label="04�� ����" />
							<option value="06" label="06�� ����" />
							<option value="08" label="08�� ����" />
							<option value="10" label="10�� ����" />
							<option value="12" label="12�� ����" />
							<option value="14" label="14�� ����" />
							<option value="16" label="16�� ����" />
							<option value="18" label="18�� ����" />
							<option value="20" label="20�� ����" />
							<option value="22" label="22�� ����" />
						</select>
						
				</div>	<!-- tabcontent-common -->
				
				
				<div id="oneTk" class="tabcontent">
					<table>
						<tr>
							<td width="100px">. �������</td>
							<td>
								<input type="hidden" id="hiddenTripType" name="tripType" value="oneway" />
								<input type="radio" name="tripTypeForOne" value="oneway" onchange="(function(){document.getElementById('hiddenTripType').value='oneway';})()" checked /> ����&nbsp;&nbsp;&nbsp;
								<input type="radio" name="tripTypeForOne" value="transfer" onchange="(function(){document.getElementById('hiddenTripType').value='transfer';})()"  /> ȯ��&nbsp;&nbsp;&nbsp;
								<input type="radio" name="tripTypeForOne" value="round" onchange="(function(){document.getElementById('hiddenTripType').value='round';})()"  /> �պ�
							</td>
						</tr>
						<tr>
							<td>. �ο�����</td>
							<td>
								<select id="adultCnt" name="adultCntForOne"  style="width:130px;">
									<option value="0">� 0��</option>
									<option value="1" selected="selected">� 1��</option>
									<option value="2">� 2��</option>
									<option value="3">� 3��</option>
									<option value="4">� 4��</option>
									<option value="5">� 5��</option>
									<option value="6">� 6��</option>
									<option value="7">� 7��</option>
									<option value="8">� 8��</option>
									<option value="9">� 9��</option>
								</select>
								<select id="childCnt" name="childCntForOne" style="width:130px;">
									<option value="0" selected="selected">�� 4~12�� 0��</option>
									<option value="1">�� 4~12�� 1��</option>
									<option value="2">�� 4~12�� 2��</option>
									<option value="3">�� 4~12�� 3��</option>
									<option value="4">�� 4~12�� 4��</option>
									<option value="5">�� 4~12�� 5��</option>
									<option value="6">�� 4~12�� 6��</option>
									<option value="7">�� 4~12�� 7��</option>
									<option value="8">�� 4~12�� 8��</option>
									<option value="9">�� 4~12�� 9��</option>
								</select>
								<select id="seniorCnt" name="seniorCntForOne" style="width:130px;">
									<option value="0" selected="selected">�� 65�� �̻� 0��</option>
									<option value="1">�� 65�� �̻� 1��</option>
									<option value="2">�� 65�� �̻� 2��</option>
									<option value="3">�� 65�� �̻� 3��</option>
									<option value="4">�� 65�� �̻� 4��</option>
									<option value="5">�� 65�� �̻� 5��</option>
									<option value="6">�� 65�� �̻� 6��</option>
									<option value="7">�� 65�� �̻� 7��</option>
									<option value="8">�� 65�� �̻� 8��</option>
									<option value="9">�� 65�� �̻� 9��</option>
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
								<input type="radio" name="tripTypeForMany" value="oneway" checked /> ����&nbsp;&nbsp;&nbsp;
								<input type="radio" name="tripTypeForMany" value="transfer" /> ȯ��
							</td>
						</tr>
						<tr>
							<td width="100px">. �ο�����</td>
							<td>
								� &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="adultCntForMany" size="1" value="1" style="padding: 0;width:25px;height:17px; border: 1px solid #BBB;text-align:right;"/>��, 
								 &nbsp;&nbsp;�� 4~12�� &nbsp;&nbsp;&nbsp;<input type="text" name="childCntForMany" size="1" value="0" style="padding: 0;width:25px;height:17px; border: 1px solid #BBB;text-align:right;" />��, 
								 &nbsp;&nbsp;�� 65�� �̻� <input type="text" name="seniorCntForMany" size="1" value="0" style="padding: 0;width:25px;height:17px; border: 1px solid #BBB;text-align:right;" />��
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
					&nbsp;��ȸ�ϱ�
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