<%@page import="oracle.net.aso.a"%>
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
<script type="text/javascript" src="/web/js/lim/httpRequest.js"></script>
<!-- <script type="text/javascript">
function showAjax() {
	sendRequest('/web/js/twitter.xml', null, showTwitter, 'GET');
	 
}

function showTwitter() {
	if (httpRequest.readyState == 4 && httpRequest.status == 200) {
		 console.log(httpRequest.responseXML);
		//document.getElementById("dv").innerHTML=document.getElementById("dv").innerHTML+httpRequest.responseText;  
		printData();

	}
}

</script> -->


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
</style>
</head>
<body>

					<%
						 
					  String name=  (String)application.getAttribute("name");
					    String birth =(String)application.getAttribute("birth");
					    String phone =(String)application.getAttribute("phone");  
					    		String gender =(String)application.getAttribute("gender");
					    		 application.setAttribute("name", name); 
					    		   application.setAttribute("birth", birth); 
					    		   application.setAttribute("phone", phone); 
					    		   application.setAttribute("gender", gender); 
					  /*  request.setAttribute("name", name);
					   request.setAttribute("birth", birth);
					   request.setAttribute("phone", phone);
					   request.setAttribute("gender", gender);
					   */ System.out.println(name);
					   System.out.println(birth);
					   System.out.println(phone);
					   System.out.println(gender);
					
					%>
	<div class="container">


		<jsp:include page="/view/container/containerTop.jsp" flush="false" />
		<!-- LOGIN  Start -->
		<div class="login-wrapper">
			<div class="login-wrapper-center">
				<br />
				<h1 style="padding: 30px 30px 0 30px;" class="tkting-method">ȸ������</h1>
				<span style="float: right; font-size: 12px; margin-right: 30px;">
					<a href="/web/view/container/container.jsp" class="fa fa-home"
					style="cursor: pointer; text-decoration: none; color: black;"></a>
					<i style="cursor: default; ">&gt;</i> <a href=""
					style="cursor: pointer; text-decoration: none; color: black;">Cosen
						ȸ��</a> <i style="cursor: default;">&gt;</i> <a href="#"
					style="cursor: pointer; text-decoration: none; color: black;"
					class="tkting-method">ȸ������</a>
				</span> <br /> <br /> <br />

				<!--  start-->
				<div
					style="width: 940px; padding: 30px 30px 30px 30px; height: 720px; background-color: white;">


 
				 
						 
  
 <div style="font-size: 17px; font-weight: bold; color:navy;">ȸ������ �� �̿뿡 ���� ���</div><br>
 <textarea style="border: 1px solid  lightgray; width:900px; height:150px; background-color: #f9f9fa;" >  ��1��(����)
�� ����� �ֽ�ȸ�� ������(���� ��ȸ�硱�� �մϴ�)�� ȸ������ �� �̿뿡 ���� ���(���� ��������̶� �մϴ�)���� ȸ������ �����ϰ��� �ϴ� ���(���� ��ȸ�����̶� �մϴ�)�� ȸ�� ���� �Ǹ����ǹ� �� å�ӻ����� �������� �������� �մϴ�.

��2��(����� ����)
�� �� ����� ȸ���� �����̿� �� ȸ�翡�� �����ϴ� �ΰ����� � �����ϸ� �� ������� ������ ���� ������ ȸ���� ������۾�� �� ���� ������ �����մϴ�.
�� ȸ���� ȸ���� ���޻簣�� �������� ��������� ȸ��� �����մϴ�.
�� ȸ��� ���޻簣�� ü��� ���񽺴� ���� ������� Ȥ�� ���޻� ������ ���� ���� �뺸 ���� ����ǰų� �ߴܵ� �� �ֽ��ϴ�.
�� ȸ���� ȸ�������� �����ޱ� ���Ͽ� ���޻縦 �̿��� ��� �ش� ���޻��� ������ ����� �ϸ�, ���޻� �̿�������� �߻��� �� �ִ� ȸ���� ���ؿ� ���Ͽ� ȸ��� å���� �����ϴ�.

