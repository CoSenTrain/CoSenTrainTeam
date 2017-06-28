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
				<h1 style="padding: 30px 30px 0 30px;" class="tkting-method">회원정보수정</h1>
				<span style="float: right; font-size: 12px; margin-right: 30px;">
					<a href="/web/view/container/container.jsp" class="fa fa-home"
					style="cursor: pointer; text-decoration: none; color: black;"></a>
					<i style="cursor: default;">&gt;</i> <a href="#"
					style="cursor: pointer; text-decoration: none; color: black;">마이페이지</a> <i style="cursor: default;">&gt;</i> <a
					href="/web/view/lim/modifymember/modifyMember.jsp"
					style="cursor: pointer; text-decoration: none; color: black;"
					class="tkting-method">회원정보수정</a>
				</span> <br /> <br /> <br />




				<!--  start-->
				<div
					style="width: 940px; padding: 0 30px 30px 30px; height: 1000px; background-color: white;">
					<div style="width: 940px; height: 50px;">
						<div style="text-align: center;">
							<button class="buttonTab"
								onclick="modifyTab(this,event,'modify')" >회원정보수정</button>
							<button class="buttonTab"
								onclick="modifyTab(this,event,'change')"  id="defaultOpen">비빌번호변경</button>
							<button class="buttonTab"
								onclick="modifyTab(this,event,'cerify')">이메일/휴대전화 인증</button>
							<button class="buttonTab" onclick="modifyTab(this,event,'out')">회원탈퇴</button>
							<input type="hidden" id="changeMethod" name="changeMethod"
								value="change" />
						</div>
					</div>

					<div id="modify" class="tab4">
					<div style="width:900px; color:#666; height:30px; border:1px solid lightgray;  padding: 10px 30px 30px 5px; margin-top:20px; margin-bottom:20px;">
					 <ul>
					  <li><b><%=name %>(<%=userno %>)</b>님의 회원 기본정보 및 주 이용구간 등 추가정보를 수정합니다. </li>
					  <li>이메일 및 휴대전화번호는 수단별 인증을 통해서만 수정이 가능합니다. </li>
					  
					 </ul>
					
					</div>
					
						<form action="" method="post">
							<table class="table-wrapper">
								<colgroup>
									<col width="140px" />
									<col width="800px" />
								</colgroup>

								<tr>
									<th class="table-th">이름</th>
									<td class="table-td"><%=name %></td>
								</tr>
								<tr>
									<th class="table-th">비밀번호</th>
									<td class="table-td"><input type="button" value="비밀번호변경"></input></td>
								</tr>
								<tr>
									<th class="table-th">이메일</th>

									<td class="table-td"><span  ><input style="display: inline-block;
	background-color: #F3F3F3;
	width: 250px;
	height: 20px;
	padding: 3px;
	margin: 3px;
									"
											type="text" size="50" value="iamipro@naver.com"></span> <span
										class="spanPass"><input type="button" value="이메일변경"></input></span> <span style="font-size: 14px;">*인증이
											완료된 이메일입니다.</span><br />


										<ul class="table-ul">
											<li class="table-li">이메일 인증을 받으시면 코센 폼페이지 및 앱에서 이메일로
												로그인하실 수 있습니다.</li>
											<li class="table-li">이메일을 등록하시면 예약내역, 포인트내역, 철도소식 등을 제공받으실 수 있습니다.</li>
											<li class="table-li">이메일 변경 시 인증을 통해서만] 변경이 가능합니다.</li>
										</ul></td>
								</tr>
								<tr>
									<th class="table-th">자택전화</th>
									<td class="table-td"><input style="display: inline-block;
	background-color: #F3F3F3;
	width: 150px;
	height: 20px;
	padding: 3px;
	margin: 3px;
									" type="text" size="20" /></td>
								</tr>
								<tr>
									<th class="table-th">휴대전화</th>
									<td class="table-td"><span class="spanPass"><input style="display: inline-block;
	background-color: #F3F3F3;
	width: 150px;
	height: 20px;
	padding: 3px;
	margin: 3px;
									"
											type="text" size="20" /></span> <span class="spanPass"><input
											type="button" value="휴대전화변경"></input></span> <span  style="font-size: 14px;" class="spanPass">*인증이
											완료된 휴대전화입니다.</span> </br>
										<ul class="table-ul">
											<li  class="table-li">휴대전화번호를 등록하시면 코센 홈페이지 및 앱에서 휴대전화 번호로 로그인 할 수 있습니다.</li>
											<li  class="table-li">휴대전화번호 변경 시 인증을 통해서만 변경이 가능합니다.</li>
										</ul></td>
								</tr>
								<tr>
									<th class="table-th">주소</th>
									<td class="table-td"><span class="spanPass"><input style="display: inline-block;
	background-color: #F3F3F3;
	width:70px;
	height: 20px;
	padding: 3px;
	margin: 3px;
									"
											type="text" size="8" /></span> <span class="spanPass"><input
											type="button" value="검색"></input></span> </br> <span class="spanPass"><input
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
								<th class="table-th">이메일 수신여부</th>
								<td class="table-td"><input id="emailreceivable1" value="" name="emailreceivable1" type="radio" onclick="emailReceive('1')" /> 예 &nbsp;&nbsp; <input
								id="emailreceivable2" name="emailreceivable2" value=""	type="radio" onclick="emailReceive('2')"/> 아니오
								 <input type="hidden" name="emailreceivable" id="emailreceivable" value=""></td>
								</tr>
							</table>
							  <div style="text-align: center;">
									<button class="buttonBottom">확인</button><button class="buttonBottom">취소</button>
									<!-- <td class="table-td"><span class="spanPass"><button class="buttonBottom">확인</button></span><span class="spanPass"><button class="buttonBottom">취소</button></span></td> -->
								</div>
						</form>

					</div>


					<div id="change" class="tab4"> 
					<div style="width:900px; color:#666; height:30px; border:1px solid lightgray;  padding: 10px 30px 30px 5px; margin-top:20px; margin-bottom:20px;">
					 <ul>
					  <li><b><%=name %>(<%=userno %>)</b>님의 홈페이지 및 현장발매 비밀번호를 변경합니다. </li>
					  <li>개인정보와 관련된 숫자 또는 동일 반복 숫자 등은 비권장합니다. </li>
					  
					 </ul>
					
					</div>
					
					<div style="width:936px; height:380px;  border:1px solid lightgray; ">
						<div>
						<div style="padding:20px 0 20px 20px; width:448px; height:170px; float:left;">
						<div style="font-size:20px; font-weight:bold;  color:gray;">홈페이지 비밀번호 변경 </div><br>
						코센홈페이지 및 앱에서 사용하는 로그인 비밀번호입니다.<br>
						영문 및 숫자를 조합하여 10자리 이상으로 입력하십시오.
						<table style="margin-top:15px; margin-bottom:15px;">
						 <tr>
						 <th class="table-th" style="width:120px;">기존 비밀번호</th> <td class="table-td" style="display: inline-block;
	background-color: #F3F3F3;"> <input type="text" style="display: inline-block;
	 
	 
	height: 15px;
	padding: 3px;
	margin: 3px;" size="30"> </td>
						 </tr>
						 <tr>
						 <th class="table-th" style="width:120px;">신규 비밀번호</th> <td class="table-td" style="display: inline-block;
	background-color: #F3F3F3;"> <input type="text" style="display: inline-block;
	 
	 
	height: 15px;
	padding: 3px;
	margin: 3px;" size="30"> </td>
						 </tr>
						 <tr>
						 <th class="table-th" style="width:120px;">비밀번호 확인</th> <td class="table-td" style="display: inline-block;
	background-color: #F3F3F3;"> <input type="text" style="display: inline-block;
	 
	 
	height: 15px;
	padding: 3px;
	margin: 3px;" size="30"> </td>
						 </tr>
						</table>
						<div style="text-align: center;">
						  <button class="buttonBottom">확인</button>
						 </div>
						</div>
						<div style="padding:20px 0 0 10px;  width:448px; height:170px;float:left;">
						<div style="font-size:20px; font-weight:bold;  color:gray;">현장발매 비밀번호 변경</div> <br>
						자동발매기 및 역 창구에서 사용하는 현장발매 비밀번호입니다.<br>
						숫자 5자리로 입력하십시오
						<table style="margin-top:15px; margin-bottom:15px;">
						 <tr>
						 <th class="table-th" style="width:120px;">기존 비밀번호</th> <td class="table-td" style="display: inline-block;
	background-color: #F3F3F3;"> <input type="text" style="display: inline-block;
	 
	 
	height: 15px;
	padding: 3px;
	margin: 3px;"  size="30"> </td>
						 </tr>
						  <tr>
						 <th class="table-th" style="width:120px;">신규 비밀번호</th> <td class="table-td" style="display: inline-block;
	background-color: #F3F3F3;"> <input type="text" style="display: inline-block;
	 
	 
	height: 15px;
	padding: 3px;
	margin: 3px;" size="30"> </td>
						 </tr>
						  <tr>
						 <th class="table-th" style="width:120px;">비밀번호 확인</th> <td class="table-td" style="display: inline-block;
	background-color: #F3F3F3;"> <input type="text" style="display: inline-block;
	 
	 
	height: 15px;
	padding: 3px;
	margin: 3px;" size="30"> </td>
						 </tr>
						</table>
						<div style="text-align: center;">
						  <button class="buttonBottom">확인</button>
						 </div>
						
						</div>
						</div>
					</div>
					
					
					</div>
					<div id="cerify" class="tab4">
					<div style="width:900px; color:#666; height:30px; border:1px solid lightgray;  padding: 10px 30px 30px 5px; margin-top:20px; margin-bottom:20px;">
					 <ul>
					  <li><b><%=name %>(<%=userno %>)</b>님의 회원 기본정보 및 주 이용구간 등 추가정보를 수정합니다. </li>
					  <li>이메일 및 휴대전화번호는 수단별 인증을 통해서만 수정이 가능합니다. </li>
					  
					 </ul>
					
					</div>
						<div style="width:936px; height:250px;  border:1px solid lightgray; ">
						<div>
						<div style="padding:20px 0 20px 20px; width:448px; height:170px; float:left;">
						<div style="font-size:20px; font-weight:bold;  color:gray;">이메일 인증/변경 </div><br>
						로그인에 사용할 이메일을 인증합니다.<br>
						인증요청 팝업창에 이메일로 발송된 인증코드를 입력하십시오.
						<table style="margin-top:15px; margin-bottom:15px;">
						 <tr>
						 <th class="table-th" style="width:120px;">이메일</th> <td class="table-td" style="display: inline-block;
	background-color: #F3F3F3;"> <input type="text" style="display: inline-block;
	 
	 
	height: 15px;
	padding: 3px;
	margin: 3px;" size="30"> </td>
						 </tr>
						 
						</table>
						<div style="text-align: center;">
						  <button class="buttonBottom">확인</button>
						 </div>
						</div>
						<div style="padding:20px 0 0 10px;  width:448px; height:170px;float:left;">
						<div style="font-size:20px; font-weight:bold;  color:gray;">휴대전화 인증/변경</div> <br>
						로그인에 사용할 휴대전화번호를 인증합니다.<br>
						휴대전화 인증/변경은 하루에 1회만 가능합니다.
						<table style="margin-top:15px; margin-bottom:15px;">
						 <tr>
						 <th class="table-th" style="width:120px;">휴대전화번호</th> <td class="table-td" style="display: inline-block;
	background-color: #F3F3F3;"> <input type="text" style="display: inline-block;
	 
	 
	height: 15px;
	padding: 3px;
	margin: 3px;" size="30"> </td>
						 </tr>
						 
						</table>
						<div style="text-align: center;">
						  <button class="buttonBottom">확인</button>
						 </div>
						
						</div>
						</div>
					</div>
					</div>
					
					<div id="out" class="tab4">
					<div style="width:900px; color:#666; height:30px; border:1px solid lightgray;  padding: 10px 30px 30px 5px; margin-top:20px; margin-bottom:20px;">
					 <ul>
					  <li>입력하신 회원정보 확인 후 회원탈회가 가능합니다. </li>
					  <li>제공된 본인확인 방법으로 본인확인이 불가능하신 경우 고객센터로 문의하시기 바랍니다. </li>
					  
					 </ul>
					
					</div>
					<div style="width:935px; height:150px;  border:1px solid lightgray; ">
					  <table style= "padding: 20px 200px  50px 300px;">
					   <tr>
					     <th style="width:120px;" >이름</th>
					     <td  ><input style="display: inline-block;
	background-color: #F3F3F3;
	width: 150px;
	height: 15px;
	padding: 3px;
	margin: 3px;" type="text" size="20"></td>
					   </tr>
					   <tr>
					    <th style="width:120px;">회원번호</th>
					     <td  ><input type="text" style="display: inline-block;
	background-color: #F3F3F3;
	width: 150px;
	height: 15px;
	padding: 3px;
	margin: 3px;"  size="20"></td>
					   </tr>
					   <tr>
					    <th style="width:120px;">탈회사유</th>
					     <td  ><input type="text" style="display: inline-block;
	background-color: #F3F3F3;
	width: 300px;
	height: 15px;
	padding: 3px;
	margin: 3px;"  size="30"></td>
					   </tr>
					  
					  
					  </table>
					  <div style="text-align: center;">
					   <button class="buttonBottom">다음</button>
					</div>
					
					</div>
								
					</div>




				</div>
				<!-- end -->
			</div>

		</div>

		<!-- LOGIN  End   -->
		<jsp:include page="/view/container/containerBottom.jsp" flush="false" />
		<!-- 수정 부분 -->
	</div>

	<script type="text/javascript" src="/web/js/container/clock.js"
		charset="UTF-8"></script>

</body>

</html>
