<%@page import="bean.kwon.Users"%>
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
	padding: 10px;
}

.spanPass {
	width: 120px;
}

.table-ul {
	padding-left: 20px;
	margin: 0;
}

.table-li {
	font-size: 13px;
}

.discription {
	margin-left: 10px;
	font-size: 13px;
}

/* span {
	display: inline-block;
} */
/* 
input[type="text"] {
	display: inline-block;
	background-color: #F3F3F3;
	width: 150px;
	height: 30px;
	padding: 3px;
	margin: 3px;
}
 */
input[type="radio"] {
	margin-top: 0;
	width: 17px;
	height: 17px;
	border: 2px solid lightgray;
}

input[type="button"] {
	display: inline-block;
	font-weight: bold;
	background-color: crimson;
	color: snow;
	width: 150px;
	height: 40px;
	border: 0;
	border-radius: 0 7px;
	margin: 10px 1px;
}
</style>
<style>
.buttonTab:hover {
	background-color: crimson;
}

.tab4 {
	width: 940px;
	height: 700px;
}

.buttonTab {
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
.buttonBottom {
	hover: crimson;
	display: inline-block;
	font-weight: bold;
	color: white;
	background-color: crimson;
	height: 50px;
	border: 1px solid lightgray;
	border-radius: 0 7px;
	padding: 0 15px 5px 15px;
	width: 130px;
}
/* input {
	margin: 0;
	padding: 10px;
	border: 0;
	font-size: 15px;
} */
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

		var i,
			tabcontent,
			tablinks;
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
<%
request.setCharacterEncoding("EUC-KR");

Users user1 = (Users) session.getAttribute("user"); 
Users user2 = (Users) session.getAttribute("users"); 
System.out.println("user1="+user1);
System.out.println("user2="+user2);



String name = user1.getName();
System.out.println(name);
int userno = Integer.parseInt(request.getParameter("userno"));
%>


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
					style="cursor: pointer; text-decoration: none; color: black;">����������</a> <i style="cursor: default;">&gt;</i> <a
					href="/web/view/lim/modifymember/modifyMember.jsp"
					style="cursor: pointer; text-decoration: none; color: black;"
					class="tkting-method">ȸ����������</a>
				</span> <br /> <br /> <br />




				<!--  start-->
				<div
					style="width: 940px; padding: 0 30px 30px 30px; height: 1000px; background-color: white;">
					<div style="width: 940px; height: 50px;">
						<div style="text-align: center;">
							<button class="buttonTab"
								onclick="modifyTab(this,event,'modify')" >ȸ����������</button>
							<button class="buttonTab"
								onclick="modifyTab(this,event,'change')"  id="defaultOpen">�����ȣ����</button>
							<button class="buttonTab"
								onclick="modifyTab(this,event,'cerify')">�̸���/�޴���ȭ ����</button>
							<button class="buttonTab" onclick="modifyTab(this,event,'out')">ȸ��Ż��</button>
							<input type="hidden" id="changeMethod" name="changeMethod"
								value="change" />
						</div>
					</div>

					<div id="modify" class="tab4">
					<div style="width:900px; color:#666; height:30px; border:1px solid lightgray;  padding: 10px 30px 30px 5px; margin-top:20px; margin-bottom:20px;">
					 <ul>
					  <li><b><%=name %>(<%=userno %>)</b>���� ȸ�� �⺻���� �� �� �̿뱸�� �� �߰������� �����մϴ�. </li>
					  <li>�̸��� �� �޴���ȭ��ȣ�� ���ܺ� ������ ���ؼ��� ������ �����մϴ�. </li>
					  
					 </ul>
					
					</div>
					
						<form action="" method="post">
							<table class="table-wrapper">
								<colgroup>
									<col width="140px" />
									<col width="800px" />
								</colgroup>

								<tr>
									<th class="table-th">�̸�</th>
									<td class="table-td"><%=name %></td>
								</tr>
								<tr>
									<th class="table-th">��й�ȣ</th>
									<td class="table-td"><input type="button" value="��й�ȣ����"></input></td>
								</tr>
								<tr>
									<th class="table-th">�̸���</th>

									<td class="table-td"><span  ><input style="display: inline-block;
	background-color: #F3F3F3;
	width: 250px;
	height: 20px;
	padding: 3px;
	margin: 3px;
									"
											type="text" size="50" value="iamipro@naver.com"></span> <span
										class="spanPass"><input type="button" value="�̸��Ϻ���"></input></span> <span style="font-size: 14px;">*������
											�Ϸ�� �̸����Դϴ�.</span><br />


										<ul class="table-ul">
											<li class="table-li">�̸��� ������ �����ø� �ڼ� �������� �� �ۿ��� �̸��Ϸ�
												�α����Ͻ� �� �ֽ��ϴ�.</li>
											<li class="table-li">�̸����� ����Ͻø� ���೻��, ����Ʈ����, ö���ҽ� ���� ���������� �� �ֽ��ϴ�.</li>
											<li class="table-li">�̸��� ���� �� ������ ���ؼ���] ������ �����մϴ�.</li>
										</ul></td>
								</tr>
								<tr>
									<th class="table-th">������ȭ</th>
									<td class="table-td"><input style="display: inline-block;
	background-color: #F3F3F3;
	width: 150px;
	height: 20px;
	padding: 3px;
	margin: 3px;
									" type="text" size="20" /></td>
								</tr>
								<tr>
									<th class="table-th">�޴���ȭ</th>
									<td class="table-td"><span class="spanPass"><input style="display: inline-block;
	background-color: #F3F3F3;
	width: 150px;
	height: 20px;
	padding: 3px;
	margin: 3px;
									"
											type="text" size="20" /></span> <span class="spanPass"><input
											type="button" value="�޴���ȭ����"></input></span> <span  style="font-size: 14px;" class="spanPass">*������
											�Ϸ�� �޴���ȭ�Դϴ�.</span> </br>
										<ul class="table-ul">
											<li  class="table-li">�޴���ȭ��ȣ�� ����Ͻø� �ڼ� Ȩ������ �� �ۿ��� �޴���ȭ ��ȣ�� �α��� �� �� �ֽ��ϴ�.</li>
											<li  class="table-li">�޴���ȭ��ȣ ���� �� ������ ���ؼ��� ������ �����մϴ�.</li>
										</ul></td>
								</tr>
								<tr>
									<th class="table-th">�ּ�</th>
									<td class="table-td"><span class="spanPass"><input style="display: inline-block;
	background-color: #F3F3F3;
	width:70px;
	height: 20px;
	padding: 3px;
	margin: 3px;
									"
											type="text" size="8" /></span> <span class="spanPass"><input
											type="button" value="�˻�"></input></span> </br> <span class="spanPass"><input
										style="display: inline-block;
	background-color: #F3F3F3;
	width:250px;
	height: 20px;
	padding: 3px;
	margin: 3px;
									"	type="text" size="25" /></span> <span class="spanPass"><input
										style="display: inline-block;
	background-color: #F3F3F3;
	width: 250px;
	height: 20px;
	padding: 3px;
	margin: 3px;
									"	type="text" size="25" /></span></td>
								</tr>
								
								<tr>
								<th class="table-th">�̸��� ���ſ���</th>
								<td class="table-td"><input id="emailreceivable1" value="" name="emailreceivable1" type="radio" onclick="emailReceive('1')" /> �� &nbsp;&nbsp; <input
								id="emailreceivable2" name="emailreceivable2" value=""	type="radio" onclick="emailReceive('2')"/> �ƴϿ�
								 <input type="hidden" name="emailreceivable" id="emailreceivable" value=""></td>
								</tr>
							</table>
							  <div style="text-align: center;">
									<button class="buttonBottom">Ȯ��</button><button class="buttonBottom">���</button>
									<!-- <td class="table-td"><span class="spanPass"><button class="buttonBottom">Ȯ��</button></span><span class="spanPass"><button class="buttonBottom">���</button></span></td> -->
								</div>
						</form>

					</div>


					<div id="change" class="tab4"> 
					<div style="width:900px; color:#666; height:30px; border:1px solid lightgray;  padding: 10px 30px 30px 5px; margin-top:20px; margin-bottom:20px;">
					 <ul>
					  <li><b><%=name %>(<%=userno %>)</b>���� Ȩ������ �� ����߸� ��й�ȣ�� �����մϴ�. </li>
					  <li>���������� ���õ� ���� �Ǵ� ���� �ݺ� ���� ���� ������մϴ�. </li>
					  
					 </ul>
					
					</div>
					
					<div style="width:936px; height:380px;  border:1px solid lightgray; ">
						<div>
						<div style="padding:20px 0 20px 20px; width:448px; height:170px; float:left;">
						<div style="font-size:20px; font-weight:bold;  color:gray;">Ȩ������ ��й�ȣ ���� </div><br>
						�ڼ�Ȩ������ �� �ۿ��� ����ϴ� �α��� ��й�ȣ�Դϴ�.<br>
						���� �� ���ڸ� �����Ͽ� 10�ڸ� �̻����� �Է��Ͻʽÿ�.
						<table style="margin-top:15px; margin-bottom:15px;">
						 <tr>
						 <th class="table-th" style="width:120px;">���� ��й�ȣ</th> <td class="table-td" style="display: inline-block;
	background-color: #F3F3F3;"> <input type="text" style="display: inline-block;
	 
	 
	height: 15px;
	padding: 3px;
	margin: 3px;" size="30"> </td>
						 </tr>
						 <tr>
						 <th class="table-th" style="width:120px;">�ű� ��й�ȣ</th> <td class="table-td" style="display: inline-block;
	background-color: #F3F3F3;"> <input type="text" style="display: inline-block;
	 
	 
	height: 15px;
	padding: 3px;
	margin: 3px;" size="30"> </td>
						 </tr>
						 <tr>
						 <th class="table-th" style="width:120px;">��й�ȣ Ȯ��</th> <td class="table-td" style="display: inline-block;
	background-color: #F3F3F3;"> <input type="text" style="display: inline-block;
	 
	 
	height: 15px;
	padding: 3px;
	margin: 3px;" size="30"> </td>
						 </tr>
						</table>
						<div style="text-align: center;">
						  <button class="buttonBottom">Ȯ��</button>
						 </div>
						</div>
						<div style="padding:20px 0 0 10px;  width:448px; height:170px;float:left;">
						<div style="font-size:20px; font-weight:bold;  color:gray;">����߸� ��й�ȣ ����</div> <br>
						�ڵ��߸ű� �� �� â������ ����ϴ� ����߸� ��й�ȣ�Դϴ�.<br>
						���� 5�ڸ��� �Է��Ͻʽÿ�
						<table style="margin-top:15px; margin-bottom:15px;">
						 <tr>
						 <th class="table-th" style="width:120px;">���� ��й�ȣ</th> <td class="table-td" style="display: inline-block;
	background-color: #F3F3F3;"> <input type="text" style="display: inline-block;
	 
	 
	height: 15px;
	padding: 3px;
	margin: 3px;"  size="30"> </td>
						 </tr>
						  <tr>
						 <th class="table-th" style="width:120px;">�ű� ��й�ȣ</th> <td class="table-td" style="display: inline-block;
	background-color: #F3F3F3;"> <input type="text" style="display: inline-block;
	 
	 
	height: 15px;
	padding: 3px;
	margin: 3px;" size="30"> </td>
						 </tr>
						  <tr>
						 <th class="table-th" style="width:120px;">��й�ȣ Ȯ��</th> <td class="table-td" style="display: inline-block;
	background-color: #F3F3F3;"> <input type="text" style="display: inline-block;
	 
	 
	height: 15px;
	padding: 3px;
	margin: 3px;" size="30"> </td>
						 </tr>
						</table>
						<div style="text-align: center;">
						  <button class="buttonBottom">Ȯ��</button>
						 </div>
						
						</div>
						</div>
					</div>
					
					
					</div>
					<div id="cerify" class="tab4">
					<div style="width:900px; color:#666; height:30px; border:1px solid lightgray;  padding: 10px 30px 30px 5px; margin-top:20px; margin-bottom:20px;">
					 <ul>
					  <li><b><%=name %>(<%=userno %>)</b>���� ȸ�� �⺻���� �� �� �̿뱸�� �� �߰������� �����մϴ�. </li>
					  <li>�̸��� �� �޴���ȭ��ȣ�� ���ܺ� ������ ���ؼ��� ������ �����մϴ�. </li>
					  
					 </ul>
					
					</div>
						<div style="width:936px; height:250px;  border:1px solid lightgray; ">
						<div>
						<div style="padding:20px 0 20px 20px; width:448px; height:170px; float:left;">
						<div style="font-size:20px; font-weight:bold;  color:gray;">�̸��� ����/���� </div><br>
						�α��ο� ����� �̸����� �����մϴ�.<br>
						������û �˾�â�� �̸��Ϸ� �߼۵� �����ڵ带 �Է��Ͻʽÿ�.
						<table style="margin-top:15px; margin-bottom:15px;">
						 <tr>
						 <th class="table-th" style="width:120px;">�̸���</th> <td class="table-td" style="display: inline-block;
	background-color: #F3F3F3;"> <input type="text" style="display: inline-block;
	 
	 
	height: 15px;
	padding: 3px;
	margin: 3px;" size="30"> </td>
						 </tr>
						 
						</table>
						<div style="text-align: center;">
						  <button class="buttonBottom">Ȯ��</button>
						 </div>
						</div>
						<div style="padding:20px 0 0 10px;  width:448px; height:170px;float:left;">
						<div style="font-size:20px; font-weight:bold;  color:gray;">�޴���ȭ ����/����</div> <br>
						�α��ο� ����� �޴���ȭ��ȣ�� �����մϴ�.<br>
						�޴���ȭ ����/������ �Ϸ翡 1ȸ�� �����մϴ�.
						<table style="margin-top:15px; margin-bottom:15px;">
						 <tr>
						 <th class="table-th" style="width:120px;">�޴���ȭ��ȣ</th> <td class="table-td" style="display: inline-block;
	background-color: #F3F3F3;"> <input type="text" style="display: inline-block;
	 
	 
	height: 15px;
	padding: 3px;
	margin: 3px;" size="30"> </td>
						 </tr>
						 
						</table>
						<div style="text-align: center;">
						  <button class="buttonBottom">Ȯ��</button>
						 </div>
						
						</div>
						</div>
					</div>
					</div>
					
					<div id="out" class="tab4">
					<div style="width:900px; color:#666; height:30px; border:1px solid lightgray;  padding: 10px 30px 30px 5px; margin-top:20px; margin-bottom:20px;">
					 <ul>
					  <li>�Է��Ͻ� ȸ������ Ȯ�� �� ȸ��Żȸ�� �����մϴ�. </li>
					  <li>������ ����Ȯ�� ������� ����Ȯ���� �Ұ����Ͻ� ��� �����ͷ� �����Ͻñ� �ٶ��ϴ�. </li>
					  
					 </ul>
					
					</div>
					<div style="width:935px; height:150px;  border:1px solid lightgray; ">
					  <table style= "padding: 20px 200px  50px 300px;">
					   <tr>
					     <th style="width:120px;" >�̸�</th>
					     <td  ><input style="display: inline-block;
	background-color: #F3F3F3;
	width: 150px;
	height: 15px;
	padding: 3px;
	margin: 3px;" type="text" size="20"></td>
					   </tr>
					   <tr>
					    <th style="width:120px;">ȸ����ȣ</th>
					     <td  ><input type="text" style="display: inline-block;
	background-color: #F3F3F3;
	width: 150px;
	height: 15px;
	padding: 3px;
	margin: 3px;"  size="20"></td>
					   </tr>
					   <tr>
					    <th style="width:120px;">Żȸ����</th>
					     <td  ><input type="text" style="display: inline-block;
	background-color: #F3F3F3;
	width: 300px;
	height: 15px;
	padding: 3px;
	margin: 3px;"  size="30"></td>
					   </tr>
					  
					  
					  </table>
					  <div style="text-align: center;">
					   <button class="buttonBottom">����</button>
					</div>
					
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