��3��(����)
�� ������� ����ϴ� ����� ���Ǵ� ������ ������, �� ���׿��� ���ϴ� ���� �����ϰ�� ���� ���� �� ���񽺺� �ȳ����� ���ϴ� �ٿ� ���մϴ�.
     1. ��ȸ�����̶� �����̿�, �����ǰ �� ȸ�簡 �����ϴ� ���񽺸� �̿��ϱ� ���Ͽ� ȸ���� Ȩ������ �Ǵ� ����� �ۿ��� �̿����� ü���� ����� ���մϴ�.
     2. �����񽺡��� ���� ȸ���� PC, �̵���ȭ �� ���� ������ ��� �Ǵ� ��â���� ���Ͽ� �̿��� �� �ִ� ȸ�簡 �����ϴ� ��� ���񽺸� ���մϴ�.
     3. ��������ȸ�������̶� ���� ȸ������ ������ ������� ȸ�簡 �����ϴ� ���񽺸� �̿��� �� �ֵ��� ������ȣ�� �ο��Ͽ� ������ ������ī��(Ȩ������ �� ����� �ۿ��� Ȯ��)�� ���մϴ�.
     4. ��ȸ����ޡ��̶� ���� ȸ�簡 ȸ���� �����̿������ ���Ͽ� ȸ�������� �����ϱ� ���Ͽ� �Ϲ�ȸ��, ���ȸ��, Ư��ȸ��, VIPȸ������ �����ϴ� ���� ���մϴ�.
     5. �����������������̶� ���� ȸ�簡 ȸ������ ������������������ �����ϱ� ���Ͽ� ������ �������������� ���մϴ�.
     6. ���¼��±��������̶� ���� ȸ�簡 ȸ������ �����¼��±������� �����ϱ� ���Ͽ� ������ ���ڽ±������� ���մϴ�.

��4��(ȸ������)
�� ������ Ȩ������ �Ǵ� ����Ʈ�� ���� ���� ȸ���� ȸ������ ������ �� �ֽ��ϴ�.
�� ȸ������ �����ϰ��� �ϴ� ����� Ȩ������ �Ǵ� ����Ʈ�� �ۿ��� ���� �� ȣ�� ���� ������ ����ϰ� ȸ������ ���ǿ� Ȯ�ι�ư�� �������μ� ȸ�������� �Ϸ�˴ϴ�.
     1. �̸�
    2. ��ȭ��ȣ, ���ڿ���(E-mail �ּ�)
     3. �������, ����
    4. ��й�ȣ
    5. ��Ÿ ȸ�������� �ʿ��� ����

��5��(ȸ��������ȣ)
ȸ���� ����������ȣ�� ���� ���� ������ ȸ�� ������Ʈ (www.srail.co.kr)���� ����������޹�ħ���� ���ϴ� �ٿ� �����ϴ�.

��6��(ȸ������)
�� ȸ��� ȸ���� �����̿������ ���� ������������ �Ǵ� �¼��±����� ���� ������ �� �ֽ��ϴ�.
�� �������������� ���ӿ��� ������ ����(��� ����)�Ǹ� �����������Ϸδ� ������ ������� �ʽ��ϴ�.
�� �¼��±������� �Ϲݽǿ������� Ư���� �̿� �Ͻ� �� �ֽ��ϴ�.
�� �������������� �¼��±������� ��ȿ�Ⱓ�� �������� Ȯ���� �� ������ Ȩ������ �� ����� �� ������ ����� �� �ֽ��ϴ�.
�� ȸ���� ��޺� �����̿���� ��������, ȸ������, �������������� ������ �������� ���� ���� �Խ��ϰų� ���ͳ� � �����մϴ�.
�� ȸ��� ȸ���� �̿���������� �߸��� ��쿡�� �̸� ���Ƿ� ������ �� ������ �δ��� ����� ���� ������ ������ �������� �ʽ��ϴ�.
�� ȸ���� �̿���� ������ �̿��� �Ϸ��� �������� ��ü ���Աݾ� �߿��� �¶���(Ȩ������ �� ����� ��)���� ������ �ݾ׸��� �ݿ��մϴ�. �ٸ�, ���� �� ȣ�� ��쿡�� �¶������� ������ ��쿡�� �̿���� �������� �����մϴ�.
     1. �������� ��, �߼� ���� �Ⱓ �߿� �ش��ϴ� ������
    2. ����Ǥ���ü������, �����, ȸ��������, �����ǰ���� �Ǹ��ϴ� ������
    3. ��SR�� ���� ��۰���� ü���ϰ� ������ �ı����� �����ϴ� ������
    4. �����ǰ� �����Ͽ� �Ǹ��ϴ� ��Ű�� ��ǰ ���� ���
