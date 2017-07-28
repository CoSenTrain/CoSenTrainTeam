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
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="shortcut icon" href="">
<style>
input {
	margin: 0;
	padding: 10px;
	border: 0;
	font-size: 15px;
}

.prev, .next {
	cursor: pointer;
	position: absolute;
	top: 50%;
	width: auto;
	margin-top: -22px;
	padding: 16px;
	color: white;
	font-weight: bold;
	font-size: 18px;
	transition: 0.6s ease;
	border-radius: 0 3px 3px 0;
	text-align: center;
}

.prev2, .next2 {
	cursor: pointer;
	position: absolute;
	top: 50%;
	width: auto;
	margin-top: -22px;
	padding: 16px;
	color: white;
	font-weight: bold;
	font-size: 18px;
	transition: 0.6s ease;
	border-radius: 0 3px 3px 0;
	text-align: center;
}

/* Position the "next button" to the right */
.next {
	right: 0;
	border-radius: 3px 0 0 3px;
}

.next2 {
	right: 0;
	border-radius: 3px 0 0 3px;
}
/* On hover, add a black background color with a little bit see-through */
.prev:hover, .next:hover {
	background-color: rgba(0, 0, 0, 0.8);
}

.prev2:hover, .next2:hover {
	background-color: rgba(0, 0, 0, 0.8);
}

.mySlides {
	display: none;
}

.mySlides2 {
	display: none;
}

.numbertext {
	margin-left: 170px;
	color: #f2f2f2;
	font-size: 12px;
	padding: 8px 12px;
	position: absolute;
	top: 0;
}

.numbertext2 {
	margin-left: 170px;
	color: #f2f2f2;
	font-size: 12px;
	padding: 8px 12px;
	position: absolute;
	top: 0;
}

@
-webkit-keyframes fade {from { opacity:.5;
	
}

to {
	opacity: 1;
}

}
@
keyframes fade {from { opacity:.5;
	
}

to {
	opacity: 1;
}

}
@
-webkit-keyframes fade2 {from { opacity:.5;
	
}

to {
	opacity: 1;
}

}
@
keyframes fade2 {from { opacity:.5;
	
}

to {
	opacity: 1;
}

}
.fade {
	-webkit-animation-name: fade;
	-webkit-animation-duration: 1.0s;
	animation-name: fade;
	animation-duration: 1.0s;
}

.fade2 {
	-webkit-animation-name: fade;
	-webkit-animation-duration: 1.0s;
	animation-name: fade;
	animation-duration: 1.0s;
}

.slideshow-station {
	max-width: 1000px;
	position: relative;
	margin: 50px;
	text-align: center;
}

.slideshow-station2 {
	max-width: 1000px;
	position: relative;
	margin: 50px;
	text-align: center;
}

.station-wrapper {
	position: absolute;
	margin-top: 300px;
	margin-left: 170px;
	z-index: 990;
}

.station-wrapper2 {
	position: absolute;
	margin-top: 300px;
	margin-left: 170px;
	z-index: 990;
}

.station {
	cursor: pointer;
	height: 13px;
	width: 13px;
	margin: 0 2px;
	background-color: maroon;
	border-radius: 50%;
	display: inline-block;
	transition: background-color 0.6s ease;
}

.station2 {
	cursor: pointer;
	height: 13px;
	width: 13px;
	margin: 0 2px;
	background-color: maroon;
	border-radius: 50%;
	display: inline-block;
	transition: background-color 0.6s ease;
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
	font-weight: bold;
	color: gray;
	background-color: snow;
	height: 50px;
	border: 1px solid lightgray;
	border-radius: 0 7px;
	padding: 0 15px 5px 15px;
	width: 230px;
}

