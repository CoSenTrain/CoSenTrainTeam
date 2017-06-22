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
					style="width: 940px; padding: 0 30px 30px 30px; height: 500px; background-color: white;">

 
<div id="dv">
		<h2
			style="text-align: center; padding-bottom: 5px; font-weight: bold; font-family: �������; color: #666;">
			�������� �� ���Կ��� Ȯ��
			</h3>
			<h4 style="text-align: center; padding-bottom: 5px; color: #666;">
				�޴���ȭ�� ���Ͽ� SRȸ������ ���θ� Ȯ���Ͻ� �� �ֽ��ϴ�.
				</h5>

				<div>
					<div>
						<div style="border: 1px solid  lightgray; width: 550px; height: 220px; margin-left: 200px; margin-right: 200px;">

							<!-- <img alt="�޴���ȭ ����" src="/web/img/lim/join/phone.JPG"
				onclick="lim_phone()"> -->
							<div style="text-align: center; ">
								<button
									style=" margin: 0 auto; color:#333; border:1px solid lightgray;  margin-top: 50px; width: 260px; border: 0; border-radius: 0 7px; cursor: pointer; height: 55px;"
									onclick="lim_phone()">
									<i style="font-size: 30px" class="fa fa-mobile" ></i> <i style="text-shadow: 1px 1px lightgray; font-weight: bold; font-size: 15px; margin :0 0 30 0 auto;"> �޴���ȭ
										����</i>
								</button>
							</div>
							<div style="text-align: center">
								<div
									style="margin: 0 auto; margin-top: 20px; color: #666; font-size: 14px;">����
									������ �޴���ȭ ������ ���� ȸ������ ��û��</div>
							</div>
							<div style="text-align: center">
								<div
									style="margin: 0 auto; margin-top: 10px; color: #666; font-size: 14px;">���Ͻø�
									�޴���ȭ ���� ��ư�� ���� ������ ������ �ֽʽÿ�.</div>
							</div>
						</div>
						<div>
							<p style="color: #666; text-align: center; font-size: 14px;">
								�޴���ȭ �����̶�? �ֹε�Ϲ�ȣ ��ü�������� �ֹε�� ��ȣ ��� ����<br /> ���Ƿ� ����� �޴���ȭ ������
								���� ����Ȯ���� �ϰ�
								�˴ϴ�.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							</p>
						</div>
					</div>
					<div style="border:1px solid lightgray; margin-left: 200px; margin-right: 200px; margin-top: 20px; font-size: 13px; ">
						<div style="text-align: center; color:#c7187d; font-weight: bold;">
							<h3><label><b>���ͳ� �ͽ��÷η�(IE)���� �������� ��</b> <br>
							<b>'���� ��ũ��Ʈ�� �������� �ʽ��ϴ�.'��� �޽����� ������ ���</b></label></h3>
						</div>
						<div style="margin:10px;  color: #666;">
						<ul>
							<li><b>[���ͳ� �ɼ�]</b>><b>[����]</b>�ǿ��� <b>[�ŷ��Ҽ� �ִ� ����Ʈ]</b>�� �̵��մϴ�.</li>
							<li><b>[����Ʈ]</b>��ư�� Ŭ���� �� <b>http://localhost:8181/web/view/container/container.jsp</b> �� �߰��� ���� �ٽ� �õ���
								�ֽʽÿ�.</li>
						</ul>
						</div>
					</div>
				</div>
	</div>
					<%-- <jsp:include page="<%=page2%>" flush="false" />
 --%>				</div>
			</div>


		</div>
		<!-- end -->
	</div>

	</div>

	<!-- LOGIN  End   -->
	<jsp:include page="/view/container/containerBottom.jsp" flush="false" />
	<!-- ���� �κ� -->
	</div>
<script src='/web/view/lim/test.js'></script>
	<script type="text/javascript" src="/web/js/container/clock.js"
		charset="UTF-8"></script>
	<script type="text/javascript">
		function lim_phone() {

			window.open("popup.jsp", "id",
					"left=830,top=400,width=420,height=420");

		}
	</script>
</body>

</html>
