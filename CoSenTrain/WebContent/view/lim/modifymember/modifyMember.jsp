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
				<h1 style="padding: 30px 30px 0 30px;" class="tkting-method">회원정보수정</h1>
				<span style="float: right; font-size: 12px; margin-right: 30px;">
					<a href="/web/view/container/container.jsp" class="fa fa-home"
					style="cursor: pointer; text-decoration: none; color: black;"></a>
					<i style="cursor: default;">&gt;</i> <a href="#"
					style="cursor: pointer; text-decoration: none; color: black;">Cosen
						회원</a> <i style="cursor: default;">&gt;</i> <a
					href="/web/view/lim/modifymember/modifyMember.jsp"
					style="cursor: pointer; text-decoration: none; color: black;"
					class="tkting-method">회원정보수정</a>
				</span> <br /> <br /> <br />




				<!--  start-->
				<div
					style="width: 940px; padding: 0 30px 30px 30px; height: 1000px; background-color: white;">

					<div style="text-align: center;">
						<button class="buttonTab" onclick="modifyTab(this,event,'modify')"
							id="defaultOpen">정보수정</button>
						<button class="buttonTab" onclick="modifyTab(this,event,'change')">비빌번호변경</button>
						<button class="buttonTab" onclick="modifyTab(this,event,'cerify')">이메일/휴대전화
							인증</button>
						<button class="buttonTab" onclick="modifyTab(this,event,'out')">회원탈퇴</button>
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
									<th class="table-th">이름</th>
									<td class="table-td">임명수</td>
								</tr>
								<tr>
									<th class="table-th">비밀번호</th>
									<td class="table-td"><input type="button">비밀번호변경</input></td>
								</tr>
								<tr>
									<th class="table-th">이메일</th>

									<td class="table-td"><span class="spanPass"><input
											type="text" size="20" value="iamipro@naver.com"></span> <span
										class="spanPass"><input type="button">이메일변경</input></span> <span
										class="spanPass"><td class="table-td">*인증이완료된
												이메일입니다.</span></br>



										<ul>
											<li>이메일 인증을 받으시면 코센 폼페이지 및 앱에서 이메일로 로그인하실 수 있습니다.</li>
											<li>이메일 변경 시 인증을 통해서만 변경이 가능합니다.</li>
										</ul></td>
								</tr>
								<tr>
									<th class="table-th">자택전화</th>
									<td class="table-td"><input type="text" size="20" /></td>
								</tr>
								<tr>
									<th class="table-th">휴대전화</th>
									<td class="table-td"><span class="spanPass"><input
											type="text" size="20" /></span> <span class="spanPass"><input
											type="button">휴대전화변경</input></span> <span class="spanPass">*인증이
											완료된 휴대전화입니다.</span> </br>
										<ul>
											<li>휴대전화번호를 등록하시면 코센 홈페이지 및 앱에서 휴대전화 번호로 로그인 할 수 있습니다.</li>
											<li>휴대전화번호 변경 시 인증을 통해서만 변경이 가능합니다.</li>
										</ul></td>
								</tr>
								<tr>
									<th class="table-th">주소</th>
									<td class="table-td"><span class="spanPass"><input
											type="text" size="8" /></span> <span class="spanPass"><input
											type="button">검색</input></span> </br> <span class="spanPass"><input
											type="text" size="25" /></span> <span class="spanPass"><input
											type="text" size="25" /></span></td>
								</tr>
								<tr>
									<td class="table-td"><span class="spanPass"><input
											type="button">확인</input></span><span class="spanPass"><input
											type="button">취소</input></span></td>
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
		<!-- 수정 부분 -->
	</div>

	<script type="text/javascript" src="/web/js/container/clock.js"
		charset="UTF-8"></script>

</body>

</html>