.buttonTab2 {
	hover: pink;
	display: inline-block;
	font-weight: bold;
	color: gray;
	background-color: snow;
	height: 50px;
	border: 1px solid lightgray;
	border-radius: 0 7px;
	padding: 0 15px 5px 15px;
	width: 300px;
}
</style>
<script type="text/javascript">
	function start() {
		document.getElementById("defaultOpen").click();

	}
	function start2() {
		document.getElementById("defaultOpen2").click();

	}
	function modifyTab(o, evt, cityName) {
		//openCity(o, evt, cityName)  

		document.getElementById("changeMethod").value = cityName;

		var tktingMethods = document.getElementsByClassName("tkting-method2");
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
	function modifyTab2(o, evt, cityName) {
		//openCity(o, evt, cityName)  

		document.getElementById("changeMethod2").value = cityName;

		var i,
			tabcontent,
			tablinks;
		tabcontent = document.getElementsByClassName("tab3");
		for (i = 0; i < tabcontent.length; i++) {
			tabcontent[i].style.display = "none";
		}
		tablinks = document.getElementsByClassName("buttonTab2");
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
				<h1 style="padding: 30px 30px 0 30px;" class="tkting-method">종합이용안내</h1>
				<span style="float: right; font-size: 12px; margin-right: 30px;">
					<a href="/web/view/container/container.jsp" class="fa fa-home"
					style="cursor: pointer; text-decoration: none; color: black;"></a>
					<i style="cursor: default;">&gt;</i> <a href=""
					style="cursor: pointer; text-decoration: none; color: black;">SR소식</a>
					<i style="cursor: default;">&gt;</i> <a href="#"
					style="cursor: pointer; text-decoration: none; color: black;"
					class="tkting-method">종합이용안내</a> <i style="cursor: default;">&gt;</i>
					<a href="#"
					style="cursor: pointer; text-decoration: none; color: black;"
					class="tkting-method2">할인제도</a>
				</span> <br /> <br /> <br />

				<!--  start-->
				<div
					style="width: 940px; padding: 0 30px 30px 30px; height: 1700px; background-color: white;">
					<div style="width: 940px; height: 50px;">
						<div style="text-align: center;">
							<button class="buttonTab"
								onclick="modifyTab(this,event,'discount')" id="defaultOpen">고객서비스헌장</button>
							<button class="buttonTab"
								onclick="modifyTab(this,event,'stationservice',start2())">여객운송약관/부속약관</button>
							<button class="buttonTab"
								onclick="modifyTab(this,event,'trainservice')">이메일무단수집거부/저작권정책</button>
							<button class="buttonTab"
								onclick="modifyTab(this,event,'transportationservice')">촬영승인/수수료기준</button>
							<input type="hidden" id="changeMethod" name="changeMethod"
								value="discount" />
						</div>
					</div>

					<div id="discount" class="tab4">
						<div
							style="width: 900px; color: #666; height: 1500px; border: 1px solid lightgray; padding: 10px 30px 30px 5px; margin-top: 20px; margin-bottom: 20px;">
							<h4
								style="margin-top: 25px; font-size: 18px; line-height: 19px; color: #8f0349;">기본할인</h4>
							<ul style="margin-top: 15px;">
								<li style="margin-top: 0px;">SRT를 이용하는 모든 고객에게 적용되는 기본적 할인</li>
								<li
									style="font-size: 12px; color: #888; background-image: none;">※
									정차역 할인, 공공할인</li>

							</ul>
							<h4
								style="margin-top: 25px; font-size: 18px; line-height: 19px; color: #8f0349;">공공할인</h4>
							<ul style="margin-top: 15px;">
								<li style="margin-top: 0px;">국가유공자, 군인, 경로 및 어린이, 장애인에 대한
									운임할인</li>

							</ul>
							<h4
								style="margin-top: 25px; font-size: 18px; line-height: 19px; color: #8f0349;">영업할인</h4>
							<ul style="margin-top: 15px;">
								<li style="margin-top: 0px;">운행구간 출발역과 도착역 도중 정차역 역수에 따라 역당
									0.2% 할인</li>
								<li style="margin-top: 0px;">공공할인, 영업할인그룹과 중복할인 허용</li>

							</ul>
							<h4
								style="margin-top: 25px; font-size: 18px; line-height: 19px; color: #8f0349;">정차역
								할인</h4>
							<ul style="margin-top: 15px;">
								<li style="margin-top: 0px;">온라인 홈페이지, SRT앱으로 승차권 발권 시 운임의
									1% 할인</li>
								<li style="margin-top: 0px;">- 주중 월~금 적용, 주말 및 공휴일(대체 공휴일
									포함) 제외</li>
								<li style="margin-top: 0px;">공공할인, 영업할인 그룹과 중복할인 사용 허용</li>

							</ul>
							<h4
								style="margin-top: 25px; font-size: 18px; line-height: 19px; color: #8f0349;">발매매체
								할인</h4>
							<ul style="margin-top: 15px;">
								<li style="margin-top: 0px;">온라인 홈페이지, SRT앱으로 승차권 발권 시 운임의
									1% 할인</li>
								<li style="margin-top: 0px;">- 주중 월~금 적용, 주말 및 공휴일(대체 공휴일
									포함) 제외</li>
								<li style="margin-top: 0px;">공공할인, 영업할인 그룹과 중복할인 사용 허용</li>

							</ul>
							<h4
								style="margin-top: 25px; font-size: 18px; line-height: 19px; color: #8f0349;">국가유공자
								할인</h4>
							<ul style="margin-top: 15px;">
								<li style="margin-top: 0px;">국가유공자, 독립유공자, 5·18민주유공자(보호자 1인
									포함) 대상 할인 적용</li>
								<li style="margin-top: 0px;">기본할인그룹과 중복할인 허용</li>
								<li
									style="font-size: 12px; color: #888; background-image: none;">※국가유공자
									: 전·공상 군경, 4·19혁명부상자, 공상공무원 및 특별공로상이자 본인</li>

							</ul>
							<h4
								style="margin-top: 25px; font-size: 18px; line-height: 19px; color: #8f0349;">장애인
								할인</h4>
							<ul style="margin-top: 15px;">
								<li style="margin-top: 0px;">장애인복지법 및 동법 시행령에 정한 장애인으로 장애등급
									1~3급 50%, 장애등급 4~6급 주중 30% 할인 적용</li>
								<li style="margin-top: 0px;">기본할인그룹과 중복할인 허용</li>

							</ul>
							<h4
								style="margin-top: 25px; font-size: 18px; line-height: 19px; color: #8f0349;">경로
								할인</h4>
							<ul style="margin-top: 15px;">
								<li style="margin-top: 0px;">노인복지법 및 동법 시행령에 정한 65세 이상에게 주중
									30% 할인 적용</li>
								<li style="margin-top: 0px;">기본할인그룹과 중복할인 허용</li>

							</ul>
							<h4
								style="margin-top: 25px; font-size: 18px; line-height: 19px; color: #8f0349;">군
								후급 할인</h4>
							<ul style="margin-top: 15px;">
								<li style="margin-top: 0px;">국방부와 후급취급수송계약에 의한 후급할인증 발급자에
									할인 적용</li>
								<li style="margin-top: 0px;">기본할인그룹과 중복할인 허용</li>

							</ul>
							<h4
								style="margin-top: 25px; font-size: 18px; line-height: 19px; color: #8f0349;">단체
								할인</h4>
							<ul style="margin-top: 15px;">
								<li style="margin-top: 0px;">10명이상 단체로 여행을 하고자 하는 고객이 좌석
									구입시 운임의 10% 할인</li>
								<li style="margin-top: 0px;">기본할인 그룹과 중복할인 적용하고 유리한 할인율 적용</li>
								<li style="margin-top: 0px;">열차별 좌석 제약, 예약과 동시에 결제</li>

							</ul>
						</div>
					</div>



					<div id="stationservice" class="tab4">
						<div
							style="width: 900px; color: #666; height: 1700px; padding: 10px 30px 30px 5px; margin-top: 20px; margin-bottom: 20px;">
							<div style="width: 940px; height: 50px;">
								<div style="text-align: center;">
									<button class="buttonTab2"
										onclick="modifyTab2(this,event,'soosu')" id="defaultOpen2">수서역
										라운지</button>
									<button class="buttonTab2"
										onclick="modifyTab2(this,event,'dongtan')">동탄역 라운지</button>
									<button class="buttonTab2"
										onclick="modifyTab2(this,event,'parking')">주차장 이용안내</button>
									<input type="hidden" id="changeMethod2" name="changeMethod2"
										value="soosu" />
								</div>
							</div>
							<div id="soosu" class="tab3">
								<div class="slideshow-station">
									<div class="station-wrapper">
										<span class="station" onclick="currentSlide(1)"></span> <span
											class="station" onclick="currentSlide(2)"></span> <span
											class="station" onclick="currentSlide(3)"></span> <span
											class="station" onclick="currentSlide(4)"></span> <i
											class="fa fa-pause" style="color: maroon;"
											onclick="stopSliding(this)"></i>
									</div>
									<div class="mySlides fade">
										<div class="numbertext">1 / 4</div>

										<img src="/web/img/lim/notice/totalInfo/soosu1.jpg"
											width="610px" height="333px" />

									</div>
									<div class="mySlides fade">
										<div class="numbertext">2 / 4</div>

										<img src="/web/img/lim/notice/totalInfo/soosu2.JPG"
											width="610px" height="333px" />

									</div>
									<div class="mySlides fade">
										<div class="numbertext">3 / 4</div>

										<img src="/web/img/lim/notice/totalInfo/soosu3.jpg"
											width="610px" height="333px" />

									</div>
									<div class="mySlides fade">
										<div class="numbertext">4 / 4</div>

										<img src="/web/img/lim/notice/totalInfo/soosu4.jpg"
											width="610px" height="333px" />

									</div>
									<a class="prev" onclick="plusSlides(-1)">&#10094;</a> <a
										class="next" onclick="plusSlides(1)">&#10095;</a>
								</div>
								<div style="padding-top: 30px; margin-bottom: 15px;"></div>
								<div
									style="margin-top: 25px; border-top-width: 2px; border-top-style: solid; border-top-color: #000;">
									<h4
										style="padding-left: 15px; float: left; margin-top: 10 px; font-size: 18px; line-height: 19px; color: #8f0349;">고객라운지</h4>
									<ul style="margin-top: 20px;">
										<li style="float: left; padding-left: 18px; margin-top: 7px;">이용대상
											: SR회원, 우리카드 및 SRT 제휴카드(신한카드) 회원, 당일 SRT 특실고객</li>
										<li style="float: left; padding-left: 18px;">운영시간 :
											07:00~21:00(연중무휴)</li>
										<li style="float: left; padding-left: 18px;">출입방법 :
											(QR코드) SRT 앱 매뉴 -> MY SRT -> 멤버십 카드 확인 -> QR코드 리더기 인식 <br>
											<span style="float: left;">(카드 리더기) 출입문 옆 설치된 카드리더기에
												카드 인식</span> <br> <span
											style="float: left; padding-right: 40px; margin-right: 40px;">SRT
												특실고객 승차권 확인</span>
										</li>
									</ul>

								</div>


							</div>
							<div id="dongtan" class="tab3">
								<div class="slideshow-station2">
									<div class="station-wrapper2">
										<span class="station2" onclick="currentSlide2(1)"></span> <span
											class="station2" onclick="currentSlide2(2)"></span> <span
											class="station2" onclick="currentSlide2(3)"></span> <span
											class="station2" onclick="currentSlide2(4)"></span> <i
											class="fa fa-pause" style="color: maroon;"
											onclick="stopSliding2(this)"></i>
									</div>
									<div class="mySlides2 fade2">
										<div class="numbertext2">1 / 4</div>

										<img src="/web/img/lim/notice/totalInfo/dongtan1.jpg"
											width="610px" height="333px" />

									</div>
									<div class="mySlides2 fade2">
										<div class="numbertext">2 / 4</div>

										<img src="/web/img/lim/notice/totalInfo/dongtan2.jpg"
											width="610px" height="333px" />

									</div>
									<div class="mySlides2 fade2">
										<div class="numbertext2">3 / 4</div>

										<img src="/web/img/lim/notice/totalInfo/dongtan3.jpg"
											width="610px" height="333px" />

									</div>
									<div class="mySlides2 fade2">
										<div class="numbertext">4 / 4</div>

										<img src="/web/img/lim/notice/totalInfo/dongtan4.jpg"
											width="610px" height="333px" />

									</div>
									<a class="prev2" onclick="plusSlides2(-1)">&#10094;</a> <a
										class="next2" onclick="plusSlides2(1)">&#10095;</a>
								</div>
								<div style="padding-top: 30px; margin-bottom: 15px;"></div>
								<div
									style="margin-top: 25px; border-top-width: 2px; border-top-style: solid; border-top-color: #000;">
									<h4
										style="padding-left: 15px; float: left; margin-top: 10 px; font-size: 18px; line-height: 19px; color: #8f0349;">고객라운지</h4>
									<ul style="margin-top: 20px;">
										<li style="float: left; padding-left: 18px; margin-top: 7px;">이용대상
											: SR회원, 우리카드 및 SRT 제휴카드(신한카드) 회원, 당일 SRT 특실고객</li>
										<li style="float: left; padding-left: 18px;">운영시간 :
											07:00~21:00(연중무휴)</li>
										<li style="float: left; padding-left: 18px;">출입방법 :
											(QR코드) SRT 앱 매뉴 -> MY SRT -> 멤버십 카드 확인 -> QR코드 리더기 인식 <br>
											<span style="float: left;">(카드 리더기) 출입문 옆 설치된 카드리더기에
												카드 인식</span> <br> <span
											style="float: left; padding-right: 40px; margin-right: 40px;">SRT
												특실고객 승차권 확인</span>
										</li>
									</ul>

								</div>

   
							</div>

							<div id="parking" class="tab3">
								<div style="padding-top: 30px;">
									<h4
										style="margin-top: 25px; font-size: 18px; line-height: 19px; color: #8f0349;">주차장
										위치 안내</h4>
									<table
										style="width: 100%; margin-top: 15px; border-top-width: 2px; border-top-style: solid; border-top-color: #5e5e5e;">
										<caption>주차장 위치 안내(구분, 주차면, 주소, 지도안내로 구성)</caption>
										<colgroup>
											<col width="20%"></col>
											<col width="20%"></col>
											<col width="40%"></col>
											<col width="20%"></col>

										</colgroup>
										<thead>
											<tr>
												<th
													style="padding: 10px 0; padding-left: 10px; font-size: 13px; line-height: 100%; border-width: 0 1px 1px 0; border-style: solid; border-color: #dbdbdb; background-color: #f8f8f8;">구분</th>
												<th
													style="padding: 10px 0; padding-left: 10px; font-size: 13px; line-height: 100%; border-width: 0 1px 1px 0; border-style: solid; border-color: #dbdbdb; background-color: #f8f8f8;">주차면</th>
												<th
													style="padding: 10px 0; padding-left: 10px; font-size: 13px; line-height: 100%; border-width: 0 1px 1px 0; border-style: solid; border-color: #dbdbdb; background-color: #f8f8f8;">주소</th>
												<th
													style="padding: 10px 0; padding-left: 10px; font-size: 13px; line-height: 100%; border-width: 0 1px 1px 0; border-style: solid; border-color: #dbdbdb; background-color: #f8f8f8;">지도안내</th>
											</tr>
										</thead>
										<tbody>
											<tr>
												<th
													style="padding: 10px 0; padding-left: 10px; font-size: 13px; line-height: 100%; border-width: 0 1px 1px 0; border-style: solid; border-color: #dbdbdb;">
													<b>수서역</b>
												</th>
												<th
													style="padding: 10px 0; padding-left: 10px; font-size: 13px; line-height: 100%; border-width: 0 1px 1px 0; border-style: solid; border-color: #dbdbdb;">
													<b>601</b>
												</th>
												<th
													style="padding: 10px 0; padding-left: 10px; font-size: 13px; line-height: 100%; border-width: 0 1px 1px 0; border-style: solid; border-color: #dbdbdb;">
													<b>서울 강남구 수서동 735</b>
												</th>
												<th
													style="padding: 10px 0; padding-left: 10px; font-size: 13px; line-height: 100%; border-width: 0 1px 1px 0; border-style: solid; border-color: #dbdbdb;">
													<li>
													 <a style="color:#555; font-family:'ng','맑은 고딕','돋움','Dotum','Droid','Snas','AppleGothic'; text-decoration: none;"  title="수서역" href="http://dmaps.kr/36m68" target="_blank">바로가기</a>
												</li>
												</th>
												</tr>
												<tr>
													<th
													style="padding: 10px 0; padding-left: 10px; font-size: 13px; line-height: 100%; border-width: 0 1px 1px 0; border-style: solid; border-color: #dbdbdb;">
													<b>동탄역</b>
												</th>
												<th
													style="padding: 10px 0; padding-left: 10px; font-size: 13px; line-height: 100%; border-width: 0 1px 1px 0; border-style: solid; border-color: #dbdbdb;">
													<b>390</b>
												</th>
												<th
													style="padding: 10px 0; padding-left: 10px; font-size: 13px; line-height: 100%; border-width: 0 1px 1px 0; border-style: solid; border-color: #dbdbdb;">
													<b>경기도 화성시 동탄역로 지하 151(오산동, 동탄역사)</b>
												</th>
                                                	<th
													style="padding: 10px 0; padding-left: 10px; font-size: 13px; line-height: 100%; border-width: 0 1px 1px 0; border-style: solid; border-color: #dbdbdb;">
													<li>
													 <a style="color:#555; font-family:'ng','맑은 고딕','돋움','Dotum','Droid','Snas','AppleGothic'; text-decoration: none;"  title="동탄역" href="http://dmaps.kr/36m5x" target="_blank">바로가기</a>
												</li>
												</th>
												</tr>
												<tr>
												<th
													style="padding: 10px 0; padding-left: 10px; font-size: 13px; line-height: 100%; border-width: 0 1px 1px 0; border-style: solid; border-color: #dbdbdb;">
													<b>지제역</b>
												</th>
												<th
													style="padding: 10px 0; padding-left: 10px; font-size: 13px; line-height: 100%; border-width: 0 1px 1px 0; border-style: solid; border-color: #dbdbdb;">
													<b>100</b>
												</th>
												<th
													style="padding: 10px 0; padding-left: 10px; font-size: 13px; line-height: 100%; border-width: 0 1px 1px 0; border-style: solid; border-color: #dbdbdb;">
													<b>경기 평택시 경기대로 777</b>
												</th>
													<th
													style="padding: 10px 0; padding-left: 10px; font-size: 13px; line-height: 100%; border-width: 0 1px 1px 0; border-style: solid; border-color: #dbdbdb;">
													<li>
													 <a style="color:#555; font-family:'ng','맑은 고딕','돋움','Dotum','Droid','Snas','AppleGothic'; text-decoration: none;"  title="지제역" href="http://dmaps.kr/36m6e" target="_blank">바로가기</a>
												</li>
												</th>
													         
											   </tr>

										</tbody>
									</table>
									<table style="width: 100%; margin-top: 15px; border-top-width: 2px; border-top-style: solid; border-top-color: #5e5e5e;">
                                  <h4 style="margin-top: 25px; font-size: 18px; line-height: 19px; color : #8f0349;">이용요금안내</h4>
								  <caption>이용요금안내</caption>
								  <colgroup>
								    <col width="20%">
								    <col width="20%">
								    <col width="20%">
								    <col width="20%">
								    <col width="20%">
								  </colgroup>
                                    <thead>
                                    <tr>
                                    <th style="padding: 10px 0; padding-left: 10px; font-size: 13px; line-height: 100%; border-width: 0 1px 1px 0; border-style: solid; border-color: #dbdbdb;  background-color: #f8f8f8;" rowspan="2">구분</th>
                                    <th style="padding: 10px 0; padding-left: 10px; font-size: 13px; line-height: 100%; border-width: 0 1px 1px 0; border-style: solid; border-color: #dbdbdb;  background-color: #f8f8f8;" colspan="2">시간권</th>
                                    <th style="padding: 10px 0; padding-left: 10px; font-size: 13px; line-height: 100%; border-width: 0 1px 1px 0; border-style: solid; border-color: #dbdbdb;  background-color: #f8f8f8;" rowspan="2">1일 주차권</th>
                                    <th style="padding: 10px 0; padding-left: 10px; font-size: 13px; line-height: 100%; border-width: 0 1px 1px 0; border-style: solid; border-color: #dbdbdb;  background-color: #f8f8f8;" rowspan="2" >
                                                                   고객할인
                                                                   <br/>  
                                    (열차이용고객, 장애인,
                                    <br/>
                                    경차 할인만 적용)
                                                                      </th>
                                    </tr>
                                    <tr>
                                    <th style="width: 100px !important;font-size: 13px; line-height: 100%; border-width: 0 1px 1px 0; border-style: solid; border-color: #dbdbdb;  background-color: #f8f8f8;" ">최초 30분</th>
                                    <th style="width: 100px !important;font-size: 13px; line-height: 100%; border-width: 0 1px 1px 0; border-style: solid; border-color: #dbdbdb;  background-color: #f8f8f8;"  ">추가 10분당</th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    <tr>
                                    <th style="padding: 10px 0; padding-left: 10px; font-size: 13px; line-height: 100%; border-width: 0 1px 1px 0; border-style: solid; border-color: #dbdbdb;">
                                    <b>수서역</b>
                                    </th>                                                    
                                    <th style="padding: 10px 0; padding-left: 10px; font-size: 13px; line-height: 100%; border-width: 0 1px 1px 0; border-style: solid; border-color: #dbdbdb;">3,000원</th>
                                    <th style="padding: 10px 0; padding-left: 10px; font-size: 13px; line-height: 100%; border-width: 0 1px 1px 0; border-style: solid; border-color: #dbdbdb;">1,000원</th>
                                    <th style="padding: 10px 0; padding-left: 10px; font-size: 13px; line-height: 100%; border-width: 0 1px 1px 0; border-style: solid; border-color: #dbdbdb;">25,000원</th>
                                    <th style="padding: 10px 0; padding-left: 10px; font-size: 13px; line-height: 100%; border-width: 0 1px 1px 0; border-style: solid; border-color: #dbdbdb;">30%</th>
                                    </tr>
                                      <tr>
                                    <th style="padding: 10px 0; padding-left: 10px; font-size: 13px; line-height: 100%; border-width: 0 1px 1px 0; border-style: solid; border-color: #dbdbdb;">
                                    <b>동탄역</b>
                                    </th>                                                    
                                    <th style="padding: 10px 0; padding-left: 10px; font-size: 13px; line-height: 100%; border-width: 0 1px 1px 0; border-style: solid; border-color: #dbdbdb;">1,500원</th>
                                    <th style="padding: 10px 0; padding-left: 10px; font-size: 13px; line-height: 100%; border-width: 0 1px 1px 0; border-style: solid; border-color: #dbdbdb;">400원</th>
                                    <th style="padding: 10px 0; padding-left: 10px; font-size: 13px; line-height: 100%; border-width: 0 1px 1px 0; border-style: solid; border-color: #dbdbdb;">18,000원</th>
                                    <th style="padding: 10px 0; padding-left: 10px; font-size: 13px; line-height: 100%; border-width: 0 1px 1px 0; border-style: solid; border-color: #dbdbdb;">30%</th>
                                    </tr>
                                     <tr>
                                    <th style="padding: 10px 0; padding-left: 10px; font-size: 13px; line-height: 100%; border-width: 0 1px 1px 0; border-style: solid; border-color: #dbdbdb;">
                                    <b>지제역</b>
                                    </th>                                                    
                                    <th style="padding: 10px 0; padding-left: 10px; font-size: 13px; line-height: 100%; border-width: 0 1px 1px 0; border-style: solid; border-color: #dbdbdb;">1,500원</th>
                                    <th style="padding: 10px 0; padding-left: 10px; font-size: 13px; line-height: 100%; border-width: 0 1px 1px 0; border-style: solid; border-color: #dbdbdb;">300원</th>
                                    <th style="padding: 10px 0; padding-left: 10px; font-size: 13px; line-height: 100%; border-width: 0 1px 1px 0; border-style: solid; border-color: #dbdbdb;">12,000원</th>
                                    <th style="padding: 10px 0; padding-left: 10px; font-size: 13px; line-height: 100%; border-width: 0 1px 1px 0; border-style: solid; border-color: #dbdbdb;">30%</th>
                                    </tr>
                                    </tbody>
                                    </table>
                                    <br />
                                    <li style="">*주차장이 매우 혼잡하므로 대중교통 이용을 부탁 드립니다.</li>
								
							
                          <div style="padding-top: 30px;">
                            <div style="padding: 50px 25px; border-bottom-width: 1px; border-bottom-style: dashed; border-bottom-color: #dbdbdb; background-repeat: no-repeat;">
                             <h4 style="font-size: 18px; line-height: 19px; color: #8f0349;">요금 할인</h4>
                              <ul style="margin-top: 15px;">
                              <li style="padding-left: 18px;">코센 열차 이용고객(승차권 지참)</li>
                              <li style="padding-left: 18px;">열차이용고객은 홈티켓 또는 SRT앱 내의 이용내역을 통해 탑승여부를 제시하셔야 합니다.</li>
                              <li style="padding-left: 18px;">장애인, 국가유공자 (증빙 지참 시, 적용)</li>
                              <li style="padding-left: 18px;">경차 우대</li>
                              </ul>
                            </div>
                          </div>
                             <div style="padding-top: 30px;">
                            <div style="padding: 50px 25px; border-bottom-width: 1px; border-bottom-style: dashed; border-bottom-color: #dbdbdb; background-repeat: no-repeat;">
                             <h4 style="font-size: 18px; line-height: 19px; color: #8f0349;">할인 적용 방법</h4>
                              <ul style="margin-top: 15px;">
                              <li style="padding-left: 18px;">주차장 관리원 호출 -> 증빙(승차권, 등록증)을 사전 무인정산기 [증빙제출]에 삽입</li>
                              <li style="padding-left: 18px;">할인 정산 확인 후 카드(신용카드, 교통카드)로 결제 진행(정산 후, 20분 내 출차하셔야 합니다)</li>
                              </ul>
                            </div>
                          </div>
                           <div style="padding-top: 30px;">
                            <div style="padding: 50px 25px; border-bottom-width: 1px; border-bottom-style: dashed; border-bottom-color: #dbdbdb; background-repeat: no-repeat;">
                             <h4 style="font-size: 18px; line-height: 19px; color: #8f0349;">인근 공영주차장 안내</h4>
                              <ul style="margin-top: 15px;">
                              <li style="padding-left: 18px;">만차시 주차를 할 수 없는 경우 인근 공용주차장을 이용 바랍니다.</li>
                              <li style="padding-left: 18px;">수서역 : 지하철3호선 수서역 1번 출구 앞</li>
                              <li style="padding-left: 18px;">지제역 : 지하철 지제역 앞 할인적용 방법</li>
                              <li style="padding-left: 18px;">동탄역 : 별도 공영주차장 없음</li>
                              </ul>
                            </div>
                          </div>
                            <div style="padding-top: 30px;">
                            <div style="padding: 50px 25px; border-bottom-width: 1px; border-bottom-style: dashed; border-bottom-color: #dbdbdb; background-repeat: no-repeat;">
                             <h4 style="font-size: 18px; line-height: 19px; color: #8f0349;">무인정산기 이용안내</h4>
                              <ul style="margin-top: 15px;">
                              <li style="padding-left: 18px;">카드로만 요금 결제가 가능합니다.(현금정산 불가)</li>
                              </ul>
                            </div>
                          </div>
						</div>
					</div>
                     </div>
                     </div>
					<div id="trainservice" class="tab4">
						<div
							style="width: 900px; color: #666; height: 1500px; padding: 10px 30px 30px 5px; margin-top: 20px; margin-bottom: 20px;">
                                <div style="margin-top: 25px; border-top-width: 2px; border-top-style: solid; border-top-color: #000;">
                                <h4 style="font-size: 18px; line-height: 19px; color:#8f0349;">특실서비스</h4>
                                <ul>
                                 <li>SRT 특실물품 고객 설문조사 결과를 반영한 고객맞춤 패키지 상품 제공</li>
                                 <li style="padding-left: 18px;">
                                 <b>물품</b>
                                 <br/>
                                 (기본)생수, 견과류, 쿠키, 물티슈, 일회용 가글
                                 <br/>
                                 (선택) 신문, 수면안대
                                 <br/>
                                 </li style="padding-left: 18px;">
                                 <li>
                                  <b>제공방법</b>
                                  : 기본제공 물품은 패키지 형태로 모든 특실 고객에게 승무원이 직접 제공하고,
                                 <br/>
                                 선택물품은 고객 요청 시 승무원이 개별제공
                                  </li>
                                   <li style="padding-left: 18px;">
                                 <b>물품</b>
                                 <br/>
                                 (기본)생수, 견과류, 쿠키, 물티슈, 일회용 가글
                                 <br/>
                                 (선택) 신문, 수면안대
                                 <br/>
                                 </li>
                                 <li>
                                  <b>제공방법</b>
                                  : 기본제공 물품은 패키지 형태로 모든 특실 고객에게 승무원이 직접 제공하고,
                                 <br/>
                                 선택물품은 고객 요청 시 승무원이 개별제공
                                  </li>
                                </ul>
                                
                                </div>

                                <div style="background-color: #f3f3f3;">
                                <h4 style="font-size: 18px; line-height: 19px; color: #8f0349;">차내 영상광고서비스</h4>
                                <ul style="margin-top: 15px;">
                                 <li style="">운영사 : iMBC</li>
                                 <li style="padding-left: 18px;">서비스내용 : 차내 자동안내방송, 영상콘텐츠 방송 및 뉴스, 차내 광고 등</li>
                                 <li style="padding-left: 18px;">고객센터 : 1544-4622(09:00~18:00 운영)</li>
                                </ul>
                                </div>
                                <div style="">
                                <h4 style="font-size: 18px; line-height: 19px; color: #8f0349;">무선인터넷서비스</h4>
                               <ul style="margin-top: 15px;">
                               <li style="">운영사 : KT</li>
                                 <li style="padding-left: 18px;">서비스내용 : 4G LTE 무선인터넷 무료 제공</li>
                                 <li style="padding-left: 18px;">고객센터 : 1588-5660(08:00~23:00)</li>
                                 <li style="font-size: 12px; color: #888; background-image: none;">※ 일부 구간에서 이용 속도가 느리고 장애가 발생할 수 있습니다.</li>
                               </ul> 
                                </div>
						</div>
					</div>
                     
					<div id="transportationservice" class="tab4">
						<div
							style="width: 900px; color: #666; height: 1500px; padding: 10px 30px 30px 5px; margin-top: 20px; margin-bottom: 20px;">
                          <div style="margin-top: 25px; border-top-width: 2px; border-top-style: solid; border-top-color: #000;">
                            <h4 style="font-size: 18px; line-height: 19px; color:#8f0349;">수서역 찾아오시는 길</h4>                          
                          <ul style="margin-top: 15px;">
                            <b>>>버스 이용 시</b>
                            <li>
                            [일반] 101 , [간선] 402 , [지선] 2412, 3416, 3425, 3426, 4419 , [마을] 강남03, 강남06, 강남06-1
                            <br/>
                                                                                                  ※탑승 후
                           <b>'쟁골마을'</b>
                                                 정류장 하차 
                            </li>
                             <li>
                            [일반] 101 , [지선] 2412, 3416 , [직행] 1007, 1007-1, 5600, 5700, 6900, [마을] 강남03, 강남06, 강남06-1
                            <br/>
                                                                                                  ※탑승 후
                           <b>'수서역 5번 출구'</b>
                                                 정류장 하차 
                            </li>
                          </ul>
                          <ul>
                            <b>>>지하철 이용 시</b>
                             <li>분당선-3호선 수서역에서 하차 후 환승통로 이용</li>
                          </ul>
                          <ul>
                          <b>>> 자가용 이용 시 </b>
                             <li>수서IC에서 밤고개로(0.6km)→광평로(0.2km)→광평로56길(0.2km)
                             <약 4분 소요>
                             </li>
                          <li>헌릉IC에서 헌릉로(0.2km)→자곡로(2.1km)→밤고개로(1.2km)
                            <약 9분 소요>
                             </li>
                                <li>송파IC에서 서울외곽순환도로(5.7km)→서울외곽순환도로(5.4km)→탄천동로(1.3km)
                           <약 25분 소요> 
                             </li>
                                <li>양재IC에서 경부고속도로(0.7km)→양지대로(5.3km)→밤고개로(0.5km)
                           <약 19분 소요> 
                             </li>
                          </ul>
                          
                          
                          </div>
                       
                       <div style="margin-top: 25px; border-top-width: 2px; border-top-style: solid; border-top-color: #000;">
                            <h4 style="font-size: 18px; line-height: 19px; color:#8f0349;">동탄역 찾아오시는 길</h4>                          
                          <ul style="margin-top: 15px;">
                            <b>>>버스 이용 시</b>
                            <li>
                            [일반] 80, 99, 200, 701, 708-1 , [마을] 19-1, 9A, 9B , [직행] 6001 , [광역] M4130 
                            <br/>
                                                                                                  ※탑승 후
                           <b>'‘동탄역 포스코’ '</b>
                                                 정류장 하차 
                            </li>
                                </ul>
                          <ul>
                            <b>>>지하철 이용 시</b>
                             <li>1호선 서동탄역 하차→’서동탄역신일해피트리’ 정류장에서 701번 버스 탑승→’우남퍼스트빌’ 정류장 하차→도보 5분</li>
                             <li>708번 버스 탑승→’우남퍼스트빌.자이’ 정류장 하차→도보 9분 </li>
                             <li>1호선 병점역 하차→’병점역’ 정류장에서 708-1번 버스 탑승→’우남퍼스트빌’ 정류장 하차→도보 5분 </li>
                          </ul>
                          <ul>
                          <b>>> 자가용 이용 시 </b>
                             <li>오산IC에서 경부고속도로(7.4km)
                             <약 6분 소요>
                             </li>
                          <li>기흥IC에서 경부고속도로(5.4km)→봉담동탄고속도로(5.0km)→봉담동탄고속도로(4.3km)→ 경부고속도로(3.4km)
                            <약 19분 소요>
                             </li>
                                <li>송파IC에서 서울외곽순환도로(5.7km)→서울외곽순환도로(5.4km)→탄천동로(1.3km)
                           <약 25분 소요> 
                             </li>
                                <li>북오산IC에서 봉담동탄고속도로(5.4km)→봉담동탄고속도로(9.2km)→경부고속도로(3.4km)
                           <약 13분 소요> 
                             </li>
                          </ul>
                          
                          
                          </div>
                       
                       <div style="margin-top: 25px; border-top-width: 2px; border-top-style: solid; border-top-color: #000;">
                            <h4 style="font-size: 18px; line-height: 19px; color:#8f0349;">지제역 찾아오시는 길</h4>                          
                          <ul style="margin-top: 15px;">
                            <b>>>버스 이용 시</b>
                            <li>
                            [일반]1-1, 2, 2-2, 810, 17, 27, 29, 3, 35, 36, 5-1
                            <br/>
                                                                                                  ※탑승 후
                           <b>'지제역'</b>
                                                 정류장 하차 
                            </li>
                          </ul>
                          <ul>
                            <b>>>지하철 이용 시</b>
                             <li>1호선 ‘지제역’ 하차 후 환승통로 이용</li>
                          </ul>
                          <ul>
                          <b>>> 자가용 이용 시 </b>
                             <li>오성IC에서 서동대로(5.6km)→은실고가길(0.7km)→울성길(0.2km)
                             <약 19분 소요>
                             </li>
                          <li>송탄IC에서 삼남로(2.0km)→남북대로(1.7km)→지제로(1.4km)
                            <약 17분 소요>
                             </li>
                                 
                          </ul>
                          
                          
                          </div>
                       

						</div>
					</div>




         </div>

					<!-- end -->


				</div>
			</div>
		</div>
		<!-- LOGIN  End   -->
		<jsp:include page="/view/container/containerBottom.jsp" flush="false" />
		<!-- 수정 부분 -->
		<script type="text/javascript">
			var slideIndex = 1;
			var slideIndex2 = 1;
		
			function plusSlides(n) {
				showSlides(slideIndex += n);
			}
		
			function currentSlide(n) {
				showSlides(slideIndex = n);
			}
			function plusSlides2(n) {
				showSlides2(slideIndex2 += n);
			}
		
			function currentSlide2(n) {
				showSlides2(slideIndex2 = n);
			}
			function showSlides(n) {
				var i;
				var slides = document.getElementsByClassName("mySlides");
				var dots = document.getElementsByClassName("station");
				if (n > slides.length) {
					slideIndex = 1
				}
				if (n < 1) {
					slideIndex = slides.length
				}
				for (i = 0; i < slides.length; i++) {
					slides[i].style.display = "none";
				}
				for (i = 0; i < dots.length; i++) {
					dots[i].className = dots[i].className
						.replace(" active", "");
				}
				slides[slideIndex - 1].style.display = "block";
				dots[slideIndex - 1].className += " active";
			}
			function showSlides2(n) {
				var i;
				var slides = document.getElementsByClassName("mySlides2");
				var dots = document.getElementsByClassName("station2");
				if (n > slides.length) {
					slideIndex2 = 1
				}
				if (n < 1) {
					slideIndex = slides.length
				}
				for (i = 0; i < slides.length; i++) {
					slides[i].style.display = "none";
				}
				for (i = 0; i < dots.length; i++) {
					dots[i].className = dots[i].className
						.replace(" active", "");
				}
				slides[slideIndex - 1].style.display = "block";
				dots[slideIndex - 1].className += " active";
			}
			var intervalShow = function() {
				slideIndex++;
				showSlides(slideIndex);
			}
		
			showSlides(slideIndex);
			var slidingInterval = setInterval('plusSlides(1)', 3000);
		
		
			var intervalShow2 = function() {
				slideIndex2++;
				showSlides2(slideIndex2);
			}
		
			showSlides2(slideIndex2);
			var slidingInterval2 = setInterval('plusSlides2(1)', 3000);
		
			function stopSliding(fa) {
				if (fa.className == "fa fa-pause") {
					fa.className = "fa fa-play";
					fa.style.color = "crimson";
					clearInterval(slidingInterval);
				} else if (fa.className == "fa fa-play") {
					fa.className = "fa fa-pause";
					fa.style.color = "maroon";
					plusSlides(1);
					slidingInterval = setInterval('plusSlides(1)', 3000);
				}
			}
			function stopSliding2(fa) {
				if (fa.className == "fa fa-pause") {
					fa.className = "fa fa-play";
					fa.style.color = "crimson";
					clearInterval(slidingInterval2);
				} else if (fa.className == "fa fa-play") {
					fa.className = "fa fa-pause";
					fa.style.color = "maroon";
					plusSlides2(1);
					slidingInterval2 = setInterval('plusSlides2(1)', 3000);
				}
			}
		</script>

		<script type="text/javascript" src="/web/js/container/clock.js"
			charset="UTF-8"></script>
</body>

</html>
