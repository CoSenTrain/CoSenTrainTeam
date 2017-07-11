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
	function modifyTab2(o, evt, cityName) {
		//openCity(o, evt, cityName)  

		document.getElementById("changeMethod2").value = cityName;

		var i, tabcontent, tablinks;
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
				<h1 style="padding: 30px 30px 0 30px;" class="tkting-method">할인제도</h1>
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
					style="width: 940px; padding: 0 30px 30px 30px; height: 1500px; background-color: white;">
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
							style="width: 900px; color: #666; height: 1500px; padding: 10px 30px 30px 5px; margin-top: 20px; margin-bottom: 20px;">
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

								흠 동탄은 왜 안되나;

							</div>

							<div id="parking" class="tab3"></div>



						</div>
					</div>

					<div id="trainservice" class="tab4">
						<div
							style="width: 900px; color: #666; height: 1500px; padding: 10px 30px 30px 5px; margin-top: 20px; margin-bottom: 20px;">



						</div>
					</div>

					<div id="transportationservice" class="tab4">
						<div
							style="width: 900px; color: #666; height: 1500px; padding: 10px 30px 30px 5px; margin-top: 20px; margin-bottom: 20px;">



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