�� ������ ����� 1���� �¼� �� 1ȸ�� �� �մϴ�.

��7��(ȸ������ �̿�)
ȸ��� ȸ���� ���� ���Ǹ� �ް� ��4�� ��2���� ȸ�� ������ ��������� �Ǵ� ���޻���� �� ��3�ڿ��� ������ �� �ֽ��ϴ�. �ٸ�, �� ȣ�� ���� ���� ���� ���Ǹ� ���� ���� �� �ֽ��ϴ�.
     1. ���� ���ɿ� Ư���� ������ �ִ� ���
    2. ���˿� ���� ������� �������� ��������� �䱸�� �ִ� ���
    3. �����Ž�������ȸ�� ��û�� �ִ� ���
    4. Ư�� ������ �ĺ��� �� ���� ����ۼ�, ȫ���ڷ�, �м����� ���� �������� ��û�� �ִ� ���
    5. ��Ÿ ȸ������ ���� �� ���� ����� �����ϴ� ���

��8��(ȸ������ ����)
�� ȸ���� ȸ������ �� ������ ������ ����� ��쿡 ���ͳ� �Ǵ� ��Ÿ�ü�� �̿��Ͽ� �̸� �����ϰų� ��Ÿ ������� ȸ�翡 ���Ͽ� �� ��������� �˷��� �մϴ�.
�� ȸ��� ȸ���� ��������� �˸��� �ƴ��Ͽ� �߻��� ���ؿ� ���Ͽ� å���� ���� �ʽ��ϴ�.
�� ȸ���� Ȩ������ �Ǵ� ����� ���� ȸ����������ȭ���� ���Ͽ� �������� ������ ���������� �����ϰ� ������ �� �ֽ��ϴ�. 

��9��(Żȸ)
�� Żȸ�ϰ��� �ϴ� ȸ���� Ȩ������ �Ǵ� ����� ���� ȸ������ ���濡�� Żȸ�� ��û�� �� �ֽ��ϴ�.
�� ��1���� ��쿡 �߱��� �������� �ִ� ��쿡�� �̿��� �Ϸ��� ��, �Ǵ� �߱��� �������� ��ȯ�Ͻ� �Ŀ� Żȸ ��û�� �ϼž� �մϴ�.
�� ��1�׿� ���� ȸ���� Żȸ�ϴ� ��� ȸ��� ��6���� ���� ȸ�������� �������� �ʽ��ϴ�.
�� ȸ���� Żȸ�� ��û�� ��� ȸ��� ���ù� �� ȸ���� ��������ó����ħ�� ���� ȸ�簡 ȸ�������� �����ϴ� ��츦 �����ϰ�� ���� ��� ȸ���� ��� �����͸� �Ҹ� �մϴ�.

��10��(�ڰݻ�� �� ���� �̿�����)
�� ȸ��� ȸ���� ���� �� ȣ�� �ش��ϴ� ��쿡�� Żȸ ��ġ��ų �� �ֽ��ϴ�.
     1. ȸ������ ������ ������ �ۼ��ϴ� �� ������ ������ �̿��� �����ϴ� ����
    2. �ٸ� ����� ȸ����ȣ �� ��й�ȣ�� ������ ����
    3. �������� ����� ���
    4. ��Ÿ ��������̳� ȸ�簡 ���� ����� ������ ��� �Ǵ� ȸ�����μ� �ڰ��� ���ӽ�Ű�� ���� �������ϴٰ� ȸ�簡 �Ǵ��ϴ� ���
