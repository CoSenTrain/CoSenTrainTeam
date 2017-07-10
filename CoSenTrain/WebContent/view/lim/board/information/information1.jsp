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
hover : pink;
display: inline-block;
padding: 15px 0;
font-size: 15px;
font-weight: bold;
text-align: center;
border-width: 1px 1px 1px 0;
border-style: solid;
border-color: #ccc;
background-color: snow;
color:gray;

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

	var i,
		tabcontent,
		tablinks;
	tabcontent = document.getElementsByClassName("tab5");
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
				<h1 style="padding: 30px 30px 0 30px;" class="tkting-method">�̸��Ϲ��ܼ����ź�/���۱���å</h1>
				<span style="float: right; font-size: 12px; margin-right: 30px;">
					<a href="/web/view/container/container.jsp" class="fa fa-home"
					style="cursor: pointer; text-decoration: none; color: black;"></a>
					<i style="cursor: default;">&gt;</i> <a href=""
					style="cursor: pointer; text-decoration: none; color: black;">SR�ҽ�</a>
					<i style="cursor: default;">&gt;</i> <a href="#"
					style="cursor: pointer; text-decoration: none; color: black;"
					class="tkting-method">�ȳ�����</a> <i style="cursor: default;">&gt;</i>
					<a href="#"
					style="cursor: pointer; text-decoration: none; color: black;"
					class="tkting-method2">����������</a>
				</span> <br /> <br /> <br />

				<!--  start-->
				<div style="width: 940px; padding: 0 30px 30px 30px; height: 3000px; background-color: white;">
					<div style="width: 940px; height: 50px;">
						<div style="text-align: center;">
							<button class="buttonTab"
								onclick="modifyTab(this,event,'service')" id="defaultOpen">����������</button>
							<button class="buttonTab" onclick="modifyTab(this,event,'terms')">������۾��/�μӾ��</button>
							<button class="buttonTab" onclick="modifyTab(this,event,'email')">�̸��Ϲ��ܼ����ź�/���۱���å</button>
							<button class="buttonTab" onclick="modifyTab(this,event,'fee')">�Կ�����/���������</button>
							<button class="buttonTab"
								onclick="modifyTab(this,event,'notice')">��������ó����� ���ħ</button>
							<input type="hidden" id="changeMethod" name="changeMethod"
								value="service" />
						</div>
					</div>

					<div id="service" class="tab5">
						<div style="width: 900px; color: #666; height: 1050px; 
					border: 1px solid lightgray; 
							padding: 10px 30px 30px 5px; margin-top: 20px; margin-bottom: 20px;">
					 <img alt="" src="/web/img/lim/notice/info/info1.JPG" 
					 style="height:581px; margin-top: 25px; font-size: 0px; line-height: 0;"></img>
					<br>
					<h4 style="margin-top: 25px; margin-bottom: 15px; font-size: 18px; line-height: 19px; color: #8ff0349;">���� ���� ����</h4>
					<table style="border-spacing: 0; font-family: 'ng','�������','����','Dotum','Droid','Snas','AppleGothic'; line-height: 180%; font-size: 14px; color:#666;">
					<colgroup>
					<col width="150px">
					<col width="750px">
					</colgroup>
					<tr><th style="padding: 10px 0; padding-left:10px; font-size: 13px; line-height: 100%; border-width: 0 1px 1px 0; border-style: solid; border-color: #dbdbdb; background-color: #f8f8f8;">�׸�</th><th style="padding 10px 0; padding-left:10px; font-size: 13px; line-height: 100%; border-width: 0 1px 1px 0; border-style: solid; border-color: #dbdbdb; background-color: #f8f8f8;">�ֿ��������</th></tr>
					<tr><th style="padding:10px 0; padding-left:10px; font-size:13px; line-height: 100%; border-width: 0 1px 1px 0; border-style: solid; border-color: #dbdbdb;">������</th><td style="padding:10px 0; padding-left:10px; font-size:13px; line-height: 100%; border-width: 0 1px 1px 0; border-style: solid; border-color: #dbdbdb;">���վ����ɻ� �� 1ȸ, �������Ʒ� ��2ȸ</td></tr>
					<tr><th style="padding:10px 0; padding-left:10px; font-size:13px; line-height: 100%; border-width: 0 1px 1px 0; border-style: solid; border-color: #dbdbdb;">���ü�</th><td style="padding:10px 0; padding-left:10px; font-size:13px; line-height: 100%; border-width: 0 1px 1px 0; border-style: solid; border-color: #dbdbdb;">SRT 5�� �̻� ���� �ʵ��� ����</td></tr>
					<tr><th style="padding:10px 0; padding-left:10px; font-size:13px; line-height: 100%; border-width: 0 1px 1px 0; border-style: solid; border-color: #dbdbdb;">�ŷڼ�</th><td style="padding:10px 0; padding-left:10px; font-size:13px; line-height: 100%; border-width: 0 1px 1px 0; border-style: solid; border-color: #dbdbdb;">���⿭�� 100% ����</td></tr>
					<tr><th style="padding:10px 0; padding-left:10px; font-size:13px; line-height: 100%; border-width: 0 1px 1px 0; border-style: solid; border-color: #dbdbdb;">��ǥ���ð�</th><td style="padding:10px 0; padding-left:10px; font-size:13px; line-height: 100%; border-width: 0 1px 1px 0; border-style: solid; border-color: #dbdbdb;">3�� �̳� ����</td></tr>
					<tr><th style="padding:10px 0; padding-left:10px; font-size:13px; line-height: 100%; border-width: 0 1px 1px 0; border-style: solid; border-color: #dbdbdb;">���������� ����</th><td style="padding:10px 0; padding-left:10px; font-size:13px; line-height: 100%; border-width: 0 1px 1px 0; border-style: solid; border-color: #dbdbdb;">SRT 20�� �̻� ���� �� ������ �ݾ��� ���� �帲</td></tr>
					<tr><th style="padding:10px 0; padding-left:10px; font-size:13px; line-height: 100%; border-width: 0 1px 1px 0; border-style: solid; border-color: #dbdbdb;">���ǰ�ó��</th><td style="padding:10px 0; padding-left:10px; font-size:13px; line-height: 100%; border-width: 0 1px 1px 0; border-style: solid; border-color: #dbdbdb;">���ͳ� ��ȭ�� 1�� �̳�, ���� �ѽ��� 6�� �̳� �亯</td></tr>
					<tr><th style="padding:10px 0; padding-left:10px; font-size:13px; line-height: 100%; border-width: 0 1px 1px 0; border-style: solid; border-color: #dbdbdb;">�ǰ߼���</th><td style="padding:10px 0; padding-left:10px; font-size:13px; line-height: 100%; border-width: 0 1px 1px 0; border-style: solid; border-color: #dbdbdb;">www.srail.co.kr<br>���� �Ҹ�>�Ǹ� ���� �� �ǰ�����<br>��ȭ : 1800-1472<br>�ѽ�: 02)6484-4093 <br>����:�����Ư���� ������ ������� 132(���ﵿ)�ѵ���ǰ���� 8�� �ֿ뱳������</td></tr>
										
					</table>
					
					
					</div>
					</div>
				
					
					
					<div id="terms" class="tab5">
						<div style="width: 900px; color: #666; height: 500px; 
												padding: 10px 30px 30px 5px; margin-top: 20px; margin-bottom: 20px;">
					  <div style="padding: 50px 0; margin-top: 25px; font-weight: bold; text-align: center; border-width: 1px; border-style: solid; border-color: #dbdbdb; background-color: #f3f3f3;">������۾�� �� �μӾ��  <a style="display:inline-block; width:110px; height:21px; padding-top: 9px; padding-left: 30px; margin-left: 10px; font-weight: normal; color:#fff; font-size: 12px; line-height: 12px; vertical-align: middle; background-color: gray;" href="#">PDF ���Ϻ���</a></div>
					  <div style="margin-top:15px; text-align: right;">
					  PDF�� ���÷��� Adobe Reader�� ��ġ�ϼž� �մϴ�.
					  </div>
					
					</div>
					</div>
					<div id="email" class="tab5">
						<div style="width: 900px; color: #666; height: 1000px; 
					 
							padding: 10px 30px 30px 5px; margin-top: 20px; margin-bottom: 20px;">
					
					<div style="padding: 25px; margin-top:25px; border-width:1px; border-style: solid; border-color: #dbdbdb; background-color: #f3f3f3;">
					<h4><�̸��� ���� ���� �ź�></h4>
					 <ul>
					   <li>����� : 2016�� 11�� 1�� </li>
					   <li> 
					   �� ����Ʈ�� �ԽõǾ� �ִ� �̸��� �ּҰ� '�̸��� �ּ� ���� ���α׷�'�̳� �� ���� ����� ��ġ�� ����Ͽ� �������� �����Ǵ� ����
				     <br><br>	   
					   �ź��ϸ�, ���ݽ� ���� ��Ÿ����� ���� ���� ó�� ������� �˷��帳�ϴ�.
					 
					 
					 </ul>
					
					</div>
					<div style="padding:25px; margin-top: 25px; border-width: 1px; border-style: solid; border-color: #dbdbdb; background-color: #f3f3f3;">
					 <h4><���۱���å></h4>
					 ���۱ǹ� ��24���� 2(�������۹��� �����̿�)�� ���� SRȨ���������� �����ϴ� �ڷ� �߿��� SR�� ���� ������ ���θ� ������ ���۹��� ��쿡�� ������ �̿���� ���� �����̿��� �����մϴ�.
					<p style="margin-top: 15px; color:#000;">
					 ���������������� ���۱ǹ�
					<a style="display: inline-block; width:80px; height: 20px; padding-top: 8px; margin-left: 10px; font-size: 12px; line-height: 12px; text-align: center; color:#fff; vertical-align: middle; background-color: gray;"  title="��â����" href="http://www.law.go.kr/lsSc.do?menuId=0&p1=&subMenu=1&nwYn=1&section=&tabNo=&query=%EC%A0%80%EC%9E%91%EA%B6%8C%EB%B2%95#liBgcolor1">�ٷΰ���</a>
					</p>
					</div>
					
					
					</div>
					</div>

					<div id="fee" class="tab5">
						<div style="width: 900px; color: #666; height: 3000px; padding: 10px 30px 30px 5px; margin-top: 20px; margin-bottom: 20px;">
					<div style="padding: 50px 0; margin-top: 25px; font-weight: bold; text-align: center; border-width: 1px; border-style: solid; border-color: #dbdbdb; background-color: #f3f3f3;">
					  �Կ����� �� ������ ¡�� ����
					 <a style="display: inline-block; width: 110px; height: 21px; padding-top: 9px; padding-left: 30px; margin-left: 10px; font-weight: noraml; color:#fff; font-size: 12px; line-height: 12px; vertical-align: middle; background-color: gray;" onclick="JBCMS.downloadAttach('TK0501070000', '1'); return false;" href="#">PDF �ٿ�ε�</a>
					
					</div>
					<div style="padding: 50px 0; margin-top: 25px; font-weight: bold; text-align: center; border-width: 1px; border-style: solid; border-color: #dbdbdb; background-color: #f3f3f3;">
					 �Կ����ν�û��
					 <a  style="display: inline-block; width: 110px; height: 21px; padding-top: 9px; padding-left: 30px; margin-left: 10px; font-weight: noraml; color:#fff; font-size: 12px; line-height: 12px; vertical-align: middle; background-color: gray;" onclick="" href=#>���� �ٿ�ε�</a>
					�Կ� ���༭
					<a  style="display: inline-block; width: 110px; height: 21px; padding-top: 9px; padding-left: 30px; margin-left: 10px; font-weight: noraml; color:#fff; font-size: 12px; line-height: 12px; vertical-align: middle; background-color: gray;" href="#">���� �ٿ�ε�</a>
					
					</div>
					
					
					<div style="margin-top: 15px; text-align: right;">
					 PDF�� ���÷��� Adobe Reader�� ��ġ�ϼž� �մϴ�.
					 <a style="display: inline-block; width: 124px; height: 28px; font-size: 0px; line-height: 0; vertical-align: middle; color:#555; text-decoration:none; background-color: gray;" title="��â����" href="https://get.adobe.com/reader/?loc=kr">DOWNLOAD ADOBE READER</a>
					
					</div>
					<h4 style="margin-top: 25px; font-size: 18px; line-height: 19px; color:#8f0349;">�Կ���û���</h4>
					<div style="margin: 0; padding: 0;">
					 <ul style="margin-top: 15px;">
					    <li style="margin-top: 0px;">(��)SR�� ��ϴ� ö���ü� �� (��)SR �����ڻ� ��ü</li>
					  </ul>
					   <h4 style="margin-top: 25px; font-size: 18px; line-height: 19px; color:#8f0349;">�Կ����� ����</h4>
					   <ul>
					   <h5 style="margin:5px 0; font-size: 16px; line-height: 16px;">�Կ����� ����</h5>
					   <li>
					   (����� �Կ�) ���� �������� �����ϴ� ���� ���尳���� ����ȭ, ��� �� ������,
			��������, ����, ȭ�� �Կ� �� ��ü
			           </li>
				      <li>
				       (�ٻ���� �Կ�) ������ �������� ���� �ʴ� ����, ���繰, ������ ������ȭ, ���λ��� �� ���� �Կ� ���� ��ü
				      </li>
					
				    <br></br>
				    <h5 style="margin:5px 0; font-size: 16px; line-height: 16px;">�Կ���û����</h5>
				  <li>(��ȭ�Կ�)�Կ����� 7�������� ������������ ���� (��)SR�� ��û</li>
				  <img alt="" src="/web/img/lim/notice/info/info2.jpg"></img>
				   </ul>
				   <table style="width: 100%; margin-top: 15px; border-top-width: 2px; border-top-style: solid; border-top-color: #5e5e5e;">
				     <caption>�Կ�����</caption>
				     <colgroup>
				     <col width="94px;"></col>
				     <col width="520px;"></col>
				     <col width="188px;"></col>
				     <col width="188px;"></col>
				     </colgroup>
				     <thead>
				     <tr>
				      <th style="padding: 10px 0; padding-left: 10px; font-size: 13px; line-height: 100%; border-width: 0 1px 1px 0; border-style: solid; border-color: #dbdbdb; background-color: #f8f8f8;">����</th>
				      <th style="padding: 10px 0; padding-left: 10px; font-size: 13px; line-height: 100%; border-width: 0 1px 1px 0; border-style: solid; border-color: #dbdbdb; background-color: #f8f8f8;">�ֿ䳻��</th>
				      <th style="padding: 10px 0; padding-left: 10px; font-size: 13px; line-height: 100%; border-width: 0 1px 1px 0; border-style: solid; border-color: #dbdbdb; background-color: #f8f8f8;">ó������</th>
				      <th style="padding: 10px 0; padding-left: 10px; font-size: 13px; line-height: 100%; border-width: 0 1px 1px 0; border-style: solid; border-color: #dbdbdb; background-color: #f8f8f8;">���</th>
				     </tr>
				     </thead>
				     <tbody align="center">
				      <tr><td style="padding: 10px 0; padding-left: 10px; border-width: 0 0 1px 0; border-style: solid; border-color: #dbdbdb;">1</td><td style="padding: 10px 0; padding-left: 10px; border-width: 0 0 1px 0; border-style: solid; border-color: #dbdbdb;">�� ������ ��������ȸ�� �Կ���û</td><td style="padding: 10px 0; padding-left: 10px; border-width: 0 0 1px 0; border-style: solid; border-color: #dbdbdb;">7����</td><td style="padding: 10px 0; padding-left: 10px; border-width: 0 0 1px 0; border-style: solid; border-color: #dbdbdb;">���ۻ�</td></tr>
				      <tr><td style="padding: 10px 0; padding-left: 10px; border-width: 0 0 1px 0; border-style: solid; border-color: #dbdbdb;">2</td><td style="padding: 10px 0; padding-left: 10px; border-width: 0 0 1px 0; border-style: solid; border-color: #dbdbdb;">���ۻ� �Կ���û�� ���� �� �Կ����� ��û</td><td style="padding: 10px 0; padding-left: 10px; border-width: 0 0 1px 0; border-style: solid; border-color: #dbdbdb;">4����</td><td style="padding: 10px 0; padding-left: 10px; border-width: 0 0 1px 0; border-style: solid; border-color: #dbdbdb;">���� ������</td></tr>
				      <tr><td style="padding: 10px 0; padding-left: 10px; border-width: 0 0 1px 0; border-style: solid; border-color: #dbdbdb;">3</td><td style="padding: 10px 0; padding-left: 10px; border-width: 0 0 1px 0; border-style: solid; border-color: #dbdbdb;">�Կ� ������ �� ���� ���� �� ��� �뺸 *����� �Կ��� ��� �Կ� ������ ���� �Ա� Ȯ��</td><td style="padding: 10px 0; padding-left: 10px; border-width: 0 0 1px 0; border-style: solid; border-color: #dbdbdb;">2����</td><td style="padding: 10px 0; padding-left: 10px; border-width: 0 0 1px 0; border-style: solid; border-color: #dbdbdb;">(��)SR</td></tr>
				      <tr><td style="padding: 10px 0; padding-left: 10px; border-width: 0 0 1px 0; border-style: solid; border-color: #dbdbdb;">4</td><td style="padding: 10px 0; padding-left: 10px; border-width: 0 0 1px 0; border-style: solid; border-color: #dbdbdb;">�� ������ ��������ȸ�� �Կ���û</td><td style="padding: 10px 0; padding-left: 10px; border-width: 0 0 1px 0; border-style: solid; border-color: #dbdbdb;">-</td><td style="padding: 10px 0; padding-left: 10px; border-width: 0 0 1px 0; border-style: solid; border-color: #dbdbdb;">���� ������</td></tr>
				     </tbody>
				   </table>
                    <ul style="margin-top: 15px;">
                      <li style="padding-left: 18px;">
                          (��ȭ �̿� ���� �Ǵ� ����) �Կ����� 5�������� (��)SR�� ������û
                          <br></br>
                          *���� �Ǵ� 1�� �̻� ���� �ʿ�� �Կ��� ���� ���� 30���� �������� �ʿ�
                      </li>
                      <img alt="" src="/web/img/lim/notice/info/info3.jpg"></img>
                    </ul>  				   
				   <table style="width: 100%; margin-top: 15px; border-top-width: 2px; border-top-style: solid; border-top-color: #5e5e5e;">
				     <caption>�Կ���û</caption>
				    <colgroup>
				      <col width="94px;"></col>
				     <col width="520px;"></col>
				     <col width="188px;"></col>
				     <col width="188px;"></col>
				    
				    </colgroup>
				   <thead>
				    <tr>
				      <th style="padding:10px 0; padding-left: 10px; font-size: 13px; line-height: 100%; border-width: 0 1px 1px 0; border-style: solid; border-color: #dbdbdb; background-color: #f8f8f8;">����</th>
				      <th style="padding:10px 0; padding-left: 10px; font-size: 13px; line-height: 100%; border-width: 0 1px 1px 0; border-style: solid; border-color: #dbdbdb; background-color: #f8f8f8;">�ֿ䳻��</th>
				      <th style="padding:10px 0; padding-left: 10px; font-size: 13px; line-height: 100%; border-width: 0 1px 1px 0; border-style: solid; border-color: #dbdbdb; background-color: #f8f8f8;">ó������</th>
				      <th style="padding:10px 0; padding-left: 10px; font-size: 13px; line-height: 100%; border-width: 0 1px 1px 0; border-style: solid; border-color: #dbdbdb; background-color: #f8f8f8;">���</th>
				    
				    </tr>
				   
				   </thead>
				   <tbody align="center">
				   <tr>
				     <td style="padding: 10px 0; padding-left: 10px; border-width: 0 0 1px 0; border-style: solid; border-color: #dbdbdb;">1</td>
				     <td style="padding: 10px 0; padding-left: 10px; border-width: 0 0 1px 0; border-style: solid; border-color: #dbdbdb;">(��)SR(ȫ����)�� �Կ���û</td>
				     <td style="padding: 10px 0; padding-left: 10px; border-width: 0 0 1px 0; border-style: solid; border-color: #dbdbdb;">5����</td>
				     <td style="padding: 10px 0; padding-left: 10px; border-width: 0 0 1px 0; border-style: solid; border-color: #dbdbdb;">���ۻ�</td>
				   </tr>
           		   <tr>
				     <td style="padding: 10px 0; padding-left: 10px; border-width: 0 0 1px 0; border-style: solid; border-color: #dbdbdb;">2</td>
				     <td style="padding: 10px 0; padding-left: 10px; border-width: 0 0 1px 0; border-style: solid; border-color: #dbdbdb;">
				            �Կ� ������ �� ���� ���� �� ��� �뺸
				            <br><br>
				            *����� �Կ��� ��� �Կ� ������ ���� �Ա� Ȯ��
				            </td>
				     <td style="padding: 10px 0; padding-left: 10px; border-width: 0 0 1px 0; border-style: solid; border-color: #dbdbdb;">2����</td>
				     <td style="padding: 10px 0; padding-left: 10px; border-width: 0 0 1px 0; border-style: solid; border-color: #dbdbdb;">(��)SR</td>
				   </tr>
       
                 
				   </tbody>
				   </table>
				   
				   <ul style="margin-top: 15px;">
				    <li style="padding-left: 18px;">(���� Ȥ�� 1�� �̻� ���� �ʿ� ��) �Կ� �������� �������� �ּ� 30�� ������ ���� �������� �Կ���û�ϰ� ȫ���ǰ� ��������</li>
				    <br></br>
				    <h5 style="margin: 5px 0; font-size: 16px; line-height: 16px;">�Կ����ο��</h5>
				    <li style="padding-left: 18px;">
				      (����Ȯ��) �����Ŵ��� ����, �Կ����� �� ����� Ȯ�� �� ��ġ����
				      <br></br>
				    *�Կ� �����ڰ� 20�� �̻�� �����η��� ������ ���� �� ��ġ�Ͽ��� ��
				    
				    </li>
				    <li style="padding-left: 18px;">
				    
				     (�����¼� Ȯ��) ���� �� �Կ��� ����� �Կ������� Ȯ���Ͽ��� ��
				     <br></br>
				     *ž���̿� ��� �¼��� ���� : 50% �̻� ���¼� / 50% �̸� 1.5��� �¼�
				    </li>
				   
				   </ul>
				   <h4>�Կ�������</h4>
				   <ul>
				     <li>
				     (�Կ������� ������) ����� �Կ��� ���Ͽ� ������ �����Ḧ ¡��
				     <br></br>
				     - �ɾ߽ð���(24:00~06:00)�� D���� �Կ��� ���� �������� 2�� ¡��
				     <br></br>
				     - �η����� ���� �ʿ��� ��� �׿� ����ϴ� �Ǻ� �߰�¡��
				     <br></br>
				     *(��)SR ȫ�� �� �̹��� ������ �⿩���� ���� ��� ������ ���� �Ǵ� ����
				     </li>
                    <li>(��������) �Կ������� ���� 2�� ������ 1ȸ�� ���Ͽ� ���� ����</li>     
				   </ul>
                   <p style="float: right;">(���� : õ��, VAT����)</p>
				   <table style="width: 100%; margin-top: 15px; border-top-width: 2px; border-top-style: solid; border-top-color: #5e5e5e;">
				     <caption>�Կ�������</caption>  
                   <colgroup>
				      <col width="10%"></col>
				      <col width="10%"></col>
				      <col width="20%"></col>
				      <col width="20%"></col>
				      <col width="20%"></col>
				      <col width="20%"></col>
				   </colgroup>
				   <thead>
				   <tr>
				   <th colspan="2" style="padding: 10px 0; padding-left: 10px; font-size: 13px; line-height: 100%; border-width: 0 1px 1px 0; border-style: solid; border-color: #dbdbdb; background-color:#f8f8f8;">����</th>
				   <th style="padding: 10px 0; padding-left: 10px; font-size: 13px; line-height: 100%; border-width: 0 1px 1px 0; border-style: solid; border-color: #dbdbdb; background-color:#f8f8f8;">A����</th>
				   <th style="padding: 10px 0; padding-left: 10px; font-size: 13px; line-height: 100%; border-width: 0 1px 1px 0; border-style: solid; border-color: #dbdbdb; background-color:#f8f8f8;">B����</th>
				   <th style="padding: 10px 0; padding-left: 10px; font-size: 13px; line-height: 100%; border-width: 0 1px 1px 0; border-style: solid; border-color: #dbdbdb; background-color:#f8f8f8;">C����</th>
				   <th style="padding: 10px 0; padding-left: 10px; font-size: 13px; line-height: 100%; border-width: 0 1px 1px 0; border-style: solid; border-color: #dbdbdb; background-color:#f8f8f8;">D����</th>
				   </tr>
                 </thead>
                  <tbody align="center">
                   <tr>
                     <td style="padding: 10px 0; padding-left: 10px; border-width: 0 0 1px 0; border-style: solid; border-color: #dbdbdb;" colspan="2">���</td>
                     <td style="padding: 10px 0; padding-left: 10px; border-width: 0 0 1px 0; border-style: solid; border-color: #dbdbdb;">
                     -������
                     <p>
                       *����/��������
                       <br></br>
                                                       ������� ����
                     </p>
                   </td>
                   <td style="padding: 10px 0; padding-left: 10px; border-width: 0 0 1px 0; border-style: solid; border-color: #dbdbdb;">
                    -������
                    <br></br>
                    -��ź��
                    <br></br>
                    -������
                   </td>
                   <td style="padding: 10px 0; padding-left: 10px; border-width: 0 0 1px 0; border-style: solid; border-color: #dbdbdb;">
                      -�¹�����
                      <br></br>
                      -�����ֹڱ���
                   </td>
                     
                   <td style="padding: 10px 0; padding-left: 10px; border-width: 0 0 1px 0; border-style: solid; border-color: #dbdbdb;">
                     -������LCP
                     <br></br>
                     -���༱�� 
                     <br></br>
                     -���� �� ����                            
                    <br></br>
                     -���Ƚü�
                     <br></br>
                     -��Ÿ ö���̿밴 ��������ü�
                    </td>
                   </tr>
                  <tr>
                   <td rowspan="3" style="padding: 10px 0; padding-left: 10px; border-width: 0 0 1px 0; border-style: solid; border-color: #dbdbdb;">
                                                 ������
                   </td>
                   <td>
                                               �⺻
                    <br></br>
                    (1�ð� ����)                   
                   </td>     
                   <td style="padding: 10px 0; padding-left: 10px; border-width: 0 0 1px 0; border-style: solid; border-color: #dbdbdb;">400</td>             
                   <td style="padding: 10px 0; padding-left: 10px; border-width: 0 0 1px 0; border-style: solid; border-color: #dbdbdb;">300</td>             
                   <td style="padding: 10px 0; padding-left: 10px; border-width: 0 0 1px 0; border-style: solid; border-color: #dbdbdb;">250</td>             
                   <td colspan="3" style="padding: 10px 0; padding-left: 10px; border-width: 0 0 1px 0; border-style: solid; border-color: #dbdbdb;">��Ģ�� �Ұ�(������ħ �ʿ�)</td>             
                  </tr>
                  <tr>
                   <td style="padding: 10px 0; padding-left: 10px; border-width: 0 0 1px 0; border-style: solid; border-color: #dbdbdb;">�ð��߰�</td>
                   <td style="padding: 10px 0; padding-left: 10px; border-width: 0 0 1px 0; border-style: solid; border-color: #dbdbdb;">150/h</td>
                   <td style="padding: 10px 0; padding-left: 10px; border-width: 0 0 1px 0; border-style: solid; border-color: #dbdbdb;">150/h</td>
                   <td style="padding: 10px 0; padding-left: 10px; border-width: 0 0 1px 0; border-style: solid; border-color: #dbdbdb;">100/h</td>
                  </tr>
                 <tr>
                 <td style="padding: 10px 0; padding-left: 10px; border-width: 0 0 1px 0; border-style: solid; border-color: #dbdbdb;">
                                        �ο��߰�
                 <br></br>
                 (10�� �ʰ���)
                 </td>
                 <td style="padding: 10px 0; padding-left: 10px; border-width: 0 0 1px 0; border-style: solid; border-color: #dbdbdb;">80/��</td>
                 <td style="padding: 10px 0; padding-left: 10px; border-width: 0 0 1px 0; border-style: solid; border-color: #dbdbdb;">80/��</td>
                 <td style="padding: 10px 0; padding-left: 10px; border-width: 0 0 1px 0; border-style: solid; border-color: #dbdbdb;">80/��</td>
                 </tr>
                  </tbody>
				   </table>
                <h4 style="margin-top: 25px; font-size: 18px; line-height: 19px; color: #8f0349;">���ѻ���</h4>				   
				<ul style="margin-top: 15px;">
				  <h5 style="margin: 5px 0; font-size: 16px; line-height: 16px;">�Կ����� ����</h5>
				  <li style="padding-left: 18px;">�Կ����� ��û �� ������ ����� ���� �Կ� ������ �ٸ� ���</li>
				  <li style="padding-left: 18px;">������׷���, ���� ��ȭ, �α�ħ��, ��� �д� �� ��ȸ���� �� ��ǳ��ӿ� ���ϴ� ����</li>
			      <li style="padding-left: 18px;">���� �����ϰų� ������ �پ��� ��� �� ö�� �̿뿡 ���� �̹����� �ְ��� �� �ִ� ����</li>	
			      <li style="padding-left: 18px;">(��)SR��å�� ����ǰų� ������ �̹����� �ټ� �ִ� ����</li>	
				  <br></br>
				  <h5 style="margin: 5px 0; font-size: 16px; line-height: 16px;">����Ȱ��(�) ����</h5>
				  <li style="padding-left: 18px;">
				   �������ϰ����� �� Ư�����۱Ⱓ, ����, �ָ� ���� ȥ��ð�, ö���̿밴
				                        �̿� ������ ������ ������ �ִ� ��ҿ����� �Կ�
				  </li>
                 <li style="padding-left: 18px;">�������� ������ ����ǰų� ��ǥ��, LCP, ���� �� ������ ������ �� ������ ���ѵǴ� ��ҿ����� �Կ�</li>				
                 <li style="padding-left: 18px;">��Ÿ �ο� �߻� ������ �ְų� (��)SR���� Ư���� ������ ���� </li>				
				</ul>	
					<div style="padding: 50px 0; margin-top: 25px; font-weight: bold; text-align: center; border-width: 1px; border-style: solid; border-color: #dbdbdb; background-color: #f3f3f3;">
			         ���μ� : (��)�ڼ� ȫ���� (tel. 02-####-#### / email : iamipro@naver.com)		
                       <br></br>				
                       * �Կ����� ��û ��, ���μ��� ���� ����Ȯ�� �� ������� �ʿ�	
					</div>
					
					
					</div>			
					
					</div>
					
					</div>


					<div id="notice" class="tab5">
						<div style="width: 900px; color: #666; height: 1000px; 
				 
							padding: 10px 30px 30px 5px; margin-top: 20px; margin-bottom: 20px;">
					</div>
					
					<div style="margin-top: 25px;">
					
					�ֽ�ȸ�� ������(���� ��SR�� �Ǵ� ��ȸ�硯�� ��)�� ���������� ��ȣ���� �� ���ù��� ���� �������� ��ȣ������ �ؼ��մϴ�. �̿� ���� ��������ó����� ������� ��ħ�� ���Ͽ� �����������ڱ�����ǡ� ���忡 ���� �̿��� ���� ��ȣ�� �ּ��� ���ϰ� �ֽ��ϴ�.
					</div>
					<div style="padding: 30px; margin-top: 30px; border-width: 1px; border-style: solid; border-color: #ccc;">
				      	<div>
				      	ȸ���� ��������ó����� ������� ��ħ�� ������ ���� ������ ��� �ֽ��ϴ�.
				      	</div>
					    <li style="margin-top: 0px; min-height: 22px; padding-left: 30px; line-height: 150%; background-repeat: no-repeat; background-position: 0 2px;">
					     <a style="color: #555; font-family: 'ng','���� ���','����','Dotum','Droid','Snas','AppleGothic'; text-decoration: none;" onclick="goLine('privacy-01'); return false;" href="#privacy-01"></a>
					       <em style="display: none; font-size: 0px; line-height: 0;">1.</em>
					       ��������ó������� ��ġ �ٰ� �� ����
					    </li>
					    <li style="margin-top: 0px; min-height: 22px; padding-left: 30px; line-height: 150%; background-repeat: no-repeat; background-position: 0 2px;">
					     <a style="color: #555; font-family: 'ng','���� ���','����','Dotum','Droid','Snas','AppleGothic'; text-decoration: none;" onclick="goLine('privacy-02'); return false;" href="#privacy-02"></a>
					       <em style="display: none; font-size: 0px; line-height: 0;">2.</em>
					       ��������ó������� � ��Ȳ
					    </li>
					    <li style="margin-top: 0px; min-height: 22px; padding-left: 30px; line-height: 150%; background-repeat: no-repeat; background-position: 0 2px;">
					     <a style="color: #555; font-family: 'ng','���� ���','����','Dotum','Droid','Snas','AppleGothic'; text-decoration: none;" onclick="goLine('privacy-03'); return false;" href="#privacy-03"></a>
					       <em style="display: none; font-size: 0px; line-height: 0;">3.</em>
					      ��������ó����� ��ġ �� ���� ���� ��Ź�� ���� ����
					    </li>
					    <li style="margin-top: 0px; min-height: 22px; padding-left: 30px; line-height: 150%; background-repeat: no-repeat; background-position: 0 2px;">
					     <a style="color: #555; font-family: 'ng','���� ���','����','Dotum','Droid','Snas','AppleGothic'; text-decoration: none;" onclick="goLine('privacy-04'); return false;" href="#privacy-04"></a>
					       <em style="display: none; font-size: 0px; line-height: 0;">4.</em>
					      �̿����� �������� ���� �� �Ǹ�*�ǹ� �� �� �����
					    </li>
					    <li style="margin-top: 0px; min-height: 22px; padding-left: 30px; line-height: 150%; background-repeat: no-repeat; background-position: 0 2px;">
					     <a style="color: #555; font-family: 'ng','���� ���','����','Dotum','Droid','Snas','AppleGothic'; text-decoration: none;" onclick="goLine('privacy-05'); return false;" href="#privacy-05"></a>
					       <em style="display: none; font-size: 0px; line-height: 0;">5.</em>
					       �������� ó�� �� Ȯ��(����)���
					    </li>
					    <li style="margin-top: 0px; min-height: 22px; padding-left: 30px; line-height: 150%; background-repeat: no-repeat; background-position: 0 2px;">
					     <a style="color: #555; font-family: 'ng','���� ���','����','Dotum','Droid','Snas','AppleGothic'; text-decoration: none;" onclick="goLine('privacy-06'); return false;" href="#privacy-06"></a>
					       <em style="display: none; font-size: 0px; line-height: 0;">6.</em>
					      ��������ó�� ����å���� �� ���ٱ����� �� �ȳ�
					    </li>
					    <li style="margin-top: 0px; min-height: 22px; padding-left: 30px; line-height: 150%; background-repeat: no-repeat; background-position: 0 2px;">
					     <a style="color: #555; font-family: 'ng','���� ���','����','Dotum','Droid','Snas','AppleGothic'; text-decoration: none;" onclick="goLine('privacy-07'); return false;" href="#privacy-07"></a>
					       <em style="display: none; font-size: 0px; line-height: 0;">7.</em>
					       ���������� ������ Ȯ�� ��ġ
					    </li>
					    <li style="margin-top: 0px; min-height: 22px; padding-left: 30px; line-height: 150%; background-repeat: no-repeat; background-position: 0 2px;">
					     <a style="color: #555; font-family: 'ng','���� ���','����','Dotum','Droid','Snas','AppleGothic'; text-decoration: none;" onclick="goLine('privacy-08'); return false;" href="#privacy-08"></a>
					       <em style="display: none; font-size: 0px; line-height: 0;">8.</em>
					       ��������ó�����  �������ħ�� ���� �ǹ�
					    </li>
					    
					</div>
					<div class="item item-01" style="margin-top: 35px;">
					 <h3 style="margin-bottom: 20px; font-weight: bold; font-size: 20px; line-height: 20px; color:#8f0349;">1. ��������ó������� ��ġ �ٰ� �� ����</h3>
					 <p style="margin-top: 10px;">ȸ��� ���������� ��ȣ���� ��25���� ���� ���˿��� �� ����, �ü����� �� ȭ�翹��, �������� �� �ļչ����� ���Ͽ� ��������ó�� ��⸦ ��ġ����ϰ� �ֽ��ϴ�.</p>
					</div>		
                    <div class="item item-02" style="margin-top: 35px;">
					 <h3 style="margin-bottom: 20px; font-weight: bold; font-size: 20px; line-height: 20px; color:#8f0349;">2. ��������ó������� � ��Ȳ</h3>
					 <table style="width: 100%; margin-top: 15px; border-top-width: 2px;  border-top-style: solid; border-top-color: #5e5e5e;">
	                  <caption>��������ó������� � ��Ȳ</caption>	
	                  <colgroup>
	                  <col width="15%"></col>
	                  <col width="15%"></col>
	                  <col width="40%"></col>
	                  <col width="15%"></col>
	                  <col width="15%"></col>
	                  
	                  </colgroup>
	                  <thead>
	                  <tr>
	                  <th style="padding: 10px 0; padding-left:  10px; font-size: 13px; line-height: 100%; border-width: 0 1px 1px 0; border-style: solid; border-color: #dbdbdb; background-color: #f8f8f8;">
	                  ��ġ���
	                  </th>
	                  <th style="padding: 10px 0; padding-left:  10px; font-size: 13px; line-height: 100%; border-width: 0 1px 1px 0; border-style: solid; border-color: #dbdbdb; background-color: #f8f8f8;">��ġ���</th>
	                  <th style="padding: 10px 0; padding-left:  10px; font-size: 13px; line-height: 100%; border-width: 0 1px 1px 0; border-style: solid; border-color: #dbdbdb; background-color: #f8f8f8;">��ġ��ġ �� �Կ�����</th>
	                  <th style="padding: 10px 0; padding-left:  10px; font-size: 13px; line-height: 100%; border-width: 0 1px 1px 0; border-style: solid; border-color: #dbdbdb; background-color: #f8f8f8;">�Կ��ð�</th>
	                  <th style="padding: 10px 0; padding-left:  10px; font-size: 13px; line-height: 100%; border-width: 0 1px 1px 0; border-style: solid; border-color: #dbdbdb; background-color: #f8f8f8;">�����Ⱓ �� ���</th>
	                  </tr>
	                  </thead>
	                  <tbody>
	                  <tr>
	                   <td style="padding: 10px 0; padding-left: 10px; text-align: center; border-width: 0 1px 1px 0; border-style: solid; border-color: #dbdbdb;">������</td>                  
	                   <td style="padding: 10px 0; padding-left: 10px; text-align: center; border-width: 0 1px 1px 0; border-style: solid; border-color: #dbdbdb;">84��</td>                  
	                   <td style="padding: 10px 0; padding-left: 10px; text-align: center; border-width: 0 1px 1px 0; border-style: solid; border-color: #dbdbdb;">���系, ���ս� ��  �°���</td>                  
	                   <td style="padding: 10px 0; padding-left: 10px; text-align: center; border-width: 0 1px 1px 0; border-style: solid; border-color: #dbdbdb;">24�ð�</td>                  
	                   <td style="padding: 10px 0; padding-left: 10px; text-align: center; border-width: 0 1px 1px 0; border-style: solid; border-color: #dbdbdb;">30��, ��Ž�</td>                  
	                  </tr>
                    <tr>
                    <td style="padding: 10px 0; padding-left: 10px; text-align: center; border-width: 0 1px 1px 0; border-style: solid; border-color: #dbdbdb;">��ź��</td>                  
	                   <td style="padding: 10px 0; padding-left: 10px; text-align: center; border-width: 0 1px 1px 0; border-style: solid; border-color: #dbdbdb;">66��</td>                  
	                   <td style="padding: 10px 0; padding-left: 10px; text-align: center; border-width: 0 1px 1px 0; border-style: solid; border-color: #dbdbdb;">���系, ���ս� ��  �°���</td>                  
	                   <td style="padding: 10px 0; padding-left: 10px; text-align: center; border-width: 0 1px 1px 0; border-style: solid; border-color: #dbdbdb;">24�ð�</td>                  
	                   <td style="padding: 10px 0; padding-left: 10px; text-align: center; border-width: 0 1px 1px 0; border-style: solid; border-color: #dbdbdb;">30��, ��Ž�</td>
                    </tr>
                    <tr>
                       <td style="padding: 10px 0; padding-left: 10px; text-align: center; border-width: 0 1px 1px 0; border-style: solid; border-color: #dbdbdb;">������</td>                  
	                   <td style="padding: 10px 0; padding-left: 10px; text-align: center; border-width: 0 1px 1px 0; border-style: solid; border-color: #dbdbdb;">30��</td>                  
	                   <td style="padding: 10px 0; padding-left: 10px; text-align: center; border-width: 0 1px 1px 0; border-style: solid; border-color: #dbdbdb;">���系, ���ս� ��  �°���</td>                  
	                   <td style="padding: 10px 0; padding-left: 10px; text-align: center; border-width: 0 1px 1px 0; border-style: solid; border-color: #dbdbdb;">24�ð�</td>                  
	                   <td style="padding: 10px 0; padding-left: 10px; text-align: center; border-width: 0 1px 1px 0; border-style: solid; border-color: #dbdbdb;">30��, ��Ž�</td>
                    </tr>
                   	                  
	                  </tbody>			 
					 </table>
					 
					</div>		
                    <div class="item item-03" style="margin-top: 35px;">
					 <h3 style="margin-bottom: 20px; font-weight: bold; font-size: 20px; line-height: 20px; color:#8f0349;">3. ��������ó����� ��ġ �� ���� ���� ��Ź�� ���� ����</h3>
					 <p style="margin-top: 10px;">ȸ��� �Ʒ��� ���� ��������ó����� ��ġ������ ���� ��Ź�ϰ� ������, ���� ���ɿ� ���� ��Ź��� �� ���ο��������� ������ ������ ���� �ʼ������� ��೻�뿡 ����ϰ� �ֽ��ϴ�.</p>
					 <table style="width: 100%; margin-top: 15px; border-top-width: 2px; border-top-style: solid; border-top-color: #5e5e5e;">
					 <colgroup>
					 <col width="25%"></col>
					 <col width="25%"></col>
					 <col width="25%"></col>
					 <col width="25%"></col>
					 </colgroup>
              <thead>
                   <tr>
                    <th style="padding: 10px 0; padding-left: 10px; font-size: 13px; line-height: 100%; border-width: 0 1px 1px 0; border-style: solid; border-color:#dbdbdb; background-color: #f8f8f8;">����</th>
                    <th style="padding: 10px 0; padding-left: 10px; font-size: 13px; line-height: 100%; border-width: 0 1px 1px 0; border-style: solid; border-color:#dbdbdb; background-color: #f8f8f8;">��Ź��ü</th>
                    <th style="padding: 10px 0; padding-left: 10px; font-size: 13px; line-height: 100%; border-width: 0 1px 1px 0; border-style: solid; border-color:#dbdbdb; background-color: #f8f8f8;">�����</th>
                    <th style="padding: 10px 0; padding-left: 10px; font-size: 13px; line-height: 100%; border-width: 0 1px 1px 0; border-style: solid; border-color:#dbdbdb; background-color: #f8f8f8;">����ó</th>
                   
                   </tr>
              
              </thead>
              <tbody>
              <tr>
               <td style="padding: 10px 0; padding-left: 10px; text-align: center; border-width: 0 1px 1px 0; border-style: solid; border-color: #dbdbdb;">������</td>
               <td style="padding: 10px 0; padding-left: 10px; text-align: center; border-width: 0 1px 1px 0; border-style: solid; border-color: #dbdbdb;">(��)�Ƽ���</td>
               <td style="padding: 10px 0; padding-left: 10px; text-align: center; border-width: 0 1px 1px 0; border-style: solid; border-color: #dbdbdb;">�����, ����ȭ, ��ȯ��</td>
               <td style="padding: 10px 0; padding-left: 10px; text-align: center; border-width: 0 1px 1px 0; border-style: solid; border-color: #dbdbdb;">02-####-####</td>
              </tr>
              <tr>
               <td style="padding: 10px 0; padding-left: 10px; text-align: center; border-width: 0 1px 1px 0; border-style: solid; border-color: #dbdbdb;">��ź/������</td>
               <td style="padding: 10px 0; padding-left: 10px; text-align: center; border-width: 0 1px 1px 0; border-style: solid; border-color: #dbdbdb;">(��)�Ƽ���</td>
               <td style="padding: 10px 0; padding-left: 10px; text-align: center; border-width: 0 1px 1px 0; border-style: solid; border-color: #dbdbdb;">������, �蹮ö, ���ͼ�</td>
               <td style="padding: 10px 0; padding-left: 10px; text-align: center; border-width: 0 1px 1px 0; border-style: solid; border-color: #dbdbdb;">02-####-####</td>
              </tr>
                            
              </tbody>					 
					 </table>
					</div>		
                    <div class="item item-04" style="margin-top: 35px;">
					 <h3 style="margin-bottom: 20px; font-weight: bold; font-size: 20px; line-height: 20px; color:#8f0349;">4. �̿����� �������� ���� �� �Ǹ����ǹ� �� �� �����</h3>
					 <p style="margin-top: 10px;">
					 �̿��� ���ο��������� ���Ͽ� ���� �Ǵ� ���� Ȯ�Τ������� ���ϴ� ��� �������� ��������ó����� ��ڿ��� �䱸�Ͻ� �� �ֽ��ϴ�. ��, ������ ������ ���� ������ �Կ��� ���ο������� �Ǵ� ����� ������ü�� �޹��� ����, ��ü, ����� ������ ���Ͽ� �ʿ��� ���ο��������� �����˴ϴ�.
					 <br></br>
					 �̿��ڴ� ��������Ÿ� �̿����� �� ������ȣ � ���� ������, ������������ȣ���� �� ��������� �����Ͽ� Ÿ���� ���ο������� �䱸 �� ������ �̿� �� ���Ȱ�� ħ���ؼ��� �ȵǸ�, �̸� ������ ��� ���� ���ɿ� ���� ó������ �� �ֽ��ϴ�.
					 <br></br>
					 ȸ��� ���ο��������� ���Ͽ� ���� �Ǵ� ����Ȯ�Τ������� �䱸�� ���, ��ü ���� �ʿ��� ��ġ�� �ϰڽ��ϴ�.
					 </p>
					</div>		
                    <div class="item item-05" style="margin-top: 35px;">
					 <h3 style="margin-bottom: 20px; font-weight: bold; font-size: 20px; line-height: 20px; color:#8f0349;">5. �������� ó�� �� Ȯ��(����)���</h3>
					 <p style="margin-top: 10px;">������ü�κ��� �������� ���������� ���ǹ��� �������� ����/�̿� �Ⱓ ��(�Ի����� �Ⱓ, ��� �� ������ ��� ���� Ȯ��, �̺�Ʈ �Ⱓ)����
					 <br></br>
					 ó�� �� �����ϸ�, ��Ģ������ ���������� ó�������� �޼��Ǹ� ��ü ���� �ı��մϴ�.
					 </p>
					 <ul>
					    <li  style="padding-left: 0px; background: none;">
					  <strong style="display: block; margin-bottom: 5px;">�������� ó�����</strong>
					   <ul>
					     <li>
					     ���ο��������� ���� �� �̿�, ��3�� ����, �ı�, ���� �� �䱸�� ���� ������ ��Ϥ������ϰ�, �����Ⱓ ���� �� ������ �Ұ����� ������� ���� ����(��¹��� ��� �ļ� �Ǵ� �Ұ�)�մϴ�.
					     </li>
					   
					   </ul>
					  </li>
					  <li>
					   <strong style="display: block; margin-bottom: 5px;">�������� Ȯ�ι��</strong>
					   <ul>
					     <li style="padding-left: 21px; margin-top: 0px;">
					   ���ο������� Ȯ���� �ʿ��� ���, �ش� ���� ���ٱ����ڿ��� �̸� ���� �� �湮�Ͻø� Ȯ�� �����մϴ�. ��, �����ϱ� ���ؼ��� ���ο������� ��û�� ���� �� ȸ�� ���������� �ؼ��ؾ� �մϴ�.
					   <a style="display: block; width: 180px; padding: 5px; margin-top: 5px; color: #fff; font-size: 12px; line-height: 12px; text-align: center; border-radius: 2px; background-color: #52555a;">
					   ���ο������� ��û��(�ٿ�ޱ�)</a>
					   </li>
					   </ul>
					  
					  </li>
					 </ul>
					 
					</div>		
                    <div class="item item-06" style="margin-top: 35px;">
					 <h3 style="margin-bottom: 20px; font-weight: bold; font-size: 20px; line-height: 20px; color:#8f0349;">1. ��������ó������� ��ġ �ٰ� �� ����</h3>
					 <p style="margin-top: 10px;">ȸ��� ���������� ��ȣ���� ��25���� ���� ���˿��� �� ����, �ü����� �� ȭ�翹��, �������� �� �ļչ����� ���Ͽ� ��������ó�� ��⸦ ��ġ����ϰ� �ֽ��ϴ�.</p>
					</div>		
                    <div class="item item-07" style="margin-top: 35px;">
					 <h3 style="margin-bottom: 20px; font-weight: bold; font-size: 20px; line-height: 20px; color:#8f0349;">1. ��������ó������� ��ġ �ٰ� �� ����</h3>
					 <p style="margin-top: 10px;">ȸ��� ���������� ��ȣ���� ��25���� ���� ���˿��� �� ����, �ü����� �� ȭ�翹��, �������� �� �ļչ����� ���Ͽ� ��������ó�� ��⸦ ��ġ����ϰ� �ֽ��ϴ�.</p>
					</div>		
                    <div class="item item-08" style="margin-top: 35px;">
					 <h3 style="margin-bottom: 20px; font-weight: bold; font-size: 20px; line-height: 20px; color:#8f0349;">1. ��������ó������� ��ġ �ٰ� �� ����</h3>
					 <p style="margin-top: 10px;">ȸ��� ���������� ��ȣ���� ��25���� ���� ���˿��� �� ����, �ü����� �� ȭ�翹��, �������� �� �ļչ����� ���Ͽ� ��������ó�� ��⸦ ��ġ����ϰ� �ֽ��ϴ�.</p>
					</div>		
                       					

					
					
					</div>





				</div>
				<!-- end -->
			</div>

		</div>

		<!-- LOGIN  End   -->
		<jsp:include page="/view/container/containerBottom.jsp" flush="false" />
		<!-- ���� �κ� -->
	</div>

	<script type="text/javascript" src="/web/js/container/clock.js"
		charset="UTF-8"></script>

</body>

</html>
