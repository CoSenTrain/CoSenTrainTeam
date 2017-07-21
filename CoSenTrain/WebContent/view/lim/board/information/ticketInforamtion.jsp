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
				<h1 style="padding: 30px 30px 0 30px;" class="tkting-method2">������
					����/��ȯ/�н�</h1>
				<span style="float: right; font-size: 12px; margin-right: 30px;">
					<a href="/web/view/container/container.jsp" class="fa fa-home"
					style="cursor: pointer; text-decoration: none; color: black;"></a>
					<i style="cursor: default;">&gt;</i> <a href=""
					style="cursor: pointer; text-decoration: none; color: black;">�̿�ȳ�</a>
					<i style="cursor: default;">&gt;</i> <a href="#"
					style="cursor: pointer; text-decoration: none; color: black;"
					class="tkting-method">�������̿�ȳ�</a> <i style="cursor: default;">&gt;</i>
					<a href="#"
					style="cursor: pointer; text-decoration: none; color: black;"
					class="tkting-method2">������ ����/��ȯ/�н�</a>
				</span> <br /> <br /> <br />

				<!--  start-->
				<div
					style="width: 940px; padding: 0 30px 30px 30px; height: 3000px; background-color: white;">
					<div style="width: 940px; height: 50px;">
						<div style="text-align: center;">
							<button class="buttonTab"
								onclick="modifyTab(this,event,'ticketbuy')" id="defaultOpen">������ ����/��ȯ/�н�</button>
							<button class="buttonTab"
								onclick="modifyTab(this,event,'selfticket')">�ڱ�߱ǽ�����</button>
							<button class="buttonTab"
								onclick="modifyTab(this,event,'present')">�����ϱ�</button>
							<button class="buttonTab"
								onclick="modifyTab(this,event,'delaytrain')">��������/��������</button>
							<button class="buttonTab"
								onclick="modifyTab(this,event,'feetable')">�������� �� �ð�ǥ
								</button>
							<button class="buttonTab"
								onclick="modifyTab(this,event,'salecoopon')">�������� �̿���
								</button>
							<button class="buttonTab"
								onclick="modifyTab(this,event,'traineticket')">�����̿� ��Ƽ��
								</button>
							<button class="buttonTab" onclick="modifyTab(this,event,'faq')">FAQ
								</button>
							<button class="buttonTab"
								onclick="modifyTab(this,event,'reqularticket')">���������
								</button>
							<button class="buttonTab"
								onclick="modifyTab(this,event,'cardinformation')">����ī�� �̿�ȳ�
								</button>
							<input type="hidden" id="changeMethod" name="changeMethod"
								value="ticketbuy" />
						</div>
					</div>

					<div id="ticketbuy" class="tab10">
						<div
							style="width: 900px; color: #666; height: 1050px; border: 1px solid lightgray; padding: 10px 30px 30px 5px; margin-top: 20px; margin-bottom: 20px;">
						
						 <h4 style="margin-top: 20px;">����ó</h4>
						  <ul style="margin-top: 15px;">
						   <li style="padding-left: 18px; word-break : keep-all;">Ȩ������, �ڼ�Ʈ����</li>
						   <li style="padding-left: 18px; word-break : keep-all;">CS��</li>
						   <li style="padding-left: 18px; word-break : keep-all;">������ �ڵ��߸ű�</li>
						   <li style="padding-left: 18px; word-break : keep-all;">�� (���뿪, ���뿪 ����)</li>
						  </ul>
						  	 <h4 style="margin-top: 20px;">���ԱⰣ</h4>
						  <ul style="margin-top: 15px;">
						   <li style="padding-left: 18px; word-break : keep-all;">������� 1������ 07:00���� ������� 20�������� (���� 5��������) ������ ������ �����մϴ�.</li>
						  </ul>
                         <h4 style="margin-top: 20px;">����/�߱�</h4>						  
						   <ul style="margin-top: 15px;">
						   <li style="padding-left: 18px; word-break : keep-all;">�ſ�ī��, ����Ʈ, ���ݰ�����ü(Ȩ�������� ����)�� �̿��Ͽ� ���� �� �� �ֽ��ϴ�.</li>
						   <li style="padding-left: 18px; word-break : keep-all;">�����ݾ��� 50,000�� �̻��̸� �ſ�ī�� �Һ� ������ �����մϴ�.</li>
						   <li style="padding-left: 18px; word-break : keep-all;">���� �� ����Ʈ��������, ȨƼ������ ���� �߱� �Ͻ� �� �ֽ��ϴ�.</li>
						  </ul>
						   <h4 style="margin-top: 20px;">��ȯ</h4>	
						     <ul style="margin-top: 15px;">
						   <li style="padding-left: 18px; word-break : keep-all;">�����ǿ� ǥ��� ��߽ð� �������� Ȩ������, SR�۾��ÿ��� �������� ��ȯ�Ͻ� �� �ֽ��ϴ�.</li>
						   <li style="padding-left: 18px; word-break : keep-all;">���� ��߽ð� ���Ŀ��� ������ ��ȯ�ϼž� �մϴ�. (��, ����Ʈ���������� ��� �۾����� ���� ���� ��� �� 5�� �̳��� ��ȯ �����մϴ�.)</li>
						   <li style="padding-left: 18px; word-break : keep-all;">�����ǿ� ǥ��� ������ �����ð� ���Ŀ��� ��ȯ �Ͻ� �� �����ϴ�.</li>
						   <li style="padding-left: 18px; word-break : keep-all;">������ �������� ��ȯ�ϴ� ��� ��ȯ������ ���� ��ȯ�����ᰡ �߻��մϴ�.</li>
						   <li style="padding-left: 18px; word-break : keep-all;">���/��ȯ ������ </li>
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
						 <th rowspan="2" colspan="3" scope="col">��ü</th>
						 <th rowspan="6" scope="col">�����</th>
						 <th rowspan="4" scope="col">�����</th>
						 </tr>
						 <tr>
						  <th style="border-left-style :solid;" scope="col">7�� ���� </th>
						  <th style="padding: 10px 0; text-align: center; font-size: 13px; line-height: 100%; border-width: 0 0 1px 1px; border-style: solid; border-color: #dbdbdb; background-color: #f8f8f8;">3�� ����</th>
						  <th style="padding: 10px 0; text-align: center; font-size: 13px; line-height: 100%; border-width: 0 0 1px 1px; border-style: solid; border-color: #dbdbdb; background-color: #f8f8f8;">2�� ����</th>
						  <th style="padding: 10px 0; text-align: center; font-size: 13px; line-height: 100%; border-width: 0 0 1px 1px; border-style: solid; border-color: #dbdbdb; background-color: #f8f8f8;">1�� ����</th>
						  <th style="padding: 10px 0; text-align: center; font-size: 13px; line-height: 100%; border-width: 0 0 1px 1px; border-style: solid; border-color: #dbdbdb; background-color: #f8f8f8;">
						  ���� ~ 
						  <br></br>
						  1�ð� ����
						  </th>
						  <th style="padding: 10px 0; text-align: center; font-size: 13px; line-height: 100%; border-width: 0 0 1px 1px; border-style: solid; border-color: #dbdbdb; background-color: #f8f8f8;">
						 1�ð� �����
						  <br></br>
						  ��߽ð���
						  </th>
						  <th style="padding: 10px 0; text-align: center; font-size: 13px; line-height: 100%; border-width: 0 0 1px 1px; border-style: solid; border-color: #dbdbdb; background-color: #f8f8f8;">5�� ����</th>
						  <th style="padding: 10px 0; text-align: center; font-size: 13px; line-height: 100%; border-width: 0 0 1px 1px; border-style: solid; border-color: #dbdbdb; background-color: #f8f8f8;">20�� ����</th>
						  <th style="padding: 10px 0; text-align: center; font-size: 13px; line-height: 100%; border-width: 0 0 1px 1px; border-style: solid; border-color: #dbdbdb; background-color: #f8f8f8;">60�� ����</th>
						  <th style="padding: 10px 0; text-align: center; font-size: 13px; line-height: 100%; border-width: 0 0 1px 1px; border-style: solid; border-color: #dbdbdb; background-color: #f8f8f8;">�����ð� ����</th>
						 </tr>
						 
						</thead>
						<tbody>
						<tr>
						<th style="border-left-style: none; text-align: center; padding: 10px 0; font-size: 13px; line-height: 100%; font-weight: normal;border-width: 0 0 1px 1px; border-style: solid; border-color: #dbdbdb; background-color: #f8f8f8; " rowspan="4" scope="row">�Ϲ�</th>
						<th style="border-left-style: none; text-align: center; padding: 10px 0; font-size: 13px; line-height: 100%; font-weight: normal;border-width: 0 0 1px 1px; border-style: solid; border-color: #dbdbdb; background-color: #f8f8f8; " rowspan="2" scope="row">���ͳ�</th>
						</tr>
						<tr>
						<th style="border-left-style: none; text-align: center; padding: 10px 0; font-size: 13px; line-height: 100%; font-weight: normal;border-width: 0 0 1px 1px; border-style: solid; border-color: #dbdbdb; background-color: #f8f8f8; " scope="row">��ȯ</th>
						<td style="border-left-style: none; text-align: center; padding: 10px 0; font-size: 13px; line-height: 100%; font-weight: normal;border-width: 0 0 1px 1px; border-style: solid; border-color: #dbdbdb; background-color: #f8f8f8; " colspan="4">����</td>
						<td style="border-left-style: none; text-align: center; padding: 10px 0; font-size: 13px; line-height: 100%; font-weight: normal;border-width: 0 0 1px 1px; border-style: solid; border-color: #dbdbdb; background-color: #f8f8f8; ">400��</td>
						<td style="border-left-style: none; text-align: center; padding: 10px 0; font-size: 13px; line-height: 100%; font-weight: normal;border-width: 0 0 1px 1px; border-style: solid; border-color: #dbdbdb; background-color: #f8f8f8; ">10%</td>
						<td style="border-left-style: none; text-align: center; padding: 10px 0; font-size: 13px; line-height: 100%; font-weight: normal;border-width: 0 0 1px 1px; border-style: solid; border-color: #dbdbdb; background-color: #f8f8f8; ">15%</td>
						<td style="border-left-style: none; text-align: center; padding: 10px 0; font-size: 13px; line-height: 100%; font-weight: normal;border-width: 0 0 1px 1px; border-style: solid; border-color: #dbdbdb; background-color: #f8f8f8; " colspan="3">��ȯ�Ұ�</td>
						</tr>
						<tr>
						  <th style="border-left-style: solid;" rowspan="2" scope="row">��â��</th>
						</tr>
						<tr>
						<th style="border-left-style: solid;" scope="row">��ȯ</th>
						<td colspan="3" style="padding: 10px 0; text-align: center; border-width: 0 0 1px 1px; border-style: solid; border-color: #dbdbdb;">400��</td>
						<td colspan="2" style="padding: 10px 0; text-align: center; border-width: 0 0 1px 1px; border-style: solid; border-color: #dbdbdb;">5%</td>
						<td style="padding: 10px 0; text-align: center; border-width: 0 0 1px 1px; border-style: solid; border-color: #dbdbdb;">10%</td>
						<td colspan="2" style="padding: 10px 0; text-align: center; border-width: 0 0 1px 1px; border-style: solid; border-color: #dbdbdb;">15%</td>
						<td style="padding: 10px 0; text-align: center; border-width: 0 0 1px 1px; border-style: solid; border-color: #dbdbdb;">40%</td>
						<td style="padding: 10px 0; text-align: center; border-width: 0 0 1px 1px; border-style: solid; border-color: #dbdbdb;">70%</td>
						
						</tr>
						<tr>
						  <th style="border-left-style: none; text-align: center; padding: 10px 0; font-size: 13px; line-height: 100%; font-weight: normal;border-width: 0 0 1px 1px; border-style: solid; border-color: #dbdbdb; background-color: #f8f8f8;  rowspan="4" scope="row">��ü</th>
						  <th style="border-left-style: none; text-align: center; padding: 10px 0; font-size: 13px; line-height: 100%; font-weight: normal;border-width: 0 0 1px 1px; border-style: solid; border-color: #dbdbdb; background-color: #f8f8f8;  rowspan="2" scope="row">���׳�</th>
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
	<!-- ���� �κ� -->


	<script type="text/javascript" src="/web/js/container/clock.js"
		charset="UTF-8"></script>

</body>

</html>
