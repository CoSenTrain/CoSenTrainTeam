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
				 append('<div id="aa">비밀번호가 틀립니다</div>').find("div").
				 css({'backgroundColor':'gray'});
			 }else{
				 $("div#aa").remove();
				 $("span#ab").
				 append('<div>비밀번호가 맞습니다</div>').find("div").
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
				<h1 style="padding: 30px 30px 0 30px;" class="tkting-method">회원정보수정</h1>
				<span style="float: right; font-size: 12px; margin-right: 30px;">
					<a href="/web/view/container/container.jsp" class="fa fa-home"
					style="cursor: pointer; text-decoration: none; color: black;"></a>
					<i style="cursor: default;">&gt;</i> <a href="#"
					style="cursor: pointer; text-decoration: none; color: black;">마이페이지</a>
					<i style="cursor: default;">&gt;</i> <a
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
								onclick="modifyTab(this,event,'change')" >비빌번호변경</button>
							<button class="buttonTab"
								onclick="modifyTab(this,event,'cerify')" >이메일/휴대전화 인증</button>
							<button class="buttonTab" onclick="modifyTab(this,event,'out')" id="defaultOpen">회원탈퇴</button>
							<input type="hidden" id="changeMethod" name="changeMethod"
								value="out" />
						</div>
					</div>

					<div id="modify" class="tab4">
						<div
							style="width: 900px; color: #666; height: 30px; border: 1px solid lightgray; padding: 10px 30px 30px 5px; margin-top: 20px; margin-bottom: 20px;">
							<ul>
								<li><b><%=name%>(<%=userno%>)</b>님의 회원 기본정보 및 주 이용구간 등
									추가정보를 수정합니다.</li>
								<li>이메일 및 휴대전화번호는 수단별 인증을 통해서만 수정이 가능합니다.</li>

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
									<th class="table-th">이름</th>
									<td class="table-td"><%=name%></td>
								</tr>
								<tr>
									<th class="table-th">비밀번호</th>
									<td class="table-td"><a
										href="/web/view/lim/modifymember/modifyPassword.jsp"><input
											type="button" value="비밀번호변경"></a></input></td>
								</tr>
								<tr>
									<th class="table-th">이메일</th>

									<td class="table-td"><span><input
											style="display: inline-block; background-color: #F3F3F3; width: 250px; height: 20px; padding: 3px; margin: 3px;"
											type="text" size="50" value="<%=email%>"></span> <span
										class="spanPass"><a
											href="/web/view/lim/modifymember/cerifyEmail.jsp"><input
												type="button" value="이메일변경"></input></a></span> <span
										style="font-size: 14px;">*인증이 완료된 이메일입니다.</span><br />


										<ul class="table-ul">
											<li class="table-li">이메일 인증을 받으시면 코센 폼페이지 및 앱에서 이메일로
												로그인하실 수 있습니다.</li>
											<li class="table-li">이메일을 등록하시면 예약내역, 포인트내역, 철도소식 등을
												제공받으실 수 있습니다.</li>
											<li class="table-li">이메일 변경 시 인증을 통해서만] 변경이 가능합니다.</li>
										</ul></td>
								</tr>
								<tr>
									<th class="table-th">자택전화</th>
									<td class="table-td"><input
										style="display: inline-block; background-color: #F3F3F3; width: 150px; height: 20px; padding: 3px; margin: 3px;"
										type="text" size="20" id="tel" name="tel" value="" /></td>
								</tr>
								<tr>
									<th class="table-th">휴대전화</th>
									<td class="table-td"><span class="spanPass"><input
											style="display: inline-block; background-color: #F3F3F3; width: 150px; height: 20px; padding: 3px; margin: 3px;"
											type="text" size="20" value="<%=phone%>" /></span> <span
										class="spanPass"><a
											href="/web/view/lim/modifymember/cerifyEmail.jsp"> <input
												type="button" value="휴대전화변경"></a></input></span> <span
										style="font-size: 14px;" class="spanPass">*인증이 완료된
											휴대전화입니다.</span> </br>
										<ul class="table-ul">
											<li class="table-li">휴대전화번호를 등록하시면 코센 홈페이지 및 앱에서 휴대전화
												번호로 로그인 할 수 있습니다.</li>
											<li class="table-li">휴대전화번호 변경 시 인증을 통해서만 변경이 가능합니다.</li>
										</ul></td>
								</tr>
								<tr>
									<th class="table-th">주소</th>
									<td class="table-td"><span class="spanPass"><input
											style="display: inline-block; background-color: #F3F3F3; width: 70px; height: 20px; padding: 3px; margin: 3px;"
											type="text" size="8" id="zip" name="zip" value="" /></span> <span
										class="spanPass">
											<button class="buttonSearch">
												<a href="javascript:zipCodeSearch()">검색</a> 
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
									<th class="table-th">이메일 수신여부</th>
									<td class="table-td"><input id="emailreceivable1" value=""
										name="emailreceivable1" type="radio"
										onclick="emailReceive('1')" /> 예 &nbsp;&nbsp; <input
										id="emailreceivable2" name="emailreceivable1" value=""
										type="radio" onclick="emailReceive('2')" /> 아니오 <input
										type="hidden" name="emailreceivable" id="emailreceivable"
										value=""></td>
								</tr>
								
							</table>
							<div style="text-align: center;">
								<button class="buttonBottom" onclick="modifySubmit()">확인</button>
								<button class="buttonBottom1">취소</button>
							</div>
							</form>
					</div>


					<div id="change" class="tab4">
						<div
							style="width: 900px; color: #666; height: 30px; border: 1px solid lightgray; padding: 10px 30px 30px 5px; margin-top: 20px; margin-bottom: 20px;">
							<ul>
								<li><b><%=name%>(<%=userno%>)</b>님의 홈페이지 및 현장발매 비밀번호를
									변경합니다.</li>
								<li>개인정보와 관련된 숫자 또는 동일 반복 숫자 등은 비권장합니다.</li>

							</ul>

						</div>

						<div
							style="width: 936px; height: 380px; border: 1px solid lightgray;">
							<div>
								<div
									style="padding: 20px 0 20px 20px; width: 448px; height: 170px; float: left;">
									<div style="font-size: 20px; font-weight: bold; color: gray;">홈페이지
										비밀번호 변경</div>
									<br> 코센홈페이지 및 앱에서 사용하는 로그인 비밀번호입니다.<br> 영문 및 숫자를 조합하여
									10자리 이상으로 입력하십시오.

									<form action="/web/view/lim/modifymember/pwwebChange.jsp"
										method="post" name="pwwebfrm">
										<table style="margin-top: 15px; margin-bottom: 15px;">
											<tr>
												<th class="table-th" style="width: 120px;">기존 비밀번호</th>
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
												<th class="table-th" style="width: 120px;">신규 비밀번호</th>
												<td class="table-td"
													style="display: inline-block; background-color: #F3F3F3;">
													<input type="password"
													style="display: inline-block; height: 15px; padding: 3px; margin: 3px;"
													size="30" id="pwweb2" name="pwweb2" value="">
												</td>
											</tr>
											<tr>
												<th class="table-th" style="width: 120px;">비밀번호 확인</th>
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
										<button class="buttonBottom" onclick="pwWebSubmit()">확인</button>
									</div>
									</form>
								</div>
								<div
									style="padding: 20px 0 0 10px; width: 448px; height: 170px; float: left;">
									<div style="font-size: 20px; font-weight: bold; color: gray;">현장발매
										비밀번호 변경</div>
									<br> 자동발매기 및 역 창구에서 사용하는 현장발매 비밀번호입니다.<br> 숫자 5자리로
									입력하십시오
									<form action="/web/view/lim/modifymember/pwTicketingChange.jsp"
										method="post" name="pwTicketfrm">
										<table style="margin-top: 15px; margin-bottom: 15px;">
											<tr>
												<th class="table-th" style="width: 120px;">기존 비밀번호</th>
												<td class="table-td"
													style="display: inline-block; background-color: #F3F3F3;">
													<input type="text"
													style="display: inline-block; height: 15px; padding: 3px; margin: 3px;"
													size="30" id="pwTicket1" name="pwTicket1" value=""
													onblur="pwTicket()"> <input type="hidden" id="tickethidden" name="tickethidden" value="<%=pwticketing%>">
												</td>
											</tr>
											<tr>
												<th class="table-th" style="width: 120px;">신규 비밀번호</th>
												<td class="table-td"
													style="display: inline-block; background-color: #F3F3F3;">
													<input type="text"
													style="display: inline-block; height: 15px; padding: 3px; margin: 3px;"
													size="30" id="pwTicket2" name="pwTicket2" value="">
												</td>
											</tr>
											<tr>
												<th class="table-th" style="width: 120px;">비밀번호 확인</th>
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
										<button class="buttonBottom" onclick="pwTicketingSubmit()">확인</button>
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
								<li><b><%=name%>(<%=userno%>)</b>님의 회원 기본정보 및 주 이용구간 등
									추가정보를 수정합니다.</li>
								<li>이메일 및 휴대전화번호는 수단별 인증을 통해서만 수정이 가능합니다.</li>

							</ul>

						</div>
						<div
							style="width: 936px; height: 250px; border: 1px solid lightgray;">
							<div>
								<div
									style="padding: 20px 0 20px 20px; width: 448px; height: 170px; float: left;">
									<div style="font-size: 20px; font-weight: bold; color: gray;">이메일
										인증/변경</div>
									<br> 로그인에 사용할 이메일을 인증합니다.<br> 인증요청 팝업창에 이메일로 발송된
									인증코드를 입력하십시오.
									<table style="margin-top: 15px; margin-bottom: 15px;">
										<tr>
											<th class="table-th" style="width: 120px;">이메일</th>
											<td class="table-td"
												style="display: inline-block; background-color: #F3F3F3;">
												<input type="text"
												style="display: inline-block; height: 15px; padding: 3px; margin: 3px;"
												size="30">
											</td>
										</tr>

									</table>
									<div style="text-align: center;">
										<button class="buttonBottom">확인</button>
									</div>
								</div>
								<div
									style="padding: 20px 0 0 10px; width: 448px; height: 170px; float: left;">
									<div style="font-size: 20px; font-weight: bold; color: gray;">휴대전화
										인증/변경</div>
									<br> 로그인에 사용할 휴대전화번호를 인증합니다.<br> 휴대전화 인증/변경은 하루에 1회만
									가능합니다.

									<table style="margin-top: 15px; margin-bottom: 15px;">
										<tr>
											<th class="table-th" style="width: 120px;">휴대전화번호</th>
											<td class="table-td"
												style="display: inline-block; background-color: #F3F3F3;">
												<input type="text"
												style="display: inline-block; height: 15px; padding: 3px; margin: 3px;"
												size="30">
											</td>
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
						<div
							style="width: 900px; color: #666; height: 30px; border: 1px solid lightgray; padding: 10px 30px 30px 5px; margin-top: 20px; margin-bottom: 20px;">
							<ul>
								<li>입력하신 회원정보 확인 후 회원탈회가 가능합니다.</li>
								<li>제공된 본인확인 방법으로 본인확인이 불가능하신 경우 고객센터로 문의하시기 바랍니다.</li>

							</ul>

						</div>
						<div
							style="width: 935px; height: 150px; border: 1px solid lightgray;">
							<form action="deleteMemberComplete.jsp"
								method="post" name="deleteFrm">
								<table style="padding: 20px 200px 50px 300px;">
									<tr>
										<th style="width: 120px;">이름</th>
										<td><input
											style="display: inline-block; background-color: #F3F3F3; width: 150px; height: 15px; padding: 3px; margin: 3px;"
											type="text" size="20" id="name" name="name" value=""> <input type="hidden" id="n" name="n" value="<%=name%>"> </td>
									</tr>
									<tr>
										<th style="width: 120px;">회원번호</th>
										<td><input type="text"
											style="display: inline-block; background-color: #F3F3F3; width: 150px; height: 15px; padding: 3px; margin: 3px;"
											size="20" id="userno" name="userno" value=""><input type="hidden" id="u" name="u" value="<%=userno%>"> </td>
									</tr>
									<tr>
										<th style="width: 120px;">탈회사유</th>
										<td><input type="text"
											style="display: inline-block; background-color: #F3F3F3; width: 300px; height: 15px; padding: 3px; margin: 3px;"
											size="30" id="delComment" name="delComment" value=""></td>
									</tr>


								</table>
							
							<div style="text-align: center;">
								<button class="buttonBottom" onclick="deleteMember()">다음</button>
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
		<!-- 수정 부분 -->
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
	    	alert('희원정보사항을 입력해주세요');
	    }
		 
	
	}
	
	function modifySubmit(){
     		 
		  if(checkModify()){
		   var obj=document.modifyFrm;
			obj.submit();
		   alert('감사합니다.');
		 }else{
			 alert('입력사항을 모두 입력해주세요');
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
			alert('패스워드가 올바릅니다.');
			return true;
		}else{
			alert('패스워드가 올바르지 않습니다. 다시 입력해주세요');
		} 
		
	}
	
	function pwWebCheck(){
		var obj1 = document.getElementById("pwweb2");
		var obj2 = document.getElementById("pwweb3");
		var obj3 = document.getElementById("pwweb");
		
		if(obj1.value==obj2.value){
			alert('일치합니다. 확인을 누르시면 변경됩니다.');
		   	obj3.value=obj1.value;
		  
		}else{
			alert('패스워드가 다릅니다.');
		}
	}
	
		
	function pwWebSubmit(){
		 
		var obj3 = document.getElementById("pwweb");
		
		if(obj3.value!=""&&pwWeb()){
		var obj = document.pwwebfrm;
          obj.submit();			
		}else{
			alert('패스워드를 입력해주세요');
		}
		
		
	}
		
	function pwTicket(){
	  var obj = document.getElementById("pwTicket1");
	  var obj1 = document.getElementById("tickethidden");
		if(obj.value==obj1.value){
		    alert('비밀번호가 일치합니다.');			
		     return true;
		}else{
			alert('비밀번호를 확인해주세요');
		}
	}
	
	function pwTicketCheck(){
		 var obj1 = document.getElementById("pwTicket2");
		 var obj2 = document.getElementById("pwTicket3");
		 var obj3 = document.getElementById("pwticketing");
		if(obj1.value==obj2.value){
			alert('비밀번호가 일치합니다.');
		    obj3.value=obj1.value;
			
		}else{
			alert('비밀번호를 확인해주세요');
		}
		 
	}
	function pwTicketingSubmit(){
		
		 var obj3 = document.getElementById("pwticketing");
		if(obj3.value!=""&&pwTicket()){
			var obj = document.pwTicketfrm;
			obj.submit();
		}else{
			alert('비밀번호를 입력해주세요');
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
			alert('이름혹은 회원번호가 다릅니다.');
		}
		
	}
	
	
</script>

</html>
