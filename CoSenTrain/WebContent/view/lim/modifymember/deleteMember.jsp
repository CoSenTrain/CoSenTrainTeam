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
<script src="https://code.jquery.com/jquery-2.2.4.min.js"></script>	
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
	background-color: #666;
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
	color: white;
}

.buttonTab1:hover {
	background-color: crimson;
	color: white;
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
.buttonSearch{
display: inline-block;
	font-weight: bold;
	background-color: #666;
	color:snow; 
	width: 150px;
	height: 40px;
	border: 0;
	border-radius: 0 7px;
	margin: 10px 1px;
 
}

a {
	text-decoration: none;
	color: inherit;
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

.buttonBottom1 {
	display: inline-block;
	font-weight: bold;
	color: white;
	background-color: #666;
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
<%
	request.setCharacterEncoding("EUC-KR");
	Users u = (Users) session.getAttribute("user");

	String name = u.getName();
	String pwweb = u.getPwWeb();
	int userno = u.getUserNo();
	int pwticketing = u.getPwTicketing();
	String email = u.getEmail();
	String gender = u.getGender();
	String phone = u.getPhone();
	application.setAttribute("name", name);
	application.setAttribute("userno", userno);
	application.setAttribute("email", email);
	application.setAttribute("gender", gender);
	application.setAttribute("phone", phone);
%>
<script type="text/javascript">
  $(function(){
	  /* $("#second").attr('disabled','disabled');
	  $("#first:text").keyup(function(){
		 $("#second:text").val($("#first:text").val()); 
	  }); */
	  
	  
	/*   $("#pwweb2:password").keyup(function(){
		 $("#pwweb3:password").val(''); 
	  });
	  $("#pwweb3:password").keyup(function(){
		 if($("#pwweb2:password").val()!=""){
			 if($("#pwweb2:password").val()!=$("#pwweb3:password").val()){
				 $("div#aa").remove();
				 $("span#ab").
				 append('<div id="aa">��й�ȣ�� Ʋ���ϴ�</div>').find("div").
				 css({'backgroundColor':'gray'});
			 }else{
				 $("div#aa").remove();
				 $("span#ab").
				 append('<div>��й�ȣ�� �½��ϴ�</div>').find("div").
				 css({'backgroundColor':'blue'});
			 }
		 } 
	  }); */
	  
	  
  });
</script>
<script type="text/javascript">
function start() {
	document.getElementById("defaultOpen").click();
 
	 
}
function modifyTab(o, evt, cityName) {
	//openCity(o, evt, cityName)  
	 
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
					style="cursor: pointer; text-decoration: none; color: black;">����������</a>
					<i style="cursor: default;">&gt;</i> <a
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
								onclick="modifyTab(this,event,'change')" >�����ȣ����</button>
							<button class="buttonTab"
								onclick="modifyTab(this,event,'cerify')" >�̸���/�޴���ȭ ����</button>
							<button class="buttonTab" onclick="modifyTab(this,event,'out')" id="defaultOpen">ȸ��Ż��</button>
							<input type="hidden" id="changeMethod" name="changeMethod"
								value="out" />
						</div>
					</div>

					<div id="modify" class="tab4">
						<div
							style="width: 900px; color: #666; height: 30px; border: 1px solid lightgray; padding: 10px 30px 30px 5px; margin-top: 20px; margin-bottom: 20px;">
							<ul>
								<li><b><%=name%>(<%=userno%>)</b>���� ȸ�� �⺻���� �� �� �̿뱸�� ��
									�߰������� �����մϴ�.</li>
								<li>�̸��� �� �޴���ȭ��ȣ�� ���ܺ� ������ ���ؼ��� ������ �����մϴ�.</li>

							</ul>

						</div>

						<form action="/web/view/lim/modifymember/modifyComplete.jsp"
							method="post" name="modifyFrm">
							<table class="table-wrapper">
								<colgroup>
									<col width="140px" />
									<col width="800px" />
								</colgroup>

								<tr>
									<th class="table-th">�̸�</th>
									<td class="table-td"><%=name%></td>
								</tr>
								<tr>
									<th class="table-th">��й�ȣ</th>
									<td class="table-td"><a
										href="/web/view/lim/modifymember/modifyPassword.jsp"><input
											type="button" value="��й�ȣ����"></a></input></td>
								</tr>
								<tr>
									<th class="table-th">�̸���</th>

									<td class="table-td"><span><input
											style="display: inline-block; background-color: #F3F3F3; width: 250px; height: 20px; padding: 3px; margin: 3px;"
											type="text" size="50" value="<%=email%>"></span> <span
										class="spanPass"><a
											href="/web/view/lim/modifymember/cerifyEmail.jsp"><input
												type="button" value="�̸��Ϻ���"></input></a></span> <span
										style="font-size: 14px;">*������ �Ϸ�� �̸����Դϴ�.</span><br />


										<ul class="table-ul">
											<li class="table-li">�̸��� ������ �����ø� �ڼ� �������� �� �ۿ��� �̸��Ϸ�
												�α����Ͻ� �� �ֽ��ϴ�.</li>
											<li class="table-li">�̸����� ����Ͻø� ���೻��, ����Ʈ����, ö���ҽ� ����
												���������� �� �ֽ��ϴ�.</li>
											<li class="table-li">�̸��� ���� �� ������ ���ؼ���] ������ �����մϴ�.</li>
										</ul></td>
								</tr>
								<tr>
									<th class="table-th">������ȭ</th>
									<td class="table-td"><input
										style="display: inline-block; background-color: #F3F3F3; width: 150px; height: 20px; padding: 3px; margin: 3px;"
										type="text" size="20" id="tel" name="tel" value="" /></td>
								</tr>
								<tr>
									<th class="table-th">�޴���ȭ</th>
									<td class="table-td"><span class="spanPass"><input
											style="display: inline-block; background-color: #F3F3F3; width: 150px; height: 20px; padding: 3px; margin: 3px;"
											type="text" size="20" value="<%=phone%>" /></span> <span
										class="spanPass"><a
											href="/web/view/lim/modifymember/cerifyEmail.jsp"> <input
												type="button" value="�޴���ȭ����"></a></input></span> <span
										style="font-size: 14px;" class="spanPass">*������ �Ϸ��
											�޴���ȭ�Դϴ�.</span> </br>
										<ul class="table-ul">
											<li class="table-li">�޴���ȭ��ȣ�� ����Ͻø� �ڼ� Ȩ������ �� �ۿ��� �޴���ȭ
												��ȣ�� �α��� �� �� �ֽ��ϴ�.</li>
											<li class="table-li">�޴���ȭ��ȣ ���� �� ������ ���ؼ��� ������ �����մϴ�.</li>
										</ul></td>
								</tr>
								<tr>
									<th class="table-th">�ּ�</th>
									<td class="table-td"><span class="spanPass"><input
											style="display: inline-block; background-color: #F3F3F3; width: 70px; height: 20px; padding: 3px; margin: 3px;"
											type="text" size="8" id="zip" name="zip" value="" /></span> <span
										class="spanPass">
											<button class="buttonSearch">
												<a href="javascript:zipCodeSearch()">�˻�</a> 
											</button>
									</span> </br> <span class="spanPass"><input
											style="display: inline-block; background-color: #F3F3F3; width: 250px; height: 20px; padding: 3px; margin: 3px;"
											type="text" size="25" id="addr1" name="addr1" value="" /></span> <span
										class="spanPass"><input
											style="display: inline-block; background-color: #F3F3F3; width: 250px; height: 20px; padding: 3px; margin: 3px;"
											type="text" size="25" id="addr2" name="addr2" value=""
											onblur="addressCheck()" /><input type="hidden" id="addr"
											name="addr" value="" /><input type="hidden" id="addr3"
											name="addr3" value="" /> </span></td>
								</tr>

								<tr>
									<th class="table-th">�̸��� ���ſ���</th>
									<td class="table-td"><input id="emailreceivable1" value=""
										name="emailreceivable1" type="radio"
										onclick="emailReceive('1')" /> �� &nbsp;&nbsp; <input
										id="emailreceivable2" name="emailreceivable1" value=""
										type="radio" onclick="emailReceive('2')" /> �ƴϿ� <input
										type="hidden" name="emailreceivable" id="emailreceivable"
										value=""></td>
								</tr>
								
							</table>
							<div style="text-align: center;">
								<button class="buttonBottom" onclick="modifySubmit()">Ȯ��</button>
								<button class="buttonBottom1">���</button>
							</div>
							</form>
					</div>


					<div id="change" class="tab4">
						<div
							style="width: 900px; color: #666; height: 30px; border: 1px solid lightgray; padding: 10px 30px 30px 5px; margin-top: 20px; margin-bottom: 20px;">
							<ul>
								<li><b><%=name%>(<%=userno%>)</b>���� Ȩ������ �� ����߸� ��й�ȣ��
									�����մϴ�.</li>
								<li>���������� ���õ� ���� �Ǵ� ���� �ݺ� ���� ���� ������մϴ�.</li>

							</ul>

						</div>

						<div
							style="width: 936px; height: 380px; border: 1px solid lightgray;">
							<div>
								<div
									style="padding: 20px 0 20px 20px; width: 448px; height: 170px; float: left;">
									<div style="font-size: 20px; font-weight: bold; color: gray;">Ȩ������
										��й�ȣ ����</div>
									<br> �ڼ�Ȩ������ �� �ۿ��� ����ϴ� �α��� ��й�ȣ�Դϴ�.<br> ���� �� ���ڸ� �����Ͽ�
									10�ڸ� �̻����� �Է��Ͻʽÿ�.

									<form action="/web/view/lim/modifymember/pwwebChange.jsp"
										method="post" name="pwwebfrm">
										<table style="margin-top: 15px; margin-bottom: 15px;">
											<tr>
												<th class="table-th" style="width: 120px;">���� ��й�ȣ</th>
												<td class="table-td"
													style="display: inline-block; background-color: #F3F3F3;">
													<input type="password"
													style="display: inline-block; height: 15px; padding: 3px; margin: 3px;"
													size="30" id="pwweb1" name="pwweb1" value=""
													onblur="pwWeb1()"/>
													<input type="hidden" id="pwwebhidden" name="pwwebhidden" value="<%=pwweb%>"/>
												    <div id="aa"></div>
												</td>
											</tr>
											<tr>
												<th class="table-th" style="width: 120px;">�ű� ��й�ȣ</th>
												<td class="table-td"
													style="display: inline-block; background-color: #F3F3F3;">
													<input type="password"
													style="display: inline-block; height: 15px; padding: 3px; margin: 3px;"
													size="30" id="pwweb2" name="pwweb2" value="">
												</td>
											</tr>
											<tr>
												<th class="table-th" style="width: 120px;">��й�ȣ Ȯ��</th>
												<td class="table-td"
													style="display: inline-block; background-color: #F3F3F3;">
													<input type="password"
													style="display: inline-block; height: 15px; padding: 3px; margin: 3px;"
													size="30" id="pwweb3" name="pwweb3" value=""
													onblur="pwWebCheck()"> <input type="hidden"
													id="pwweb" name="pwweb" value="" />
													<span id="ab"></span>
												</td>
											</tr>
										</table>
									
									<div style="text-align: center;">
										<button class="buttonBottom" onclick="pwWebSubmit()">Ȯ��</button>
									</div>
									</form>
								</div>
								<div
									style="padding: 20px 0 0 10px; width: 448px; height: 170px; float: left;">
									<div style="font-size: 20px; font-weight: bold; color: gray;">����߸�
										��й�ȣ ����</div>
									<br> �ڵ��߸ű� �� �� â������ ����ϴ� ����߸� ��й�ȣ�Դϴ�.<br> ���� 5�ڸ���
									�Է��Ͻʽÿ�
									<form action="/web/view/lim/modifymember/pwTicketingChange.jsp"
										method="post" name="pwTicketfrm">
										<table style="margin-top: 15px; margin-bottom: 15px;">
											<tr>
												<th class="table-th" style="width: 120px;">���� ��й�ȣ</th>
												<td class="table-td"
													style="display: inline-block; background-color: #F3F3F3;">
													<input type="text"
													style="display: inline-block; height: 15px; padding: 3px; margin: 3px;"
													size="30" id="pwTicket1" name="pwTicket1" value=""
													onblur="pwTicket()"> <input type="hidden" id="tickethidden" name="tickethidden" value="<%=pwticketing%>">
												</td>
											</tr>
											<tr>
												<th class="table-th" style="width: 120px;">�ű� ��й�ȣ</th>
												<td class="table-td"
													style="display: inline-block; background-color: #F3F3F3;">
													<input type="text"
													style="display: inline-block; height: 15px; padding: 3px; margin: 3px;"
													size="30" id="pwTicket2" name="pwTicket2" value="">
												</td>
											</tr>
											<tr>
												<th class="table-th" style="width: 120px;">��й�ȣ Ȯ��</th>
												<td class="table-td"
													style="display: inline-block; background-color: #F3F3F3;">
													<input type="text"
													style="display: inline-block; height: 15px; padding: 3px; margin: 3px;"
													size="30" id="pwTicket3" name="pwTicket3" value=""
													onblur="pwTicketCheck()"> <input type="hidden"
													id="pwticketing" name="pwticketing" value="">
												</td>
											</tr>
										</table>
									
									<div style="text-align: center;">
										<button class="buttonBottom" onclick="pwTicketingSubmit()">Ȯ��</button>
									</div>
                                     </form>
								</div>
							</div>
						</div>


					</div>
					<div id="cerify" class="tab4">
						<div
							style="width: 900px; color: #666; height: 30px; border: 1px solid lightgray; padding: 10px 30px 30px 5px; margin-top: 20px; margin-bottom: 20px;">
							<ul>
								<li><b><%=name%>(<%=userno%>)</b>���� ȸ�� �⺻���� �� �� �̿뱸�� ��
									�߰������� �����մϴ�.</li>
								<li>�̸��� �� �޴���ȭ��ȣ�� ���ܺ� ������ ���ؼ��� ������ �����մϴ�.</li>

							</ul>

						</div>
						<div
							style="width: 936px; height: 250px; border: 1px solid lightgray;">
							<div>
								<div
									style="padding: 20px 0 20px 20px; width: 448px; height: 170px; float: left;">
									<div style="font-size: 20px; font-weight: bold; color: gray;">�̸���
										����/����</div>
									<br> �α��ο� ����� �̸����� �����մϴ�.<br> ������û �˾�â�� �̸��Ϸ� �߼۵�
									�����ڵ带 �Է��Ͻʽÿ�.
									<table style="margin-top: 15px; margin-bottom: 15px;">
										<tr>
											<th class="table-th" style="width: 120px;">�̸���</th>
											<td class="table-td"
												style="display: inline-block; background-color: #F3F3F3;">
												<input type="text"
												style="display: inline-block; height: 15px; padding: 3px; margin: 3px;"
												size="30">
											</td>
										</tr>

									</table>
									<div style="text-align: center;">
										<button class="buttonBottom">Ȯ��</button>
									</div>
								</div>
								<div
									style="padding: 20px 0 0 10px; width: 448px; height: 170px; float: left;">
									<div style="font-size: 20px; font-weight: bold; color: gray;">�޴���ȭ
										����/����</div>
									<br> �α��ο� ����� �޴���ȭ��ȣ�� �����մϴ�.<br> �޴���ȭ ����/������ �Ϸ翡 1ȸ��
									�����մϴ�.

									<table style="margin-top: 15px; margin-bottom: 15px;">
										<tr>
											<th class="table-th" style="width: 120px;">�޴���ȭ��ȣ</th>
											<td class="table-td"
												style="display: inline-block; background-color: #F3F3F3;">
												<input type="text"
												style="display: inline-block; height: 15px; padding: 3px; margin: 3px;"
												size="30">
											</td>
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
						<div
							style="width: 900px; color: #666; height: 30px; border: 1px solid lightgray; padding: 10px 30px 30px 5px; margin-top: 20px; margin-bottom: 20px;">
							<ul>
								<li>�Է��Ͻ� ȸ������ Ȯ�� �� ȸ��Żȸ�� �����մϴ�.</li>
								<li>������ ����Ȯ�� ������� ����Ȯ���� �Ұ����Ͻ� ��� �����ͷ� �����Ͻñ� �ٶ��ϴ�.</li>

							</ul>

						</div>
						<div
							style="width: 935px; height: 150px; border: 1px solid lightgray;">
							<form action="deleteMemberComplete.jsp"
								method="post" name="deleteFrm">
								<table style="padding: 20px 200px 50px 300px;">
									<tr>
										<th style="width: 120px;">�̸�</th>
										<td><input
											style="display: inline-block; background-color: #F3F3F3; width: 150px; height: 15px; padding: 3px; margin: 3px;"
											type="text" size="20" id="name" name="name" value=""> <input type="hidden" id="n" name="n" value="<%=name%>"> </td>
									</tr>
									<tr>
										<th style="width: 120px;">ȸ����ȣ</th>
										<td><input type="text"
											style="display: inline-block; background-color: #F3F3F3; width: 150px; height: 15px; padding: 3px; margin: 3px;"
											size="20" id="userno" name="userno" value=""><input type="hidden" id="u" name="u" value="<%=userno%>"> </td>
									</tr>
									<tr>
										<th style="width: 120px;">Żȸ����</th>
										<td><input type="text"
											style="display: inline-block; background-color: #F3F3F3; width: 300px; height: 15px; padding: 3px; margin: 3px;"
											size="30" id="delComment" name="delComment" value=""></td>
									</tr>


								</table>
							
							<div style="text-align: center;">
								<button class="buttonBottom" onclick="deleteMember()">����</button>
							</div>
                             </form>
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
<script type="text/javascript">
	
	
	function emailReceive(obj){
      var obt = document.getElementById("emailreceivable");
		if(obj==1){
			obt.value='Y';
		}else if(obj==2){
			obt.value='N';
		}
		
	}
	function addressCheck(){
		var obj1 = document.getElementById("zip");
		var obj2 = document.getElementById("addr1");
		var obj3 = document.getElementById("addr2");
		var obj4 = document.getElementById("addr");
		
		obj4.value=obj1.value+' '+obj2.value+' '+obj3.value;
		alert(obj4.value);
	}
	function checkModify(){
		var obj1 = document.getElementById("zip");
		var obj2 = document.getElementById("addr1");
		var obj3 = document.getElementById("addr2");
		var obj4 = document.getElementById("addr3");
		var obj5 = document.getElementById("addr");
		var obj6 = document.getElementById("tel");
		var obj7 = document.getElementById("emailreceivable");
	    
		if(obj1.value!=""&&obj2.value!=""&&obj3.value!=""&&obj4.value!=""&&obj5.value!=""&&obj6.value!=""&&obj7.value!=""){
	    	return true;
	    	
	    }else{
	    	alert('������������� �Է����ּ���');
	    }
		 
	
	}
	
	function modifySubmit(){
     		 
		  if(checkModify()){
		   var obj=document.modifyFrm;
			obj.submit();
		   alert('�����մϴ�.');
		 }else{
			 alert('�Է»����� ��� �Է����ּ���');
		 }  
	   
	}
	
	function zipCodeSearch(){
		  window.open("zipCode2.jsp", "zip",
			"left=800,top=400,width=400,height=400");
		  
		  
	  }
	
	function pwWeb1(){
		 var obj = document.getElementById("pwweb1");
		var obj1 = document.getElementById("pwwebhidden");
		if(obj.value==obj1.value){
			alert('�н����尡 �ùٸ��ϴ�.');
			return true;
		}else{
			alert('�н����尡 �ùٸ��� �ʽ��ϴ�. �ٽ� �Է����ּ���');
		} 
		
	}
	
	function pwWebCheck(){
		var obj1 = document.getElementById("pwweb2");
		var obj2 = document.getElementById("pwweb3");
		var obj3 = document.getElementById("pwweb");
		
		if(obj1.value==obj2.value){
			alert('��ġ�մϴ�. Ȯ���� �����ø� ����˴ϴ�.');
		   	obj3.value=obj1.value;
		  
		}else{
			alert('�н����尡 �ٸ��ϴ�.');
		}
	}
	
		
	function pwWebSubmit(){
		 
		var obj3 = document.getElementById("pwweb");
		
		if(obj3.value!=""&&pwWeb()){
		var obj = document.pwwebfrm;
          obj.submit();			
		}else{
			alert('�н����带 �Է����ּ���');
		}
		
		
	}
		
	function pwTicket(){
	  var obj = document.getElementById("pwTicket1");
	  var obj1 = document.getElementById("tickethidden");
		if(obj.value==obj1.value){
		    alert('��й�ȣ�� ��ġ�մϴ�.');			
		     return true;
		}else{
			alert('��й�ȣ�� Ȯ�����ּ���');
		}
	}
	
	function pwTicketCheck(){
		 var obj1 = document.getElementById("pwTicket2");
		 var obj2 = document.getElementById("pwTicket3");
		 var obj3 = document.getElementById("pwticketing");
		if(obj1.value==obj2.value){
			alert('��й�ȣ�� ��ġ�մϴ�.');
		    obj3.value=obj1.value;
			
		}else{
			alert('��й�ȣ�� Ȯ�����ּ���');
		}
		 
	}
	function pwTicketingSubmit(){
		
		 var obj3 = document.getElementById("pwticketing");
		if(obj3.value!=""&&pwTicket()){
			var obj = document.pwTicketfrm;
			obj.submit();
		}else{
			alert('��й�ȣ�� �Է����ּ���');
		}
		
	}
	
	function deleteMember(){
		 
		var obj1=document.getElementById("name");
		var obj2=document.getElementById("userno");
		var obj3=document.getElementById("delComment");
		var obj4=document.getElementById("n");
		var obj5=document.getElementById("u");
		
		if(obj1.value==obj4.value&&obj2.value==obj5.value&&obj3.value!=""){
			var obj=document.deleteFrm;
			obj.submit();
		}else{
			alert('�̸�Ȥ�� ȸ����ȣ�� �ٸ��ϴ�.');
		}
		
	}
	
	
</script>

</html>