�� ȸ���� ����� ��쿡�� ��9�� �� ��1�׿� ���� ���� ���� ȸ�� �ڰ��� ���(�Ǵ� Żȸ)�� ������ �����մϴ�.
�� ��1�׿� ���� ȸ��(�Ǵ� ��3��)���� �߻��ϴ� ���ش� ȸ�簡 å���� �δ����� �ƴ��մϴ�.
�� ��1�׿� ���� ������ ȸ�� �ڰ��� ����� ��� ȸ��� ��6���� ���� ȸ�� �̿������ ��ȿ�� �ϰ� �̸� �����մϴ�.

��11��(�������� �� �ȳ� ��)
�� ȸ��� ����� �������� �ȳ�, ���� �����ǰ, ���� �̿���, �������� �� �پ��� ���񽺸� ȸ������ ���ڿ���, �޴���ȭ �޼���, �� ���� ������� ������ �� �ֽ��ϴ�.
�� ȸ��� ȸ�� ��ü���� ���� �Ǵ� ������ �ʿ䰡 �ִ� ���׿� ���Ͽ� Ȩ�������� 1���� �̻� ���������μ� �̸� ����� �� �ֽ��ϴ�.

��12�� (å�� ��)
�� ȸ���� ȸ����ȣ(���̵� ������ �ο��� ��� ���̵� ����)�� ��й�ȣ�� ���� ����å���� �ֽ��ϴ�.
�� ȸ��� ��4���� ���� ���������� ȸ����� å����(���� ��Ź�� �ش� ��ü ȸ�� �����)�� �����ϸ� ������ �н�, ����, ����, ���� � ���� å���� �δ��մϴ�.
�� ȸ��� ȸ��������� �� ȸ�������� ���� ���� �� �Ϻθ� ��Ź����� �� �ֽ��ϴ�. �� ��� ȸ��� ���������� �ܺη� ������� �ʵ��� �Ͽ��� �մϴ�.
�� ȸ��� ȸ���� ���� �Ǵ� ���Ƿ� ���Ͽ� �߻��� ���ؿ� ���Ͽ� å���� �δ����� �ƴ��մϴ�.

��Ģ
�� ����� 2016.10.31�Ϻ��� �����Ѵ�.</textarea> 
<br>
 <div style="font-size: 14px; color:gray; margin-right:40px;float:right;">Ȩ������ ȸ������� �����մϴ�.<b>(�ʼ�)</b><input id="check1" type="checkbox"  onclick="check(this)"></div>
<br>
<br>

<div style="font-size: 17px; font-weight: bold; color:navy;">�������� ���� �� �̿뿡 ���� �ȳ�</div>
<textarea style="margin-top:20px; margin-bottom:10px; border: 1px solid  lightgray;  width:900px; height:150px; background-color: #f9f9fa;">���������� ���� �� �̿� ����
- ���������� ���� �� �߸� ����, �޴���Ȯ��, ȸ������ �� ����, �űԼ��� ���� �� �����ä������� Ȱ��, �� �Ҹ� ���� ó��, �������� ����, ���������� ���� ��Ϻ���
- ȸ���� �Ұ����� ����ó�� �� ����, �� ������ ���� ��� �� ����
- �̺�Ʈ ��÷�� Ȯ�� �� �¶��� ��ǰ�߼�

�������� �����׸�
- �ʼ����� : ����, ��й�ȣ(Ȩ������/����Ͼ�, ����߸�), �������, ����, �޴���ȭ��ȣ, �̸���, ����Ʈ��� �����ĺ���ȣ(MAC�ּ�, IMEI, UUID)
     * �� 14�� �̸� �Ƶ��� ���, �����븮�� ����(����, �������, ����, ��/�ܱ��� ����, �޴�����ȣ, �̵���Ż� ����, ����Ȯ�� ����(CI, DI), ������ ����)�� �߰��� ���� - �������� : ������ȭ��ȣ, �ſ�ī���ȣ, �ּ�
