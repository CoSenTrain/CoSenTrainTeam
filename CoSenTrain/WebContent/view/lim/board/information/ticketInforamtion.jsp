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
	hover: pink;
	display: inline-block;
	padding: 15px 0;
	font-size: 15px;
	font-weight: bold;
	text-align: center;
	border-width: 1px 1px 1px 0;
	border-style: solid;
	border-color: #ccc;
	background-color: snow;
	color: gray;
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

		var i, tabcontent, tablinks;
		tabcontent = document.getElementsByClassName("tab10");
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
				<h1 style="padding: 30px 30px 0 30px;" class="tkting-method2">승차권
					구입/반환/분실</h1>
				<span style="float: right; font-size: 12px; margin-right: 30px;">
					<a href="/web/view/container/container.jsp" class="fa fa-home"
					style="cursor: pointer; text-decoration: none; color: black;"></a>
					<i style="cursor: default;">&gt;</i> <a href=""
					style="cursor: pointer; text-decoration: none; color: black;">이용안내</a>
					<i style="cursor: default;">&gt;</i> <a href="#"
					style="cursor: pointer; text-decoration: none; color: black;"
					class="tkting-method">승차권이용안내</a> <i style="cursor: default;">&gt;</i>
					<a href="#"
					style="cursor: pointer; text-decoration: none; color: black;"
					class="tkting-method2">승차권 구입/반환/분실</a>
				</span> <br /> <br /> <br />

				<!--  start-->
				<div
					style="width: 940px; padding: 0 30px 30px 30px; height: 3000px; background-color: white;">
					<div style="width: 940px; height: 50px;">
						<div style="text-align: center;">
							<button class="buttonTab"
								onclick="modifyTab(this,event,'ticketbuy')" id="defaultOpen">승차권 구입/반환/분실</button>
							<button class="buttonTab"
								onclick="modifyTab(this,event,'selfticket')">자기발권승차권</button>
							<button class="buttonTab"
								onclick="modifyTab(this,event,'present')">선물하기</button>
							<button class="buttonTab"
								onclick="modifyTab(this,event,'delaytrain')">열차지연/운행중지</button>
							<button class="buttonTab"
								onclick="modifyTab(this,event,'feetable')">열차운임 및 시간표
								</button>
							<button class="buttonTab"
								onclick="modifyTab(this,event,'salecoopon')">할인쿠폰 이용방법
								</button>
							<button class="buttonTab"
								onclick="modifyTab(this,event,'traineticket')">열차이용 에티켓
								</button>
							<button class="buttonTab" onclick="modifyTab(this,event,'faq')">FAQ
								</button>
							<button class="buttonTab"
								onclick="modifyTab(this,event,'reqularticket')">정기승차권
								</button>
							<button class="buttonTab"
								onclick="modifyTab(this,event,'cardinformation')">제휴카드 이용안내
								</button>
							<input type="hidden" id="changeMethod" name="changeMethod"
								value="ticketbuy" />
						</div>
					</div>

					<div id="ticketbuy" class="tab10">
						<div
							style="width: 900px; color: #666; height: 1050px; border: 1px solid lightgray; padding: 10px 30px 30px 5px; margin-top: 20px; margin-bottom: 20px;">
						</div>
					</div>
                    <div id="selfticket" class="tab10">
						<div
							style="width: 900px; color: #666; height: 1050px; border: 1px solid lightgray; padding: 10px 30px 30px 5px; margin-top: 20px; margin-bottom: 20px;">
						</div>
					</div>
					<div id="present" class="tab10">
						<div
							style="width: 900px; color: #666; height: 1050px; border: 1px solid lightgray; padding: 10px 30px 30px 5px; margin-top: 20px; margin-bottom: 20px;">
						</div>
					</div>
					<div id="delaytrain" class="tab10">
						<div
							style="width: 900px; color: #666; height: 1050px; border: 1px solid lightgray; padding: 10px 30px 30px 5px; margin-top: 20px; margin-bottom: 20px;">
						</div>
					</div>
					<div id="feetable" class="tab10">
						<div
							style="width: 900px; color: #666; height: 1050px; border: 1px solid lightgray; padding: 10px 30px 30px 5px; margin-top: 20px; margin-bottom: 20px;">
						</div>
					</div>
					<div id="salecoopon" class="tab10">
						<div
							style="width: 900px; color: #666; height: 1050px; border: 1px solid lightgray; padding: 10px 30px 30px 5px; margin-top: 20px; margin-bottom: 20px;">
						</div>
					</div>
					
					<div id="traineticket" class="tab10">
						<div
							style="width: 900px; color: #666; height: 1050px; border: 1px solid lightgray; padding: 10px 30px 30px 5px; margin-top: 20px; margin-bottom: 20px;">
						</div>
					</div>
						<div id="faq" class="tab10">
						<div
							style="width: 900px; color: #666; height: 1050px; border: 1px solid lightgray; padding: 10px 30px 30px 5px; margin-top: 20px; margin-bottom: 20px;">
						</div>
					</div>  
					<div id="reqularticket" class="tab10">
						<div
							style="width: 900px; color: #666; height: 1050px; border: 1px solid lightgray; padding: 10px 30px 30px 5px; margin-top: 20px; margin-bottom: 20px;">
						</div>
					</div>
					<div id="cardinformation" class="tab10">
						<div
							style="width: 900px; color: #666; height: 1050px; border: 1px solid lightgray; padding: 10px 30px 30px 5px; margin-top: 20px; margin-bottom: 20px;">
						</div>
					</div>
				



				</div>









				<!-- end -->


			</div>
		</div>

		<!-- LOGIN  End   -->
	</div>
	<jsp:include page="/view/container/containerBottom.jsp" flush="false" />
	<!-- 수정 부분 -->


	<script type="text/javascript" src="/web/js/container/clock.js"
		charset="UTF-8"></script>

</body>

</html>
