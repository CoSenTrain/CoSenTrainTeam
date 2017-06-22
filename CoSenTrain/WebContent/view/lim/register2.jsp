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
				<h1 style="padding: 30px 30px 0 30px;" class="tkting-method">회원가입</h1>
				<span style="float: right; font-size: 12px; margin-right: 30px;">
					<a href="/web/view/container/container.jsp" class="fa fa-home"
					style="cursor: pointer; text-decoration: none; color: black;"></a>
					<i style="cursor: default; ">&gt;</i> <a href=""
					style="cursor: pointer; text-decoration: none; color: black;">Cosen
						회원</a> <i style="cursor: default;">&gt;</i> <a href="#"
					style="cursor: pointer; text-decoration: none; color: black;"
					class="tkting-method">회원가입</a>
				</span> <br /> <br /> <br />

				<!--  start-->
				<div
					style="width: 940px; padding: 0 30px 30px 30px; height: 500px; background-color: white;">

 
<div id="dv">
		<h2
			style="text-align: center; padding-bottom: 5px; font-weight: bold; font-family: 맑은고딕; color: #666;">
			본인인증 및 가입여부 확인
			</h3>
			<h4 style="text-align: center; padding-bottom: 5px; color: #666;">
				휴대전화를 통하여 SR회원가입 여부를 확인하실 수 있습니다.
				</h5>

				<div>
					<div>
						<div style="border: 1px solid  lightgray; width: 550px; height: 220px; margin-left: 200px; margin-right: 200px;">

							<!-- <img alt="휴대전화 인증" src="/web/img/lim/join/phone.JPG"
				onclick="lim_phone()"> -->
							<div style="text-align: center; ">
								<button
									style=" margin: 0 auto; color:#333; border:1px solid lightgray;  margin-top: 50px; width: 260px; border: 0; border-radius: 0 7px; cursor: pointer; height: 55px;"
									onclick="lim_phone()">
									<i style="font-size: 30px" class="fa fa-mobile" ></i> <i style="text-shadow: 1px 1px lightgray; font-weight: bold; font-size: 15px; margin :0 0 30 0 auto;"> 휴대전화
										인증</i>
								</button>
							</div>
							<div style="text-align: center">
								<div
									style="margin: 0 auto; margin-top: 20px; color: #666; font-size: 14px;">본인
									명의의 휴대전화 인증을 통한 회원가입 신청을</div>
							</div>
							<div style="text-align: center">
								<div
									style="margin: 0 auto; margin-top: 10px; color: #666; font-size: 14px;">원하시면
									휴대전화 인증 버튼을 눌러 가입을 진행해 주십시오.</div>
							</div>
						</div>
						<div>
							<p style="color: #666; text-align: center; font-size: 14px;">
								휴대전화 인증이랑? 주민등록번호 대체수단으로 주민등록 번호 대신 본인<br /> 명의로 등록한 휴대전화 정보를
								통해 본인확인을 하게
								됩니다.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							</p>
						</div>
					</div>
					<div style="border:1px solid lightgray; margin-left: 200px; margin-right: 200px; margin-top: 20px; font-size: 13px; ">
						<div style="text-align: center; color:#c7187d; font-weight: bold;">
							<h3><label><b>인터넷 익스플로러(IE)에서 본인인증 후</b> <br>
							<b>'실행 스크립트가 존재하지 않습니다.'라는 메시지가 나오는 경우</b></label></h3>
						</div>
						<div style="margin:10px;  color: #666;">
						<ul>
							<li><b>[인터넷 옵션]</b>><b>[보안]</b>탭에서 <b>[신뢰할수 있는 사이트]</b>로 이동합니다.</li>
							<li><b>[사이트]</b>버튼을 클릭한 후 <b>http://localhost:8181/web/view/container/container.jsp</b> 을 추가한 다음 다시 시도해
								주십시오.</li>
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
	<!-- 수정 부분 -->
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
