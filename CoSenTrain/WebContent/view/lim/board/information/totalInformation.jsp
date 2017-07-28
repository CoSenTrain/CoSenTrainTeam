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
				<h1 style="padding: 30px 30px 0 30px;" class="tkting-method">�����̿�ȳ�</h1>
				<span style="float: right; font-size: 12px; margin-right: 30px;">
					<a href="/web/view/container/container.jsp" class="fa fa-home"
					style="cursor: pointer; text-decoration: none; color: black;"></a>
					<i style="cursor: default;">&gt;</i> <a href=""
					style="cursor: pointer; text-decoration: none; color: black;">SR�ҽ�</a>
					<i style="cursor: default;">&gt;</i> <a href="#"
					style="cursor: pointer; text-decoration: none; color: black;"
					class="tkting-method">�����̿�ȳ�</a> <i style="cursor: default;">&gt;</i>
					<a href="#"
					style="cursor: pointer; text-decoration: none; color: black;"
					class="tkting-method2">��������</a>
				</span> <br /> <br /> <br />

				<!--  start-->
				<div
					style="width: 940px; padding: 0 30px 30px 30px; height: 1700px; background-color: white;">
					<div style="width: 940px; height: 50px;">
						<div style="text-align: center;">
							<button class="buttonTab"
								onclick="modifyTab(this,event,'discount')" id="defaultOpen">����������</button>
							<button class="buttonTab"
								onclick="modifyTab(this,event,'stationservice',start2())">������۾��/�μӾ��</button>
							<button class="buttonTab"
								onclick="modifyTab(this,event,'trainservice')">�̸��Ϲ��ܼ����ź�/���۱���å</button>
							<button class="buttonTab"
								onclick="modifyTab(this,event,'transportationservice')">�Կ�����/���������</button>
							<input type="hidden" id="changeMethod" name="changeMethod"
								value="discount" />
						</div>
					</div>

					<div id="discount" class="tab4">
						<div
							style="width: 900px; color: #666; height: 1500px; border: 1px solid lightgray; padding: 10px 30px 30px 5px; margin-top: 20px; margin-bottom: 20px;">
							<h4
								style="margin-top: 25px; font-size: 18px; line-height: 19px; color: #8f0349;">�⺻����</h4>
							<ul style="margin-top: 15px;">
								<li style="margin-top: 0px;">SRT�� �̿��ϴ� ��� ������ ����Ǵ� �⺻�� ����</li>
								<li
									style="font-size: 12px; color: #888; background-image: none;">��
									������ ����, ��������</li>

							</ul>
							<h4
								style="margin-top: 25px; font-size: 18px; line-height: 19px; color: #8f0349;">��������</h4>
							<ul style="margin-top: 15px;">
								<li style="margin-top: 0px;">����������, ����, ��� �� ���, ����ο� ����
									��������</li>

							</ul>
							<h4
								style="margin-top: 25px; font-size: 18px; line-height: 19px; color: #8f0349;">��������</h4>
							<ul style="margin-top: 15px;">
								<li style="margin-top: 0px;">���౸�� ��߿��� ������ ���� ������ ������ ���� ����
									0.2% ����</li>
								<li style="margin-top: 0px;">��������, �������α׷�� �ߺ����� ���</li>

							</ul>
							<h4
								style="margin-top: 25px; font-size: 18px; line-height: 19px; color: #8f0349;">������
								����</h4>
							<ul style="margin-top: 15px;">
								<li style="margin-top: 0px;">�¶��� Ȩ������, SRT������ ������ �߱� �� ������
									1% ����</li>
								<li style="margin-top: 0px;">- ���� ��~�� ����, �ָ� �� ������(��ü ������
									����) ����</li>
								<li style="margin-top: 0px;">��������, �������� �׷�� �ߺ����� ��� ���</li>

							</ul>
							<h4
								style="margin-top: 25px; font-size: 18px; line-height: 19px; color: #8f0349;">�߸Ÿ�ü
								����</h4>
							<ul style="margin-top: 15px;">
								<li style="margin-top: 0px;">�¶��� Ȩ������, SRT������ ������ �߱� �� ������
									1% ����</li>
								<li style="margin-top: 0px;">- ���� ��~�� ����, �ָ� �� ������(��ü ������
									����) ����</li>
								<li style="margin-top: 0px;">��������, �������� �׷�� �ߺ����� ��� ���</li>

							</ul>
							<h4
								style="margin-top: 25px; font-size: 18px; line-height: 19px; color: #8f0349;">����������
								����</h4>
							<ul style="margin-top: 15px;">
								<li style="margin-top: 0px;">����������, ����������, 5��18����������(��ȣ�� 1��
									����) ��� ���� ����</li>
								<li style="margin-top: 0px;">�⺻���α׷�� �ߺ����� ���</li>
								<li
									style="font-size: 12px; color: #888; background-image: none;">�ر���������
									: �������� ����, 4��19����λ���, ��������� �� Ư�����λ����� ����</li>

							</ul>
							<h4
								style="margin-top: 25px; font-size: 18px; line-height: 19px; color: #8f0349;">�����
								����</h4>
							<ul style="margin-top: 15px;">
								<li style="margin-top: 0px;">����κ����� �� ���� ����ɿ� ���� ��������� ��ֵ��
									1~3�� 50%, ��ֵ�� 4~6�� ���� 30% ���� ����</li>
								<li style="margin-top: 0px;">�⺻���α׷�� �ߺ����� ���</li>

							</ul>
							<h4
								style="margin-top: 25px; font-size: 18px; line-height: 19px; color: #8f0349;">���
								����</h4>
							<ul style="margin-top: 15px;">
								<li style="margin-top: 0px;">���κ����� �� ���� ����ɿ� ���� 65�� �̻󿡰� ����
									30% ���� ����</li>
								<li style="margin-top: 0px;">�⺻���α׷�� �ߺ����� ���</li>

							</ul>
							<h4
								style="margin-top: 25px; font-size: 18px; line-height: 19px; color: #8f0349;">��
								�ı� ����</h4>
							<ul style="margin-top: 15px;">
								<li style="margin-top: 0px;">����ο� �ı���޼��۰�࿡ ���� �ı������� �߱��ڿ�
									���� ����</li>
								<li style="margin-top: 0px;">�⺻���α׷�� �ߺ����� ���</li>

							</ul>
							<h4
								style="margin-top: 25px; font-size: 18px; line-height: 19px; color: #8f0349;">��ü
								����</h4>
							<ul style="margin-top: 15px;">
								<li style="margin-top: 0px;">10���̻� ��ü�� ������ �ϰ��� �ϴ� ���� �¼�
									���Խ� ������ 10% ����</li>
								<li style="margin-top: 0px;">�⺻���� �׷�� �ߺ����� �����ϰ� ������ ������ ����</li>
								<li style="margin-top: 0px;">������ �¼� ����, ����� ���ÿ� ����</li>

							</ul>
						</div>
					</div>



					<div id="stationservice" class="tab4">
						<div
							style="width: 900px; color: #666; height: 1700px; padding: 10px 30px 30px 5px; margin-top: 20px; margin-bottom: 20px;">
							<div style="width: 940px; height: 50px;">
								<div style="text-align: center;">
									<button class="buttonTab2"
										onclick="modifyTab2(this,event,'soosu')" id="defaultOpen2">������
										�����</button>
									<button class="buttonTab2"
										onclick="modifyTab2(this,event,'dongtan')">��ź�� �����</button>
									<button class="buttonTab2"
										onclick="modifyTab2(this,event,'parking')">������ �̿�ȳ�</button>
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
										style="padding-left: 15px; float: left; margin-top: 10 px; font-size: 18px; line-height: 19px; color: #8f0349;">�������</h4>
									<ul style="margin-top: 20px;">
										<li style="float: left; padding-left: 18px; margin-top: 7px;">�̿���
											: SRȸ��, �츮ī�� �� SRT ����ī��(����ī��) ȸ��, ���� SRT Ư�ǰ�</li>
										<li style="float: left; padding-left: 18px;">��ð� :
											07:00~21:00(���߹���)</li>
										<li style="float: left; padding-left: 18px;">���Թ�� :
											(QR�ڵ�) SRT �� �Ŵ� -> MY SRT -> ����� ī�� Ȯ�� -> QR�ڵ� ������ �ν� <br>
											<span style="float: left;">(ī�� ������) ���Թ� �� ��ġ�� ī�帮���⿡
												ī�� �ν�</span> <br> <span
											style="float: left; padding-right: 40px; margin-right: 40px;">SRT
												Ư�ǰ� ������ Ȯ��</span>
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
										style="padding-left: 15px; float: left; margin-top: 10 px; font-size: 18px; line-height: 19px; color: #8f0349;">�������</h4>
									<ul style="margin-top: 20px;">
										<li style="float: left; padding-left: 18px; margin-top: 7px;">�̿���
											: SRȸ��, �츮ī�� �� SRT ����ī��(����ī��) ȸ��, ���� SRT Ư�ǰ�</li>
										<li style="float: left; padding-left: 18px;">��ð� :
											07:00~21:00(���߹���)</li>
										<li style="float: left; padding-left: 18px;">���Թ�� :
											(QR�ڵ�) SRT �� �Ŵ� -> MY SRT -> ����� ī�� Ȯ�� -> QR�ڵ� ������ �ν� <br>
											<span style="float: left;">(ī�� ������) ���Թ� �� ��ġ�� ī�帮���⿡
												ī�� �ν�</span> <br> <span
											style="float: left; padding-right: 40px; margin-right: 40px;">SRT
												Ư�ǰ� ������ Ȯ��</span>
										</li>
									</ul>

								</div>

   
							</div>

							<div id="parking" class="tab3">
								<div style="padding-top: 30px;">
									<h4
										style="margin-top: 25px; font-size: 18px; line-height: 19px; color: #8f0349;">������
										��ġ �ȳ�</h4>
									<table
										style="width: 100%; margin-top: 15px; border-top-width: 2px; border-top-style: solid; border-top-color: #5e5e5e;">
										<caption>������ ��ġ �ȳ�(����, ������, �ּ�, �����ȳ��� ����)</caption>
										<colgroup>
											<col width="20%"></col>
											<col width="20%"></col>
											<col width="40%"></col>
											<col width="20%"></col>

										</colgroup>
										<thead>
											<tr>
												<th
													style="padding: 10px 0; padding-left: 10px; font-size: 13px; line-height: 100%; border-width: 0 1px 1px 0; border-style: solid; border-color: #dbdbdb; background-color: #f8f8f8;">����</th>
												<th
													style="padding: 10px 0; padding-left: 10px; font-size: 13px; line-height: 100%; border-width: 0 1px 1px 0; border-style: solid; border-color: #dbdbdb; background-color: #f8f8f8;">������</th>
												<th
													style="padding: 10px 0; padding-left: 10px; font-size: 13px; line-height: 100%; border-width: 0 1px 1px 0; border-style: solid; border-color: #dbdbdb; background-color: #f8f8f8;">�ּ�</th>
												<th
													style="padding: 10px 0; padding-left: 10px; font-size: 13px; line-height: 100%; border-width: 0 1px 1px 0; border-style: solid; border-color: #dbdbdb; background-color: #f8f8f8;">�����ȳ�</th>
											</tr>
										</thead>
										<tbody>
											<tr>
												<th
													style="padding: 10px 0; padding-left: 10px; font-size: 13px; line-height: 100%; border-width: 0 1px 1px 0; border-style: solid; border-color: #dbdbdb;">
													<b>������</b>
												</th>
												<th
													style="padding: 10px 0; padding-left: 10px; font-size: 13px; line-height: 100%; border-width: 0 1px 1px 0; border-style: solid; border-color: #dbdbdb;">
													<b>601</b>
												</th>
												<th
													style="padding: 10px 0; padding-left: 10px; font-size: 13px; line-height: 100%; border-width: 0 1px 1px 0; border-style: solid; border-color: #dbdbdb;">
													<b>���� ������ ������ 735</b>
												</th>
												<th
													style="padding: 10px 0; padding-left: 10px; font-size: 13px; line-height: 100%; border-width: 0 1px 1px 0; border-style: solid; border-color: #dbdbdb;">
													<li>
													 <a style="color:#555; font-family:'ng','���� ���','����','Dotum','Droid','Snas','AppleGothic'; text-decoration: none;"  title="������" href="http://dmaps.kr/36m68" target="_blank">�ٷΰ���</a>
												</li>
												</th>
												</tr>
												<tr>
													<th
													style="padding: 10px 0; padding-left: 10px; font-size: 13px; line-height: 100%; border-width: 0 1px 1px 0; border-style: solid; border-color: #dbdbdb;">
													<b>��ź��</b>
												</th>
												<th
													style="padding: 10px 0; padding-left: 10px; font-size: 13px; line-height: 100%; border-width: 0 1px 1px 0; border-style: solid; border-color: #dbdbdb;">
													<b>390</b>
												</th>
												<th
													style="padding: 10px 0; padding-left: 10px; font-size: 13px; line-height: 100%; border-width: 0 1px 1px 0; border-style: solid; border-color: #dbdbdb;">
													<b>��⵵ ȭ���� ��ź���� ���� 151(���굿, ��ź����)</b>
												</th>
                                                	<th
													style="padding: 10px 0; padding-left: 10px; font-size: 13px; line-height: 100%; border-width: 0 1px 1px 0; border-style: solid; border-color: #dbdbdb;">
													<li>
													 <a style="color:#555; font-family:'ng','���� ���','����','Dotum','Droid','Snas','AppleGothic'; text-decoration: none;"  title="��ź��" href="http://dmaps.kr/36m5x" target="_blank">�ٷΰ���</a>
												</li>
												</th>
												</tr>
												<tr>
												<th
													style="padding: 10px 0; padding-left: 10px; font-size: 13px; line-height: 100%; border-width: 0 1px 1px 0; border-style: solid; border-color: #dbdbdb;">
													<b>������</b>
												</th>
												<th
													style="padding: 10px 0; padding-left: 10px; font-size: 13px; line-height: 100%; border-width: 0 1px 1px 0; border-style: solid; border-color: #dbdbdb;">
													<b>100</b>
												</th>
												<th
													style="padding: 10px 0; padding-left: 10px; font-size: 13px; line-height: 100%; border-width: 0 1px 1px 0; border-style: solid; border-color: #dbdbdb;">
													<b>��� ���ý� ����� 777</b>
												</th>
													<th
													style="padding: 10px 0; padding-left: 10px; font-size: 13px; line-height: 100%; border-width: 0 1px 1px 0; border-style: solid; border-color: #dbdbdb;">
													<li>
													 <a style="color:#555; font-family:'ng','���� ���','����','Dotum','Droid','Snas','AppleGothic'; text-decoration: none;"  title="������" href="http://dmaps.kr/36m6e" target="_blank">�ٷΰ���</a>
												</li>
												</th>
													         
											   </tr>

										</tbody>
									</table>
									<table style="width: 100%; margin-top: 15px; border-top-width: 2px; border-top-style: solid; border-top-color: #5e5e5e;">
                                  <h4 style="margin-top: 25px; font-size: 18px; line-height: 19px; color : #8f0349;">�̿��ݾȳ�</h4>
								  <caption>�̿��ݾȳ�</caption>
								  <colgroup>
								    <col width="20%">
								    <col width="20%">
								    <col width="20%">
								    <col width="20%">
								    <col width="20%">
								  </colgroup>
                                    <thead>
                                    <tr>
                                    <th style="padding: 10px 0; padding-left: 10px; font-size: 13px; line-height: 100%; border-width: 0 1px 1px 0; border-style: solid; border-color: #dbdbdb;  background-color: #f8f8f8;" rowspan="2">����</th>
                                    <th style="padding: 10px 0; padding-left: 10px; font-size: 13px; line-height: 100%; border-width: 0 1px 1px 0; border-style: solid; border-color: #dbdbdb;  background-color: #f8f8f8;" colspan="2">�ð���</th>
                                    <th style="padding: 10px 0; padding-left: 10px; font-size: 13px; line-height: 100%; border-width: 0 1px 1px 0; border-style: solid; border-color: #dbdbdb;  background-color: #f8f8f8;" rowspan="2">1�� ������</th>
                                    <th style="padding: 10px 0; padding-left: 10px; font-size: 13px; line-height: 100%; border-width: 0 1px 1px 0; border-style: solid; border-color: #dbdbdb;  background-color: #f8f8f8;" rowspan="2" >
                                                                   ������
                                                                   <br/>  
                                    (�����̿��, �����,
                                    <br/>
                                    ���� ���θ� ����)
                                                                      </th>
                                    </tr>
                                    <tr>
                                    <th style="width: 100px !important;font-size: 13px; line-height: 100%; border-width: 0 1px 1px 0; border-style: solid; border-color: #dbdbdb;  background-color: #f8f8f8;" ">���� 30��</th>
                                    <th style="width: 100px !important;font-size: 13px; line-height: 100%; border-width: 0 1px 1px 0; border-style: solid; border-color: #dbdbdb;  background-color: #f8f8f8;"  ">�߰� 10�д�</th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    <tr>
                                    <th style="padding: 10px 0; padding-left: 10px; font-size: 13px; line-height: 100%; border-width: 0 1px 1px 0; border-style: solid; border-color: #dbdbdb;">
                                    <b>������</b>
                                    </th>                                                    
                                    <th style="padding: 10px 0; padding-left: 10px; font-size: 13px; line-height: 100%; border-width: 0 1px 1px 0; border-style: solid; border-color: #dbdbdb;">3,000��</th>
                                    <th style="padding: 10px 0; padding-left: 10px; font-size: 13px; line-height: 100%; border-width: 0 1px 1px 0; border-style: solid; border-color: #dbdbdb;">1,000��</th>
                                    <th style="padding: 10px 0; padding-left: 10px; font-size: 13px; line-height: 100%; border-width: 0 1px 1px 0; border-style: solid; border-color: #dbdbdb;">25,000��</th>
                                    <th style="padding: 10px 0; padding-left: 10px; font-size: 13px; line-height: 100%; border-width: 0 1px 1px 0; border-style: solid; border-color: #dbdbdb;">30%</th>
                                    </tr>
                                      <tr>
                                    <th style="padding: 10px 0; padding-left: 10px; font-size: 13px; line-height: 100%; border-width: 0 1px 1px 0; border-style: solid; border-color: #dbdbdb;">
                                    <b>��ź��</b>
                                    </th>                                                    
                                    <th style="padding: 10px 0; padding-left: 10px; font-size: 13px; line-height: 100%; border-width: 0 1px 1px 0; border-style: solid; border-color: #dbdbdb;">1,500��</th>
                                    <th style="padding: 10px 0; padding-left: 10px; font-size: 13px; line-height: 100%; border-width: 0 1px 1px 0; border-style: solid; border-color: #dbdbdb;">400��</th>
                                    <th style="padding: 10px 0; padding-left: 10px; font-size: 13px; line-height: 100%; border-width: 0 1px 1px 0; border-style: solid; border-color: #dbdbdb;">18,000��</th>
                                    <th style="padding: 10px 0; padding-left: 10px; font-size: 13px; line-height: 100%; border-width: 0 1px 1px 0; border-style: solid; border-color: #dbdbdb;">30%</th>
                                    </tr>
                                     <tr>
                                    <th style="padding: 10px 0; padding-left: 10px; font-size: 13px; line-height: 100%; border-width: 0 1px 1px 0; border-style: solid; border-color: #dbdbdb;">
                                    <b>������</b>
                                    </th>                                                    
                                    <th style="padding: 10px 0; padding-left: 10px; font-size: 13px; line-height: 100%; border-width: 0 1px 1px 0; border-style: solid; border-color: #dbdbdb;">1,500��</th>
                                    <th style="padding: 10px 0; padding-left: 10px; font-size: 13px; line-height: 100%; border-width: 0 1px 1px 0; border-style: solid; border-color: #dbdbdb;">300��</th>
                                    <th style="padding: 10px 0; padding-left: 10px; font-size: 13px; line-height: 100%; border-width: 0 1px 1px 0; border-style: solid; border-color: #dbdbdb;">12,000��</th>
                                    <th style="padding: 10px 0; padding-left: 10px; font-size: 13px; line-height: 100%; border-width: 0 1px 1px 0; border-style: solid; border-color: #dbdbdb;">30%</th>
                                    </tr>
                                    </tbody>
                                    </table>
                                    <br />
                                    <li style="">*�������� �ſ� ȥ���ϹǷ� ���߱��� �̿��� ��Ź �帳�ϴ�.</li>
								
							
                          <div style="padding-top: 30px;">
                            <div style="padding: 50px 25px; border-bottom-width: 1px; border-bottom-style: dashed; border-bottom-color: #dbdbdb; background-repeat: no-repeat;">
                             <h4 style="font-size: 18px; line-height: 19px; color: #8f0349;">��� ����</h4>
                              <ul style="margin-top: 15px;">
                              <li style="padding-left: 18px;">�ڼ� ���� �̿��(������ ����)</li>
                              <li style="padding-left: 18px;">�����̿���� ȨƼ�� �Ǵ� SRT�� ���� �̿볻���� ���� ž�¿��θ� �����ϼž� �մϴ�.</li>
                              <li style="padding-left: 18px;">�����, ���������� (���� ���� ��, ����)</li>
                              <li style="padding-left: 18px;">���� ���</li>
                              </ul>
                            </div>
                          </div>
                             <div style="padding-top: 30px;">
                            <div style="padding: 50px 25px; border-bottom-width: 1px; border-bottom-style: dashed; border-bottom-color: #dbdbdb; background-repeat: no-repeat;">
                             <h4 style="font-size: 18px; line-height: 19px; color: #8f0349;">���� ���� ���</h4>
                              <ul style="margin-top: 15px;">
                              <li style="padding-left: 18px;">������ ������ ȣ�� -> ����(������, �����)�� ���� ��������� [��������]�� ����</li>
                              <li style="padding-left: 18px;">���� ���� Ȯ�� �� ī��(�ſ�ī��, ����ī��)�� ���� ����(���� ��, 20�� �� �����ϼž� �մϴ�)</li>
                              </ul>
                            </div>
                          </div>
                           <div style="padding-top: 30px;">
                            <div style="padding: 50px 25px; border-bottom-width: 1px; border-bottom-style: dashed; border-bottom-color: #dbdbdb; background-repeat: no-repeat;">
                             <h4 style="font-size: 18px; line-height: 19px; color: #8f0349;">�α� ���������� �ȳ�</h4>
                              <ul style="margin-top: 15px;">
                              <li style="padding-left: 18px;">������ ������ �� �� ���� ��� �α� ������������ �̿� �ٶ��ϴ�.</li>
                              <li style="padding-left: 18px;">������ : ����ö3ȣ�� ������ 1�� �ⱸ ��</li>
                              <li style="padding-left: 18px;">������ : ����ö ������ �� �������� ���</li>
                              <li style="padding-left: 18px;">��ź�� : ���� ���������� ����</li>
                              </ul>
                            </div>
                          </div>
                            <div style="padding-top: 30px;">
                            <div style="padding: 50px 25px; border-bottom-width: 1px; border-bottom-style: dashed; border-bottom-color: #dbdbdb; background-repeat: no-repeat;">
                             <h4 style="font-size: 18px; line-height: 19px; color: #8f0349;">��������� �̿�ȳ�</h4>
                              <ul style="margin-top: 15px;">
                              <li style="padding-left: 18px;">ī��θ� ��� ������ �����մϴ�.(�������� �Ұ�)</li>
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
                                <h4 style="font-size: 18px; line-height: 19px; color:#8f0349;">Ư�Ǽ���</h4>
                                <ul>
                                 <li>SRT Ư�ǹ�ǰ �� �������� ����� �ݿ��� ������ ��Ű�� ��ǰ ����</li>
                                 <li style="padding-left: 18px;">
                                 <b>��ǰ</b>
                                 <br/>
                                 (�⺻)����, �߰���, ��Ű, ��Ƽ��, ��ȸ�� ����
                                 <br/>
                                 (����) �Ź�, ����ȴ�
                                 <br/>
                                 </li style="padding-left: 18px;">
                                 <li>
                                  <b>�������</b>
                                  : �⺻���� ��ǰ�� ��Ű�� ���·� ��� Ư�� ������ �¹����� ���� �����ϰ�,
                                 <br/>
                                 ���ù�ǰ�� �� ��û �� �¹����� ��������
                                  </li>
                                   <li style="padding-left: 18px;">
                                 <b>��ǰ</b>
                                 <br/>
                                 (�⺻)����, �߰���, ��Ű, ��Ƽ��, ��ȸ�� ����
                                 <br/>
                                 (����) �Ź�, ����ȴ�
                                 <br/>
                                 </li>
                                 <li>
                                  <b>�������</b>
                                  : �⺻���� ��ǰ�� ��Ű�� ���·� ��� Ư�� ������ �¹����� ���� �����ϰ�,
                                 <br/>
                                 ���ù�ǰ�� �� ��û �� �¹����� ��������
                                  </li>
                                </ul>
                                
                                </div>

                                <div style="background-color: #f3f3f3;">
                                <h4 style="font-size: 18px; line-height: 19px; color: #8f0349;">���� ���󱤰���</h4>
                                <ul style="margin-top: 15px;">
                                 <li style="">��� : iMBC</li>
                                 <li style="padding-left: 18px;">���񽺳��� : ���� �ڵ��ȳ����, ���������� ��� �� ����, ���� ���� ��</li>
                                 <li style="padding-left: 18px;">������ : 1544-4622(09:00~18:00 �)</li>
                                </ul>
                                </div>
                                <div style="">
                                <h4 style="font-size: 18px; line-height: 19px; color: #8f0349;">�������ͳݼ���</h4>
                               <ul style="margin-top: 15px;">
                               <li style="">��� : KT</li>
                                 <li style="padding-left: 18px;">���񽺳��� : 4G LTE �������ͳ� ���� ����</li>
                                 <li style="padding-left: 18px;">������ : 1588-5660(08:00~23:00)</li>
                                 <li style="font-size: 12px; color: #888; background-image: none;">�� �Ϻ� �������� �̿� �ӵ��� ������ ��ְ� �߻��� �� �ֽ��ϴ�.</li>
                               </ul> 
                                </div>
						</div>
					</div>
                     
					<div id="transportationservice" class="tab4">
						<div
							style="width: 900px; color: #666; height: 1500px; padding: 10px 30px 30px 5px; margin-top: 20px; margin-bottom: 20px;">
                          <div style="margin-top: 25px; border-top-width: 2px; border-top-style: solid; border-top-color: #000;">
                            <h4 style="font-size: 18px; line-height: 19px; color:#8f0349;">������ ã�ƿ��ô� ��</h4>                          
                          <ul style="margin-top: 15px;">
                            <b>>>���� �̿� ��</b>
                            <li>
                            [�Ϲ�] 101 , [����] 402 , [����] 2412, 3416, 3425, 3426, 4419 , [����] ����03, ����06, ����06-1
                            <br/>
                                                                                                  ��ž�� ��
                           <b>'�����'</b>
                                                 ������ ���� 
                            </li>
                             <li>
                            [�Ϲ�] 101 , [����] 2412, 3416 , [����] 1007, 1007-1, 5600, 5700, 6900, [����] ����03, ����06, ����06-1
                            <br/>
                                                                                                  ��ž�� ��
                           <b>'������ 5�� �ⱸ'</b>
                                                 ������ ���� 
                            </li>
                          </ul>
                          <ul>
                            <b>>>����ö �̿� ��</b>
                             <li>�д缱-3ȣ�� ���������� ���� �� ȯ����� �̿�</li>
                          </ul>
                          <ul>
                          <b>>> �ڰ��� �̿� �� </b>
                             <li>����IC���� �����(0.6km)�汤���(0.2km)�汤���56��(0.2km)
                             <�� 4�� �ҿ�>
                             </li>
                          <li>�帪IC���� �帪��(0.2km)���ڰ��(2.1km)������(1.2km)
                            <�� 9�� �ҿ�>
                             </li>
                                <li>����IC���� ����ܰ���ȯ����(5.7km)�漭��ܰ���ȯ����(5.4km)��źõ����(1.3km)
                           <�� 25�� �ҿ�> 
                             </li>
                                <li>����IC���� ��ΰ�ӵ���(0.7km)��������(5.3km)������(0.5km)
                           <�� 19�� �ҿ�> 
                             </li>
                          </ul>
                          
                          
                          </div>
                       
                       <div style="margin-top: 25px; border-top-width: 2px; border-top-style: solid; border-top-color: #000;">
                            <h4 style="font-size: 18px; line-height: 19px; color:#8f0349;">��ź�� ã�ƿ��ô� ��</h4>                          
                          <ul style="margin-top: 15px;">
                            <b>>>���� �̿� ��</b>
                            <li>
                            [�Ϲ�] 80, 99, 200, 701, 708-1 , [����] 19-1, 9A, 9B , [����] 6001 , [����] M4130 
                            <br/>
                                                                                                  ��ž�� ��
                           <b>'����ź�� �����ڡ� '</b>
                                                 ������ ���� 
                            </li>
                                </ul>
                          <ul>
                            <b>>>����ö �̿� ��</b>
                             <li>1ȣ�� ����ź�� �����桯����ź����������Ʈ���� �����忡�� 701�� ���� ž�¡桯�쳲�۽�Ʈ���� ������ �����浵�� 5��</li>
                             <li>708�� ���� ž�¡桯�쳲�۽�Ʈ��.���̡� ������ �����浵�� 9�� </li>
                             <li>1ȣ�� ������ �����桯�������� �����忡�� 708-1�� ���� ž�¡桯�쳲�۽�Ʈ���� ������ �����浵�� 5�� </li>
                          </ul>
                          <ul>
                          <b>>> �ڰ��� �̿� �� </b>
                             <li>����IC���� ��ΰ�ӵ���(7.4km)
                             <�� 6�� �ҿ�>
                             </li>
                          <li>����IC���� ��ΰ�ӵ���(5.4km)����㵿ź��ӵ���(5.0km)����㵿ź��ӵ���(4.3km)�� ��ΰ�ӵ���(3.4km)
                            <�� 19�� �ҿ�>
                             </li>
                                <li>����IC���� ����ܰ���ȯ����(5.7km)�漭��ܰ���ȯ����(5.4km)��źõ����(1.3km)
                           <�� 25�� �ҿ�> 
                             </li>
                                <li>�Ͽ���IC���� ���㵿ź��ӵ���(5.4km)����㵿ź��ӵ���(9.2km)���ΰ�ӵ���(3.4km)
                           <�� 13�� �ҿ�> 
                             </li>
                          </ul>
                          
                          
                          </div>
                       
                       <div style="margin-top: 25px; border-top-width: 2px; border-top-style: solid; border-top-color: #000;">
                            <h4 style="font-size: 18px; line-height: 19px; color:#8f0349;">������ ã�ƿ��ô� ��</h4>                          
                          <ul style="margin-top: 15px;">
                            <b>>>���� �̿� ��</b>
                            <li>
                            [�Ϲ�]1-1, 2, 2-2, 810, 17, 27, 29, 3, 35, 36, 5-1
                            <br/>
                                                                                                  ��ž�� ��
                           <b>'������'</b>
                                                 ������ ���� 
                            </li>
                          </ul>
                          <ul>
                            <b>>>����ö �̿� ��</b>
                             <li>1ȣ�� ���������� ���� �� ȯ����� �̿�</li>
                          </ul>
                          <ul>
                          <b>>> �ڰ��� �̿� �� </b>
                             <li>����IC���� �������(5.6km)�����ǰ���(0.7km)��Ｚ��(0.2km)
                             <�� 19�� �ҿ�>
                             </li>
                          <li>��źIC���� �ﳲ��(2.0km)�泲�ϴ��(1.7km)��������(1.4km)
                            <�� 17�� �ҿ�>
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
		<!-- ���� �κ� -->
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
