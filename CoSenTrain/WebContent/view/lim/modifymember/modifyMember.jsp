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
<style type="text/css">
.table-wrapper {
	border-spacing: 0;
	border-top: 2px solid #F3F3F3;
	width: 940px;
	background-color: white;
}

.table-th {
	background-color: #F3F3F3;
	padding: 10px;
	text-align: left;
}

.table-td {
	background-color: white;
	width: 900px;
	padding: 10px;
}

.spanPass {
	width: 120px;
}

ul {
	padding-left: 20px;
	margin: 0;
}

ul li {
	font-size: 13px;
}

.discription {
	margin-left: 10px;
	font-size: 13px;
}

span {
	display: inline-block;
}

input[type="text"] {
	display: inline-block;
	background-color: #F3F3F3;
	padding: 3px;
	margin: 3px;
}

input[type="radio"] {
	margin-top: 0;
	width: 17px;
	height: 17px;
	border: 2px solid lightgray;
}

input[type="button"] {
	display: inline-block;
	font-weight: bold;
	color: snow;
	width: 150px;
	height: 40px;
	border: 0;
	border-radius: 0 7px;
	margin: 10px 1px;
}
</style>
<style>
button:hover {
	background-color: crimson;
}

button {
	hover: pink;
	display: inline-block;
	font-weight: bold;
	color: gray;
	background-color: snow;
	height: 50px;
	border: 1px solid lightgray;
	border-radius: 0 7px;
	padding: 0 15px 5px 15px;
	width: 230px;
}

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
<script type="text/javascript">
	function modifyTab(o, evt, cityName) {
		//openCity(o, evt, cityName) {
		document.getElementById("changeMethod").value = cityName;

		var tktingMethods = document.getElementsByClassName("tkting-method");
		for (var i = 0; i < tktingMethods.length; i++) {
			tktingMethods[i].innerText = o.innerText;
		}

		var i, tabcontent, tablinks;
		tabcontent = document.getElementsByClassName("tab4");
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
<script type="text/javascript">
	function start() {

		document.getElementById("defaultOpen").click();
	}
</script>

<body onload="start()">
	<div class="container">


		<jsp:include page="/view/container/containerTop.jsp" flush="false" />
		<!-- LOGIN  Start -->
		<div class="login-wrapper">
			<div class="login-wrapper-center">
				<br />
				<h1 style="padding: 30px 30px 0 30px;" class="tkting-method">ȸ����������</h1>
				<span style="float: right; font-size: 12px; margin-right: 30px;">
					<a href="/web/view/container/container.jsp" class="fa fa-home"
					style="cursor: pointer; text-decoration: none; color: black;"></a>
					<i style="cursor: default;">&gt;</i> <a href="#"
					style="cursor: pointer; text-decoration: none; color: black;">Cosen
						ȸ��</a> <i style="cursor: default;">&gt;</i> <a
					href="/web/view/lim/modifymember/modifyMember.jsp"
					style="cursor: pointer; text-decoration: none; color: black;"
					class="tkting-method">ȸ����������</a>
				</span> <br /> <br /> <br />




				<!--  start-->
				<div
					style="width: 940px; padding: 0 30px 30px 30px; height: 1000px; background-color: white;">

					<div style="text-align: center;">
						<button class="buttonTab" onclick="modifyTab(this,event,'modify')"
							id="defaultOpen">��������</button>
						<button class="buttonTab" onclick="modifyTab(this,event,'change')">�����ȣ����</button>
						<button class="buttonTab" onclick="modifyTab(this,event,'cerify')">�̸���/�޴���ȭ
							����</button>
						<button class="buttonTab" onclick="modifyTab(this,event,'out')">ȸ��Ż��</button>
						<input type="hidden" id="changeMethod" name="changeMethod"
							value="change" />
					</div>
					<div id="modify" class="tab4">
						<form action="" method="post">
							<table class="table-wrapper">
							 <colgroup>
								<col width="100px" />
								<col />
							</colgroup>
 
								<tr>
									<th class="table-th">�̸�</th>
									<td class="table-td">�Ӹ��</td>
								</tr>
								<tr>
									<th class="table-th">��й�ȣ</th>
									<td class="table-td"><input type="button">��й�ȣ����</input></td>
								</tr>
								<tr>
									<th class="table-th">�̸���</th>

									<td class="table-td"><span class="spanPass"><input
											type="text" size="20" value="iamipro@naver.com"></span> <span
										class="spanPass"><input type="button">�̸��Ϻ���</input></span> <span
										class="spanPass"><td class="table-td">*�����̿Ϸ��
												�̸����Դϴ�.</span></br>



										<ul>
											<li>�̸��� ������ �����ø� �ڼ� �������� �� �ۿ��� �̸��Ϸ� �α����Ͻ� �� �ֽ��ϴ�.</li>
											<li>�̸��� ���� �� ������ ���ؼ��� ������ �����մϴ�.</li>
										</ul></td>
								</tr>
								<tr>
									<th class="table-th">������ȭ</th>
									<td class="table-td"><input type="text" size="20" /></td>
								</tr>
								<tr>
									<th class="table-th">�޴���ȭ</th>
									<td class="table-td"><span class="spanPass"><input
											type="text" size="20" /></span> <span class="spanPass"><input
											type="button">�޴���ȭ����</input></span> <span class="spanPass">*������
											�Ϸ�� �޴���ȭ�Դϴ�.</span> </br>
										<ul>
											<li>�޴���ȭ��ȣ�� ����Ͻø� �ڼ� Ȩ������ �� �ۿ��� �޴���ȭ ��ȣ�� �α��� �� �� �ֽ��ϴ�.</li>
											<li>�޴���ȭ��ȣ ���� �� ������ ���ؼ��� ������ �����մϴ�.</li>
										</ul></td>
								</tr>
								<tr>
									<th class="table-th">�ּ�</th>
									<td class="table-td"><span class="spanPass"><input
											type="text" size="8" /></span> <span class="spanPass"><input
											type="button">�˻�</input></span> </br> <span class="spanPass"><input
											type="text" size="25" /></span> <span class="spanPass"><input
											type="text" size="25" /></span></td>
								</tr>
								<tr>
									<td class="table-td"><span class="spanPass"><input
											type="button">Ȯ��</input></span><span class="spanPass"><input
											type="button">���</input></span></td>
								</tr>
							</table>
						</form>

					</div>
					<div id="change" class="tab4">change</div>
					<div id="cerify" class="tab4">cerify</div>
					<div id="out" class="tab4">out</div>




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
