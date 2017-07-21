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
					<div style="width: 940px; height: 100px;">
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
						
						
						</table>   	 -->
						   	
						   	
						</div>
					</div>
					
					
					
                    <div id="selfticket" class="tab10">
						<div
							style="width: 900px; color: #666; height: 1050px; border: 1px solid lightgray; padding: 10px 30px 30px 5px; margin-top: 20px; margin-bottom: 20px;">
						
						 <h4 style="margin-top: 20px;">����Ʈ��������</h4>
						  <ul style="margin-top: 15px;">
						   <li style="padding-left: 18px; word-break : keep-all;">SR ����Ʈ�� ���� ��SRT���ۿ��� �������� ������ �� �߱��� �������Դϴ�.</li>
						   <li style="padding-left: 18px; word-break : keep-all;">ĸ���� ����Ʈ���������� ��ȿ���� ���� �������̹Ƿ� ���������� ���ֵǾ� �ΰ������� ¡���մϴ�.</li>
						  </ul>
						  	 <h4 style="margin-top: 20px;">ȨƼ��(�ڰ��μ������)</h4>
						  <ul style="margin-top: 15px;">
						   <li style="padding-left: 18px; word-break : keep-all;">Ȩ���������� �������� ������ �� �����ͷ� ����Ͽ� �̿� �� �� �ִ� �������Դϴ�.</li>
						   <li style="padding-left: 18px; word-break : keep-all;">ȨƼ���� �����ǿ� �����ڸ��� ǥ���ϴ� ���� ���������� �����ڷ� ǥ��� ���� �̿��ϼž� �մϴ�.</li>
						   <li style="padding-left: 18px; word-break : keep-all;">�¼��� �����ϴ� ��� ������ �������� ȨƼ������ �߱� �Ͻ� �� �ֽ��ϴ�.(���������, ȸ��������, ��ü������, ���� ������, �������� �����ؾ� �ϴ� ������ ����)</li>
						   <li style="padding-left: 18px; word-break : keep-all;">ȨƼ���� �Ѽ��ϰų� �н��� ��� Ȩ������ �Ǵ� ��â������ ��߱��Ͻñ� �ٶ��ϴ�.</li>
						   <li style="padding-left: 18px; word-break : keep-all;">������ ������ �����ְų� ��ַ� ȨƼ���� �μ���� ���� ��� Ȩ���������� ��߱��Ͻñ� �ٶ��ϴ�.</li>
						  </ul>
						 
						
						</div>
					</div>
					<div id="present" class="tab10">
						<div
							style="width: 900px; color: #666; height: 1400px; border: 1px solid lightgray; padding: 10px 30px 30px 5px; margin-top: 20px; margin-bottom: 20px;">
						 <h4 style="margin-top: 20px;">���� �Ұ�</h4>
						  <ul style="margin-top: 15px;">
						   <li style="padding-left: 18px; word-break : keep-all;">�������� �����Ͽ� �ָ��ִ� �����̳� ���ο��� ������ �� �ִ� �����Դϴ�.</li>
						   <li style="padding-left: 18px; word-break : keep-all;">SR ȸ���� �����ϱⰡ �����մϴ�.</li>
						  </ul>
						  	 <h4 style="margin-top: 20px;">������ �����ϱ�</h4>
						  <ul style="margin-top: 15px;">
						   <li style="padding-left: 18px; word-break : keep-all;">�����ϱ�� Ȩ������ �� �۾��ÿ��� �̿� �Ͻ� �� �ֽ��ϴ�.</li>
						   <li style="padding-left: 18px; word-break : keep-all;">�����ϱ�� ������ ��� ������ �Ϸ��� �� �����ϸ�, ���������� �߱��� ���Ŀ��� �̿��Ͻ� �� �ֽ��ϴ�.</li>
						   <li style="padding-left: 18px; word-break : keep-all;">���� ������ �ݵ�� <b>�߱��ϱ�</b>�� �����ž� ������ ���������� ����Ͻ� �� �ֽ��ϴ�. </li>
						  </ul>
						 	 <h4 style="margin-top: 20px;">���� ���� �ȳ�</h4>
						 	   <ul style="margin-top: 15px;">
						   <li style="padding-left: 18px; word-break : keep-all;">SMS ���ڸ� ���� ������ �޴� ������ �����ȣ�� ���ڷ� �߼��� �帳�ϴ�.</li>
						  </ul>
						 	 <h4 style="margin-top: 20px;">�����ϱ� �̿�ȳ�</h4>
						 	 <br>
						 	 <br>
						   <img style="margin-top: 20px; padding-left: 200px; text-align: center; margin: 0 auto;" src="/web/img/lim/notice/board/csticket1.JPG"/>
						
						</div>
					</div>
					<div id="delaytrain" class="tab10">
						<div
							style="width: 900px; color: #666; height: 1050px; border: 1px solid lightgray; padding: 10px 30px 30px 5px; margin-top: 20px; margin-bottom: 20px;">
						 <h4 style="margin-top: 20px;">��������</h4>
						  <ul style="margin-top: 15px;">
						   <li style="padding-left: 18px; word-break : keep-all;">õ������ �̿� CS�� ��å������ CST�� 20�� �̻� ������ ��� �Һ��ں����ذ���ؿ� ���� �ݾ��� �����Ͽ� �帳�ϴ�.</li>
						   <li style="padding-left: 18px; word-break : keep-all;">Ư�ǿ���� ����ݾ׿� ���Ե��� �ʽ��ϴ�.</li>
						  </ul>
						  	 <h4 style="margin-top: 20px;">��������</h4>
						  <ul style="margin-top: 15px;">
						   <li style="padding-left: 18px; word-break : keep-all;">����, ���α���� ���, ����, �ҿ�, õ������ �� �Ұ��׷����� ������ ���������� �����Ǿ��� ��� �������� ���� ������ ���ӡ������ ��ȯ�Ͽ� �帳�ϴ�.</li>
						   <li style="padding-left: 18px; word-break : keep-all;">����������� ������ �����ϴ� ���, ���ӡ���� ������ ��ȯ�Ͽ� �帳�ϴ�.</li>
						   <li style="padding-left: 18px; word-break : keep-all;">��������, ���ΰ���, �ľ�, ���б� �� SR�� å�ӻ����� ���� ������ �����Ǿ��� ��� �����ǿ� ǥ�õ� �����ݾ��� ��ȯ�Ͽ� �帳�ϴ�. </li>
						  </ul>
						
						
						</div>
					</div>
					<div id="feetable" class="tab10">
						<div
							style="width: 900px; color: #666; height: 1050px; border: 1px solid lightgray; padding: 10px 30px 30px 5px; margin-top: 20px; margin-bottom: 20px;">
												 <h4 style="margin-top: 20px;">��������</h4>
												   <div style="padding: 50px 0; margin-top: 25px; font-weight: bold; text-align: center; border-width: 1px; border-style: solid; border-color: #dbdbdb; background-color: #f3f3f3;">�������� <a style="display:inline-block; width:110px; height:21px; padding-top: 9px; padding-left: 30px; margin-left: 10px; font-weight: normal; color:#fff; font-size: 12px; line-height: 12px; vertical-align: middle; background-color: gray;" href="#">PDF ���Ϻ���</a></div>
					  <div style="margin-top:15px; text-align: right;">
					  PDF�� ���÷��� Adobe Reader�� ��ġ�ϼž� �մϴ�.
					  </div>
												 <h4 style="margin-top: 20px;">�ð�ǥ</h4>
						  <div style="padding: 50px 0; margin-top: 25px; font-weight: bold; text-align: center; border-width: 1px; border-style: solid; border-color: #dbdbdb; background-color: #f3f3f3;">�ð�ǥ  <a style="display:inline-block; width:110px; height:21px; padding-top: 9px; padding-left: 30px; margin-left: 10px; font-weight: normal; color:#fff; font-size: 12px; line-height: 12px; vertical-align: middle; background-color: gray;" href="#">PDF ���Ϻ���</a></div>
					  <div style="margin-top:15px; text-align: right;">
					  PDF�� ���÷��� Adobe Reader�� ��ġ�ϼž� �մϴ�.
					  </div>
						</div>
					</div>
					<div id="salecoopon" class="tab10">
						<div
							style="width: 900px; color: #666; height: 1050px; border: 1px solid lightgray; padding: 10px 30px 30px 5px; margin-top: 20px; margin-bottom: 20px;">
					 <h4 style="margin-top: 20px;">�������� �̿�ȳ�</h4>
					   <ul style="margin-top: 15px;">
						   <li style="padding-left: 18px; word-break : keep-all;">�������������� �¼��±������� ���� �̿�ȳ� </li>
						  </ul>
												 <h4 style="margin-top: 20px;">����������ȸ</h4>
				  <ul style="margin-top: 15px;">
						   <li style="padding-left: 18px; word-break : keep-all;">Ȩ������ �α��� �� ���������� - �������� �޴����� �������� ������ ��ȸ �� �� �ֽ��ϴ�.</li>
						   <li style="padding-left: 18px; word-break : keep-all;">���������� ��ȿ�Ⱓ�� ���� �������� �������� ����˴ϴ�.</li>
						  </ul>
						  <h4 style="margin-top: 20px;">SMS�� ���۵� �������� �̿���</h4>
						   <ul style="margin-top: 15px;">
						   <li style="padding-left: 18px; word-break : keep-all;">�α��� > ���������� > �������� > ������ �ϴ��� ������� Ŭ�� > SMS�� ���۵� ������ȣ �� ��й�ȣ �Է� �� ���</li>
						  </ul>
						  <h4 style="margin-top: 20px;">������������ ������ ����</h4>
						    <ul style="margin-top: 15px;">
						   <li style="padding-left: 18px; word-break : keep-all;">- Ȩ������ �̿��� -</li>
						   <li style="padding-left: 18px; word-break : keep-all;">- SRT APP �̿��� -</li>
						  </ul>
						</div>
					</div>
					
					<div id="traineticket" class="tab10">
						<div
							style="width: 900px; color: #666; height: 1050px; border: 1px solid lightgray; padding: 10px 30px 30px 5px; margin-top: 20px; margin-bottom: 20px;">
						  <h4 style="margin-top: 20px;">�ΰ����� ¡������</h4>
						
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
						
							 <h4 style="margin-top: 20px;">SRT ��������� �̿�Ư�� �ȳ�</h4>
							 <ul style="margin-top: 15px;">
						   <li style="padding-left: 18px; word-break : keep-all;">1.<br>(�� �ð���)</br> ��������� ���� �� ������ ������ ��/�� ���� �Ǵ� 1�ð� �̳� ���࿭���� ���� ž�� ���</li>
						   <li style="padding-left: 18px; word-break : keep-all;">2.<br>(����� �ð���)</br> �ε����� ������ ���� ���������� ž������ ���� ��� �Ʒ��� ǥ�� ������ ž�����</li>
						  </ul>
						  
						   <h4 style="margin-top: 20px;">SRT ��������� � �⺻����</h4>
						   	 <ul style="margin-top: 15px;">
						   <li style="padding-left: 18px; word-break : keep-all;">�̿� ��� : �� �̿����� �� ������ ������ ������ ���� SRT���� ���� ����Ʈ�����������θ� �̿�</li>
						   <li style="padding-left: 18px; word-break : keep-all;">���� ���� : ���� �� ���信 ���� �߸ż� ����, 20~54�� (������ �ο��� �����Ͽ� ���� Ȯ�� �� ���� ȥ�� �ּ�ȭ)</li>
						   <li style="padding-left: 18px; word-break : keep-all;">�� �� �� : ��������� �̿밴�� �������� �δ� ��ȭ��� �ٺ� ������ �����Ͽ� Ÿ ��ӿ����� ����� ����(1������ 50%)���� ������ ����</li>
						   <li style="padding-left: 18px; word-break : keep-all;">��������� �Ⱓ �� Ư�� �̿� �Ұ�</li>
						   <li style="padding-left: 18px; word-break : keep-all;">����� : 2~3���� � �� ���� �м��� ���� �߸ż��� �� � ��� ����, ȸ�������� �߸ŵ� �ܰ������� ����</li>
						   <li style="padding-left: 18px; word-break : keep-all;">���Ӱ�� : ��ȿ�Ⱓ �� �����ݿ���(������ ����) �ϼ�(����ϼ�)�� 1�� 2ȸ�� ����� ���Ƚ���� �Ʒ� ǥ�� ���� ����� 1ȸ ������ ���� �ݾ����� ��</li>
						   <li style="padding-left: 18px; word-break : keep-all;">�̿���� Ȯ�� : ������� �ٺ�ȭ, ����ٹ��� ���� ���� ����Ͽ� �ָ� �� �����Ͽ��� ��� �����ϵ��� �</li>
						  </ul>
						    <h4 style="margin-top: 20px;">SRT ��������� �̿�ȭ��</h4>
						    ������ ���� �������� Ȯ�ι��</br>
						    SRT ��������� �߱�</br>
						    SRT ��������� Ȯ��</br>
						    SRT ��������� ��ȯ</br>
						    SRT ��������� ������</br>
						        <h4 style="margin-top: 20px;">�ΰ������� �޴� ���</h4>
						     <ul style="margin-top: 15px;">
						   <li style="padding-left: 18px; word-break : keep-all;">���� �� ȣ�� �ش��ϴ� ������� ö������� ��10���� ���Ͽ� �̿��� ������ ���� ���������� ���ؿ��Ӱ� ���Ƚ���� ���� �ݾ� �� ���ؿ��Ӱ� ���Ƚ���� ���� �ݾ��� 10�迡 �ش��ϴ� �ΰ������� �ջ��� �ݾ��� ����. </li>
						   <li style="padding-left: 18px; word-break : keep-all;">�ٸ� �̿뱸���� �ʰ��Ͽ� ����� ��쿡�� 0.5�迡 �ش��ϴ� �ΰ������� ����</li>
						  </ul>
						        <h4 style="margin-top: 20px;">��������� ��ȯ</h4>
						     <ul style="margin-top: 15px;">
						   <li style="padding-left: 18px; word-break : keep-all;">����������� ������ ������ ��������� ��ȿ�Ⱓ ���������� ����������� SRT �ۿ��� ��ȯ�ϸ� ������ ����</li>
						   <li style="padding-left: 18px; word-break : keep-all;">��������� �̿� ���� �Ŀ� ��ȯ�� û���ϴ� ��� ȸ��� ��ȿ�Ⱓ ������ ���� ������۾�� ��8���� ���� ���������� ���ؿ���(�¼�������)�� û�����ϱ����� ���Ƚ��(1�� 2ȸ)�� ���� �ݾ� �� ���������Ḧ ������ �ܾ��� ��ȯ</li>
						  </ul>
						          <h4 style="margin-top: 20px;">����������� �н�</h4>
						     <ul style="margin-top: 15px;">
						   <li style="padding-left: 18px; word-break : keep-all;">��������ǿ� ǥ�õ� ���������� ���� ��� �����ϴ� ��� ��������ǿ� ǥ�õ� �������� �̿��� ������ ���Ͽ� ������ ��۰���� ü��� ������ ���� ��� ��8���� ���� ���ؿ��� ��� ���� ����</li>
						   <li style="padding-left: 18px; word-break : keep-all;">�� ��1�׿��� �ұ��ϰ�, ��5���� ���� ��ȿ�Ⱓ�� ���� �ִ� ����������� �н��� ����� 1ȸ�� ���Ͽ� ����������� ������� û���� �� ����</li>
						   <li style="padding-left: 18px; word-break : keep-all;">ȸ��� ����������� ���� ������ Ȯ���� �� �ִ� ��쿡�� ���������Ḧ �ް� �н��� ��������ǰ� ������ ����������� ������ϰų� ��������� �߱�Ȯ�μ��� ����</li>
						  </ul>
						        <h4 style="margin-top: 20px;">��������� �̿� �� ��������</h4>
						     <ul style="margin-top: 15px;">
						   <li style="padding-left: 18px; word-break : keep-all;">����������� �̿��ϴ� ����� ������ ������ ��������ǿ� ǥ�õ� ������(�Ǵ� ��߿�)�� ������۾�� ��14���� ���� �ð��̻� ���� ������ ��� ȸ��� ��������� �������α��� ����</li>
						   <li style="padding-left: 18px; word-break : keep-all;">��������� �������α��� �������� ������������ ����� �� ������ ȸ��� ��������� ��������� �������� �������� ����</li>
						  </ul>
						</div>
					</div>
					<div id="cardinformation" class="tab10">
						<div
							style="width: 900px; color: #666; height: 1050px; border: 1px solid lightgray; padding: 10px 30px 30px 5px; margin-top: 20px; margin-bottom: 20px;">
						   <h4 style="margin-top: 20px;">"���ϸ���" ��?</h4>
						     <ul style="margin-top: 15px;">
						   <li style="padding-left: 18px; word-break : keep-all;">Rail(Railway + Mileage) �װ��� ���ϸ��� ���信�� ����, ö���� ���ϸ����� ��SRT ����ī�塯 ���� ����Ʈ ��Ī</li>
						   <li style="padding-left: 18px; word-break : keep-all;">������ ���ϸ����� SRT ������ ������ ���� ��밡��</li>
						  </ul>
						     <h4 style="margin-top: 20px;">���ϸ��� ��ȸ</h4>
						       <ul style="margin-top: 15px;">
						   <li style="padding-left: 18px; word-break : keep-all;">���1. ����ī�� Ȩ������(http://www.shinhancard.com) ����Ʈ ��ȸ Ȯ��</li>
						   <li style="padding-left: 18px; word-break : keep-all;">���2. ����� ����Ʈ ����ī�� ���ø����̼� ����Ʈ ��ȸ Ȯ��</li>
						   <li style="padding-left: 18px; word-break : keep-all;">���3. ����ī�� �����͸�(1544-7000) ���� Ȯ��</li>
						  </ul>
						     <h4 style="margin-top: 20px;">���ϸ��� ���</h4>
						      <ul style="margin-top: 15px;">
						   <li style="padding-left: 18px; word-break : keep-all;">Ȩ������</li>
						   <li style="padding-left: 18px; word-break : keep-all;">�����</li>
						  </ul>
						  <div style="text-align: center; margin-top: 20px;">����ī�� ��û�ϱ�</div>
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