- ��Ź��ü : �ѱ�ö������(��Ź���� �� ����: ������ ����߸�), �ߴ뺸�������(�����ý��� � �� ��������), �߿���(�����ý��� � �� ��������),�߼���Ʈ����(�����ý��� � �� ��������),���̳�Ʈ��(�����ý��� � �� ��������),�߿����������(�����ý��� � �� ��������),��SAP KOREA(�����ý��� � �� ��������),��ȿ�� ITX(��Ź���� �� ����: ������ ��Ź �),�߽���ī��(����ī�� ���� �� SR ȸ������/���),���̺긴��(���� �¹��� ���� ��Ź �),��H20(���ڸ޼��� �߼�), �߳��̽�������(��Ź���� �� ����: ����Ȯ�� ����)

�ֽ�ȸ�� ������(���� �������ˡ���� �Ѵ�)�� �̿����� �⺻�� �α� ħ���� ����� �ִ� �ΰ��� ��������(���� �� ����, ��� �� ����, ����� �� ������, ��ġ�� ���� �� ���˱��, �ǰ����� �� ����Ȱ ��)�� �������� �ʽ��ϴ�.

���� �̿�������� �Ʒ��� ���� �������� �ڵ����� �����Ǿ� ������ �� �ֽ��ϴ�.
- IP�ּ�, ���� �̿���, �湮���, ����Ʈ�� ������� �� 
���������� ���� �� �̿�Ⱓ
�̿��� ���������� ���Ǹ� ���� ���������� ���� �� �̿������ �޼��Ǹ�, �Ʒ��� ���� ���� ���ɿ� ���� ������ �ʿ䰡 �ִ� ��츦 �����ϰ� ��ü���� �ı��մϴ�.
��. ���� ����(�̿�) ���
    A. ���� �ٰ� : ��ź�к�ȣ��
    B. ���� �Ⱓ : 3����
 ��. ǥ��/���� ���� ���
    A. ���� �ٰ� : ���ڻ�ŷ� ����� �Һ��ں�ȣ�� ���� ����
    B. ���� �Ⱓ : 6����
 ��. �Һ����� �Ҹ� �Ǵ� ����ó���� ���� ���
    A. ���� �ٰ� : ���ڻ�ŷ� ����� �Һ��ں�ȣ�� ���� ����
    B. ���� �Ⱓ : 3��

���� ���� �ź� �Ǹ� �� ������ 
�������� ȸ������, ��Ȱ�� �����, ���� ������ ������ ���� �Ʒ��� ���� �ּ����� ���������� �����ϰ� �ֽ��ϴ�. ���� ���� ������ �������� ���� �Ǹ��� ������ �ź� �� ȸ�������� ���ѵ˴ϴ�. 
���ù��ɿ� ���� �������� ����
���, ���ڻ�ŷ� ����� �Һ��ں�ȣ�� ���� ���� �� ��������� ������ ���Ͽ� ������ �ʿ䰡 �ִ� ��� ȸ��� �������(��6��)���� ���� ������ �Ⱓ ���� ȸ�������� �����մϴ�. �� ��� ȸ��� �����ϴ� ������ �� ������ �������θ� �̿��ϸ� �����Ⱓ�� �Ʒ��� �����ϴ�.

- ��� �Ǵ� û��öȸ � ���� ��� : 5��
- ��ݰ��� �� ��ȭ ���� ���޿� ���� ��� : 5��
- �Һ����� �Ҹ� �Ǵ� ����ó���� ���� ��� : 3�� 
���������� ��3�� ����
�������� ������ü�� ���������� ��1��(���������� ó�� ����)���� ����� ���� �������� ó���ϸ�, ������ü�� ����, ������ Ư���� ���� �� ���������� ��ȣ������17�� �� ��18���� �ش��ϴ� ��쿡�� ���������� ��3�ڿ��� �����մϴ�.
�� [����] ������/ȫ���� ���� ȸ������
- �����޴� �� : �߽���ī��
- �������� : SR ȸ���� SRT ����ī��(���ϸ��� ����) �߱� �� �̿�
- �����׸� : �̸�, �������, ����, �����ּ�, �޴�����ȣ, �̸���, ���� ���� ����
- �����޴� ���� ����/�̿�Ⱓ : ȸ�� Ż�� �� �Ǵ� ������ü ���� öȸ �ñ���
- ���� ���� �ź� �� ������ : �� ���������� ������ ���� �������� �����ô���
 ��SR ȸ������ �� ������ ������ �����ϸ�, �̵��� �� SRT-���� ����ī�� ���� �� �̿��� ���ѵ˴ϴ�.

�� [����] ������/ȫ���� ���� ȸ������
- �����޴� �� : �ѱ�ö������
- �������� : �ѱ�ö������ �ο� �̰�
- �����׸� : �̸�, �޴�����ȣ, ���� ��ȭ��ȣ, �̸���
- �����޴� ���� ����/�̿�Ⱓ : �ο� �̰� �ñ���
- ���� ���� �ź� �� ������ : �� ���������� ������ ���� �������� �����ô���
 ��SR ȸ������ �� ������ ������ �����ϸ�, �̵��� �� SRT-�ѱ�ö�������� ���� �̿��� ���� �� �� �ֽ��ϴ�.</textarea>
 <br>
 <div style="font-size: 14px; color:gray; float:right; margin-right:40px;">
 �������� ���� �� �̿뿡 �����մϴ�.<b>(�ʼ�)</b><input id="check2" type="checkbox"></div><br>
 <div style="font-size: 14px; color:gray; float:right; margin-right:40px;">
 �������� ���� �� �̿뿡 �����մϴ�.(����)<input id="check3" type="checkbox"> </div><br>
 <div style="font-size: 14px; color:gray; float:right; margin-right:40px;">
 ������/ȫ���� ���� �������� ���� �� �̿뿡 �����մϴ�.(����)<input id="check4" type="checkbox"> </div><br>
 <div style="font-size: 14px; color:gray; float:right; margin-right:40px;">
 ���������� ��3�� ������ �����մϴ�.(����)<input id="check5" type="checkbox"><br>
 </div><br> 
 <div style="margin-top:20px; border: 1px solid lightgray; text-align: center; width: 900px; height:50px; font-size: 17px; background-color: #f9f9fa;">
        <div style="margin-top:12px; font-weight:bold; font-family: inherit; "> ���� ��� ����� �����մϴ�.  <input type="checkbox" id="checkAll" onclick="checkAll(this)"></div>
 </div>
 <div style="text-align: center;">
 <button style="margin-top:12px; width:150px; height: 50px; text-align: center; background-color: crimson; color:white;"  onclick="join()">Ȯ��</button>
 </div>
  
			</div>


		</div>
		<!-- end -->
	</div>

	</div>

	<!-- LOGIN  End   -->
	<jsp:include page="/view/container/containerBottom.jsp" flush="false" />
	<!-- ���� �κ� -->
	 
 
	<script type="text/javascript" src="/web/js/container/clock.js"
		charset="UTF-8"></script>
	 
 

 
 
 </body>
 <script type="text/javascript">
  
  function checkAll(obj){
     
	  
	 var obj1 =document.getElementById("check1");
	 var obj2 =document.getElementById("check2");
	 var obj3 =document.getElementById("check3");
	 var obj4 =document.getElementById("check4");
	 var obj5 =document.getElementById("check5");
	 
	if(obj.checked){
		obj1.checked=true; 
		 obj2.checked=true; 
		 obj3.checked=true; 
		 obj4.checked=true; 
		 obj5.checked=true; 
		 	
	}else{
		obj1.checked=false; 
		 obj2.checked=false; 
		 obj3.checked=false; 
		 obj4.checked=false; 
		 obj5.checked=false; 
		
	}
	  
  }
  
  function join(){
	  var obj1 =document.getElementById("check1");
		 var obj2 =document.getElementById("check2");
		 
	 if(obj1.checked&&obj2.checked){
		 
 location.href="/web/view/lim/register4.jsp";
 
 
	 }else{
		 alert('ȸ������� �������ּ���');
	 } 
	 
	 
  }
</script>





 </html>
 
 
 
 