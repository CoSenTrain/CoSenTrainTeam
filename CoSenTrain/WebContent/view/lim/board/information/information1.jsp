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
hover : pink;
display: inline-block;
padding: 15px 0;
font-size: 15px;
font-weight: bold;
text-align: center;
border-width: 1px 1px 1px 0;
border-style: solid;
border-color: #ccc;
background-color: snow;
color:gray;

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

	var i,
		tabcontent,
		tablinks;
	tabcontent = document.getElementsByClassName("tab5");
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
				<h1 style="padding: 30px 30px 0 30px;" class="tkting-method">이메일무단수집거부/저작권정책</h1>
				<span style="float: right; font-size: 12px; margin-right: 30px;">
					<a href="/web/view/container/container.jsp" class="fa fa-home"
					style="cursor: pointer; text-decoration: none; color: black;"></a>
					<i style="cursor: default;">&gt;</i> <a href=""
					style="cursor: pointer; text-decoration: none; color: black;">SR소식</a>
					<i style="cursor: default;">&gt;</i> <a href="#"
					style="cursor: pointer; text-decoration: none; color: black;"
					class="tkting-method">안내사항</a> <i style="cursor: default;">&gt;</i>
					<a href="#"
					style="cursor: pointer; text-decoration: none; color: black;"
					class="tkting-method2">고객서비스헌장</a>
				</span> <br /> <br /> <br />

				<!--  start-->
				<div style="width: 940px; padding: 0 30px 30px 30px; height: 3000px; background-color: white;">
					<div style="width: 940px; height: 50px;">
						<div style="text-align: center;">
							<button class="buttonTab"
								onclick="modifyTab(this,event,'service')" id="defaultOpen">고객서비스헌장</button>
							<button class="buttonTab" onclick="modifyTab(this,event,'terms')">여객운송약관/부속약관</button>
							<button class="buttonTab" onclick="modifyTab(this,event,'email')">이메일무단수집거부/저작권정책</button>
							<button class="buttonTab" onclick="modifyTab(this,event,'fee')">촬영승인/수수료기준</button>
							<button class="buttonTab"
								onclick="modifyTab(this,event,'notice')">영상정보처리기기 운영방침</button>
							<input type="hidden" id="changeMethod" name="changeMethod"
								value="service" />
						</div>
					</div>

					<div id="service" class="tab5">
						<div style="width: 900px; color: #666; height: 1050px; 
					border: 1px solid lightgray; 
							padding: 10px 30px 30px 5px; margin-top: 20px; margin-bottom: 20px;">
					 <img alt="" src="/web/img/lim/notice/info/info1.JPG" 
					 style="height:581px; margin-top: 25px; font-size: 0px; line-height: 0;"></img>
					<br>
					<h4 style="margin-top: 25px; margin-bottom: 15px; font-size: 18px; line-height: 19px; color: #8ff0349;">서비스 이행 기준</h4>
					<table style="border-spacing: 0; font-family: 'ng','맑은고딕','돋움','Dotum','Droid','Snas','AppleGothic'; line-height: 180%; font-size: 14px; color:#666;">
					<colgroup>
					<col width="150px">
					<col width="750px">
					</colgroup>
					<tr><th style="padding: 10px 0; padding-left:10px; font-size: 13px; line-height: 100%; border-width: 0 1px 1px 0; border-style: solid; border-color: #dbdbdb; background-color: #f8f8f8;">항목</th><th style="padding 10px 0; padding-left:10px; font-size: 13px; line-height: 100%; border-width: 0 1px 1px 0; border-style: solid; border-color: #dbdbdb; background-color: #f8f8f8;">주요이행기준</th></tr>
					<tr><th style="padding:10px 0; padding-left:10px; font-size:13px; line-height: 100%; border-width: 0 1px 1px 0; border-style: solid; border-color: #dbdbdb;">안전성</th><td style="padding:10px 0; padding-left:10px; font-size:13px; line-height: 100%; border-width: 0 1px 1px 0; border-style: solid; border-color: #dbdbdb;">종합안전심사 연 1회, 비상대응훈련 연2회</td></tr>
					<tr><th style="padding:10px 0; padding-left:10px; font-size:13px; line-height: 100%; border-width: 0 1px 1px 0; border-style: solid; border-color: #dbdbdb;">정시성</th><td style="padding:10px 0; padding-left:10px; font-size:13px; line-height: 100%; border-width: 0 1px 1px 0; border-style: solid; border-color: #dbdbdb;">SRT 5분 이상 늦지 않도록 운행</td></tr>
					<tr><th style="padding:10px 0; padding-left:10px; font-size:13px; line-height: 100%; border-width: 0 1px 1px 0; border-style: solid; border-color: #dbdbdb;">신뢰성</th><td style="padding:10px 0; padding-left:10px; font-size:13px; line-height: 100%; border-width: 0 1px 1px 0; border-style: solid; border-color: #dbdbdb;">정기열차 100% 운행</td></tr>
					<tr><th style="padding:10px 0; padding-left:10px; font-size:13px; line-height: 100%; border-width: 0 1px 1px 0; border-style: solid; border-color: #dbdbdb;">매표대기시간</th><td style="padding:10px 0; padding-left:10px; font-size:13px; line-height: 100%; border-width: 0 1px 1px 0; border-style: solid; border-color: #dbdbdb;">3분 이내 구입</td></tr>
					<tr><th style="padding:10px 0; padding-left:10px; font-size:13px; line-height: 100%; border-width: 0 1px 1px 0; border-style: solid; border-color: #dbdbdb;">열차지연시 보상</th><td style="padding:10px 0; padding-left:10px; font-size:13px; line-height: 100%; border-width: 0 1px 1px 0; border-style: solid; border-color: #dbdbdb;">SRT 20분 이상 지연 시 약정된 금액을 돌려 드림</td></tr>
					<tr><th style="padding:10px 0; padding-left:10px; font-size:13px; line-height: 100%; border-width: 0 1px 1px 0; border-style: solid; border-color: #dbdbdb;">고객의견처리</th><td style="padding:10px 0; padding-left:10px; font-size:13px; line-height: 100%; border-width: 0 1px 1px 0; border-style: solid; border-color: #dbdbdb;">인터넷 전화는 1일 이내, 우편 팩스는 6일 이내 답변</td></tr>
					<tr><th style="padding:10px 0; padding-left:10px; font-size:13px; line-height: 100%; border-width: 0 1px 1px 0; border-style: solid; border-color: #dbdbdb;">의견수렴</th><td style="padding:10px 0; padding-left:10px; font-size:13px; line-height: 100%; border-width: 0 1px 1px 0; border-style: solid; border-color: #dbdbdb;">www.srail.co.kr<br>고객의 소리>실명 인증 후 의견제시<br>전화 : 1800-1472<br>팩스: 02)6484-4093 <br>우편:서울시특별시 강남구 테헤란로 132(역삼동)한독약품빌딩 8층 쌍용교육센터</td></tr>
										
					</table>
					
					
					</div>
					</div>
				
					
					
					<div id="terms" class="tab5">
						<div style="width: 900px; color: #666; height: 500px; 
												padding: 10px 30px 30px 5px; margin-top: 20px; margin-bottom: 20px;">
					  <div style="padding: 50px 0; margin-top: 25px; font-weight: bold; text-align: center; border-width: 1px; border-style: solid; border-color: #dbdbdb; background-color: #f3f3f3;">여객운송약관 및 부속약관  <a style="display:inline-block; width:110px; height:21px; padding-top: 9px; padding-left: 30px; margin-left: 10px; font-weight: normal; color:#fff; font-size: 12px; line-height: 12px; vertical-align: middle; background-color: gray;" href="#">PDF 파일보기</a></div>
					  <div style="margin-top:15px; text-align: right;">
					  PDF를 보시려면 Adobe Reader를 설치하셔야 합니다.
					  </div>
					
					</div>
					</div>
					<div id="email" class="tab5">
						<div style="width: 900px; color: #666; height: 1000px; 
					 
							padding: 10px 30px 30px 5px; margin-top: 20px; margin-bottom: 20px;">
					
					<div style="padding: 25px; margin-top:25px; border-width:1px; border-style: solid; border-color: #dbdbdb; background-color: #f3f3f3;">
					<h4><이메일 무단 수집 거부></h4>
					 <ul>
					   <li>등록일 : 2016년 11월 1일 </li>
					   <li> 
					   본 사이트에 게시되어 있는 이메일 주소가 '이메일 주소 수집 프로그램'이나 그 밖의 기술적 장치를 사용하여 무단으로 수집되는 것을
				     <br><br>	   
					   거부하며, 위반시 정보 통신망법에 의한 형사 처벌 대상임을 알려드립니다.
					 
					 
					 </ul>
					
					</div>
					<div style="padding:25px; margin-top: 25px; border-width: 1px; border-style: solid; border-color: #dbdbdb; background-color: #f3f3f3;">
					 <h4><저작권정책></h4>
					 저작권법 제24조의 2(공공저작물의 자유이용)에 따라 SR홈페이지에서 제공하는 자료 중에서 SR이 지적 재산권의 전부를 보유한 저작물의 경우에는 별도의 이용허락 없이 자유이용이 가능합니다.
					<p style="margin-top: 15px; color:#000;">
					 국가법령정보센터 저작권법
					<a style="display: inline-block; width:80px; height: 20px; padding-top: 8px; margin-left: 10px; font-size: 12px; line-height: 12px; text-align: center; color:#fff; vertical-align: middle; background-color: gray;"  title="새창열기" href="http://www.law.go.kr/lsSc.do?menuId=0&p1=&subMenu=1&nwYn=1&section=&tabNo=&query=%EC%A0%80%EC%9E%91%EA%B6%8C%EB%B2%95#liBgcolor1">바로가기</a>
					</p>
					</div>
					
					
					</div>
					</div>

					<div id="fee" class="tab5">
						<div style="width: 900px; color: #666; height: 3000px; padding: 10px 30px 30px 5px; margin-top: 20px; margin-bottom: 20px;">
					<div style="padding: 50px 0; margin-top: 25px; font-weight: bold; text-align: center; border-width: 1px; border-style: solid; border-color: #dbdbdb; background-color: #f3f3f3;">
					  촬영승인 및 수수료 징수 기준
					 <a style="display: inline-block; width: 110px; height: 21px; padding-top: 9px; padding-left: 30px; margin-left: 10px; font-weight: noraml; color:#fff; font-size: 12px; line-height: 12px; vertical-align: middle; background-color: gray;" onclick="JBCMS.downloadAttach('TK0501070000', '1'); return false;" href="#">PDF 다운로드</a>
					
					</div>
					<div style="padding: 50px 0; margin-top: 25px; font-weight: bold; text-align: center; border-width: 1px; border-style: solid; border-color: #dbdbdb; background-color: #f3f3f3;">
					 촬영승인신청서
					 <a  style="display: inline-block; width: 110px; height: 21px; padding-top: 9px; padding-left: 30px; margin-left: 10px; font-weight: noraml; color:#fff; font-size: 12px; line-height: 12px; vertical-align: middle; background-color: gray;" onclick="" href=#>서식 다운로드</a>
					촬영 서약서
					<a  style="display: inline-block; width: 110px; height: 21px; padding-top: 9px; padding-left: 30px; margin-left: 10px; font-weight: noraml; color:#fff; font-size: 12px; line-height: 12px; vertical-align: middle; background-color: gray;" href="#">서식 다운로드</a>
					
					</div>
					
					
					<div style="margin-top: 15px; text-align: right;">
					 PDF를 보시려면 Adobe Reader를 설치하셔야 합니다.
					 <a style="display: inline-block; width: 124px; height: 28px; font-size: 0px; line-height: 0; vertical-align: middle; color:#555; text-decoration:none; background-color: gray;" title="새창열기" href="https://get.adobe.com/reader/?loc=kr">DOWNLOAD ADOBE READER</a>
					
					</div>
					<h4 style="margin-top: 25px; font-size: 18px; line-height: 19px; color:#8f0349;">촬영신청대상</h4>
					<div style="margin: 0; padding: 0;">
					 <ul style="margin-top: 15px;">
					    <li style="margin-top: 0px;">(주)SR이 운영하는 철도시설 및 (주)SR 소유자산 일체</li>
					  </ul>
					   <h4 style="margin-top: 25px; font-size: 18px; line-height: 19px; color:#8f0349;">촬영승인 기준</h4>
					   <ul>
					   <h5 style="margin:5px 0; font-size: 16px; line-height: 16px;">촬영물의 구분</h5>
					   <li>
					   (상업용 촬영) 영리 목적으로 제작하는 각종 극장개봉용 장편영화, 드라마 및 오락물,
			뮤직비디오, 광고, 화보 촬영 등 일체
			           </li>
				      <li>
				       (바상업용 촬영) 영리를 목적으로 하지 않는 뉴스, 교양물, 저예산 독립영화, 개인사진 및 비디오 촬영 등의 일체
				      </li>
					
				    <br></br>
				    <h5 style="margin:5px 0; font-size: 16px; line-height: 16px;">촬영신청절차</h5>
				  <li>(영화촬영)촬영예정 7일전까지 지역영상위를 통해 (주)SR로 신청</li>
				  <img alt="" src="/web/img/lim/notice/info/info2.jpg"></img>
				   </ul>
				   <table style="width: 100%; margin-top: 15px; border-top-width: 2px; border-top-style: solid; border-top-color: #5e5e5e;">
				     <caption>촬영구분</caption>
				     <colgroup>
				     <col width="94px;"></col>
				     <col width="520px;"></col>
				     <col width="188px;"></col>
				     <col width="188px;"></col>
				     </colgroup>
				     <thead>
				     <tr>
				      <th style="padding: 10px 0; padding-left: 10px; font-size: 13px; line-height: 100%; border-width: 0 1px 1px 0; border-style: solid; border-color: #dbdbdb; background-color: #f8f8f8;">구분</th>
				      <th style="padding: 10px 0; padding-left: 10px; font-size: 13px; line-height: 100%; border-width: 0 1px 1px 0; border-style: solid; border-color: #dbdbdb; background-color: #f8f8f8;">주요내용</th>
				      <th style="padding: 10px 0; padding-left: 10px; font-size: 13px; line-height: 100%; border-width: 0 1px 1px 0; border-style: solid; border-color: #dbdbdb; background-color: #f8f8f8;">처리기한</th>
				      <th style="padding: 10px 0; padding-left: 10px; font-size: 13px; line-height: 100%; border-width: 0 1px 1px 0; border-style: solid; border-color: #dbdbdb; background-color: #f8f8f8;">비고</th>
				     </tr>
				     </thead>
				     <tbody align="center">
				      <tr><td style="padding: 10px 0; padding-left: 10px; border-width: 0 0 1px 0; border-style: solid; border-color: #dbdbdb;">1</td><td style="padding: 10px 0; padding-left: 10px; border-width: 0 0 1px 0; border-style: solid; border-color: #dbdbdb;">각 지역별 영상위원회에 촬영신청</td><td style="padding: 10px 0; padding-left: 10px; border-width: 0 0 1px 0; border-style: solid; border-color: #dbdbdb;">7일전</td><td style="padding: 10px 0; padding-left: 10px; border-width: 0 0 1px 0; border-style: solid; border-color: #dbdbdb;">제작사</td></tr>
				      <tr><td style="padding: 10px 0; padding-left: 10px; border-width: 0 0 1px 0; border-style: solid; border-color: #dbdbdb;">2</td><td style="padding: 10px 0; padding-left: 10px; border-width: 0 0 1px 0; border-style: solid; border-color: #dbdbdb;">제작사 촬영신청서 검토 및 촬영승인 요청</td><td style="padding: 10px 0; padding-left: 10px; border-width: 0 0 1px 0; border-style: solid; border-color: #dbdbdb;">4일전</td><td style="padding: 10px 0; padding-left: 10px; border-width: 0 0 1px 0; border-style: solid; border-color: #dbdbdb;">지역 영상위</td></tr>
				      <tr><td style="padding: 10px 0; padding-left: 10px; border-width: 0 0 1px 0; border-style: solid; border-color: #dbdbdb;">3</td><td style="padding: 10px 0; padding-left: 10px; border-width: 0 0 1px 0; border-style: solid; border-color: #dbdbdb;">촬영 적정성 등 내용 검토 및 결과 통보 *상업용 촬영일 경우 촬영 수수료 계좌 입금 확인</td><td style="padding: 10px 0; padding-left: 10px; border-width: 0 0 1px 0; border-style: solid; border-color: #dbdbdb;">2일전</td><td style="padding: 10px 0; padding-left: 10px; border-width: 0 0 1px 0; border-style: solid; border-color: #dbdbdb;">(주)SR</td></tr>
				      <tr><td style="padding: 10px 0; padding-left: 10px; border-width: 0 0 1px 0; border-style: solid; border-color: #dbdbdb;">4</td><td style="padding: 10px 0; padding-left: 10px; border-width: 0 0 1px 0; border-style: solid; border-color: #dbdbdb;">각 지역별 영상위원회에 촬영신청</td><td style="padding: 10px 0; padding-left: 10px; border-width: 0 0 1px 0; border-style: solid; border-color: #dbdbdb;">-</td><td style="padding: 10px 0; padding-left: 10px; border-width: 0 0 1px 0; border-style: solid; border-color: #dbdbdb;">지역 영상위</td></tr>
				     </tbody>
				   </table>
                    <ul style="margin-top: 15px;">
                      <li style="padding-left: 18px;">
                          (영화 이외 사진 또는 영상) 촬영예정 5일전까지 (주)SR로 직접신청
                          <br></br>
                          *전세 또는 1량 이상 객차 필요시 촬영물 구분 없이 30일전 사전협의 필요
                      </li>
                      <img alt="" src="/web/img/lim/notice/info/info3.jpg"></img>
                    </ul>  				   
				   <table style="width: 100%; margin-top: 15px; border-top-width: 2px; border-top-style: solid; border-top-color: #5e5e5e;">
				     <caption>촬영신청</caption>
				    <colgroup>
				      <col width="94px;"></col>
				     <col width="520px;"></col>
				     <col width="188px;"></col>
				     <col width="188px;"></col>
				    
				    </colgroup>
				   <thead>
				    <tr>
				      <th style="padding:10px 0; padding-left: 10px; font-size: 13px; line-height: 100%; border-width: 0 1px 1px 0; border-style: solid; border-color: #dbdbdb; background-color: #f8f8f8;">구분</th>
				      <th style="padding:10px 0; padding-left: 10px; font-size: 13px; line-height: 100%; border-width: 0 1px 1px 0; border-style: solid; border-color: #dbdbdb; background-color: #f8f8f8;">주요내용</th>
				      <th style="padding:10px 0; padding-left: 10px; font-size: 13px; line-height: 100%; border-width: 0 1px 1px 0; border-style: solid; border-color: #dbdbdb; background-color: #f8f8f8;">처리기한</th>
				      <th style="padding:10px 0; padding-left: 10px; font-size: 13px; line-height: 100%; border-width: 0 1px 1px 0; border-style: solid; border-color: #dbdbdb; background-color: #f8f8f8;">비고</th>
				    
				    </tr>
				   
				   </thead>
				   <tbody align="center">
				   <tr>
				     <td style="padding: 10px 0; padding-left: 10px; border-width: 0 0 1px 0; border-style: solid; border-color: #dbdbdb;">1</td>
				     <td style="padding: 10px 0; padding-left: 10px; border-width: 0 0 1px 0; border-style: solid; border-color: #dbdbdb;">(주)SR(홍보실)에 촬영신청</td>
				     <td style="padding: 10px 0; padding-left: 10px; border-width: 0 0 1px 0; border-style: solid; border-color: #dbdbdb;">5일전</td>
				     <td style="padding: 10px 0; padding-left: 10px; border-width: 0 0 1px 0; border-style: solid; border-color: #dbdbdb;">제작사</td>
				   </tr>
           		   <tr>
				     <td style="padding: 10px 0; padding-left: 10px; border-width: 0 0 1px 0; border-style: solid; border-color: #dbdbdb;">2</td>
				     <td style="padding: 10px 0; padding-left: 10px; border-width: 0 0 1px 0; border-style: solid; border-color: #dbdbdb;">
				            촬영 적적성 등 내용 검토 및 결과 통보
				            <br><br>
				            *상업용 촬영일 경우 촬영 수수료 계좌 입금 확인
				            </td>
				     <td style="padding: 10px 0; padding-left: 10px; border-width: 0 0 1px 0; border-style: solid; border-color: #dbdbdb;">2일전</td>
				     <td style="padding: 10px 0; padding-left: 10px; border-width: 0 0 1px 0; border-style: solid; border-color: #dbdbdb;">(주)SR</td>
				   </tr>
       
                 
				   </tbody>
				   </table>
				   
				   <ul style="margin-top: 15px;">
				    <li style="padding-left: 18px;">(전세 혹은 1량 이상 객차 필요 시) 촬영 예정일을 기준으로 최소 30일 전까지 지역 영상위에 촬영신청하고 홍보실과 사전협의</li>
				    <br></br>
				    <h5 style="margin: 5px 0; font-size: 16px; line-height: 16px;">촬영승인요건</h5>
				    <li style="padding-left: 18px;">
				      (안전확보) 안전매뉴얼 숙지, 촬영현장 내 통행로 확보 등 조치시행
				      <br></br>
				    *촬영 관계자가 20명 이상시 전담인력을 별도로 지정 및 배치하여야 함
				    
				    </li>
				    <li style="padding-left: 18px;">
				    
				     (여유좌석 확보) 열차 내 촬영시 충분한 촬영공간을 확보하여야 함
				     <br></br>
				     *탑승이원 대비 좌석수 기준 : 50% 이상 전좌석 / 50% 미만 1.5배수 좌석
				    </li>
				   
				   </ul>
				   <h4>촬영수수료</h4>
				   <ul>
				     <li>
				     (촬영구역별 수수료) 상업용 촬영에 한하여 구역별 수수료를 징수
				     <br></br>
				     - 심야시간대(24:00~06:00)와 D구역 촬영은 기준 수수료의 2배 징수
				     <br></br>
				     - 인력지원 등이 필요한 경우 그에 상당하는 실비를 추가징수
				     <br></br>
				     *(주)SR 홍보 및 이미지 개선에 기여도가 높을 경우 수수료 조정 또는 면제
				     </li>
                    <li>(일정변경) 촬영예정일 기준 2일 전까지 1회에 한하여 진행 가능</li>     
				   </ul>
                   <p style="float: right;">(단위 : 천원, VAT포함)</p>
				   <table style="width: 100%; margin-top: 15px; border-top-width: 2px; border-top-style: solid; border-top-color: #5e5e5e;">
				     <caption>촬영수수료</caption>  
                   <colgroup>
				      <col width="10%"></col>
				      <col width="10%"></col>
				      <col width="20%"></col>
				      <col width="20%"></col>
				      <col width="20%"></col>
				      <col width="20%"></col>
				   </colgroup>
				   <thead>
				   <tr>
				   <th colspan="2" style="padding: 10px 0; padding-left: 10px; font-size: 13px; line-height: 100%; border-width: 0 1px 1px 0; border-style: solid; border-color: #dbdbdb; background-color:#f8f8f8;">구분</th>
				   <th style="padding: 10px 0; padding-left: 10px; font-size: 13px; line-height: 100%; border-width: 0 1px 1px 0; border-style: solid; border-color: #dbdbdb; background-color:#f8f8f8;">A구역</th>
				   <th style="padding: 10px 0; padding-left: 10px; font-size: 13px; line-height: 100%; border-width: 0 1px 1px 0; border-style: solid; border-color: #dbdbdb; background-color:#f8f8f8;">B구역</th>
				   <th style="padding: 10px 0; padding-left: 10px; font-size: 13px; line-height: 100%; border-width: 0 1px 1px 0; border-style: solid; border-color: #dbdbdb; background-color:#f8f8f8;">C구역</th>
				   <th style="padding: 10px 0; padding-left: 10px; font-size: 13px; line-height: 100%; border-width: 0 1px 1px 0; border-style: solid; border-color: #dbdbdb; background-color:#f8f8f8;">D구역</th>
				   </tr>
                 </thead>
                  <tbody align="center">
                   <tr>
                     <td style="padding: 10px 0; padding-left: 10px; border-width: 0 0 1px 0; border-style: solid; border-color: #dbdbdb;" colspan="2">대상</td>
                     <td style="padding: 10px 0; padding-left: 10px; border-width: 0 0 1px 0; border-style: solid; border-color: #dbdbdb;">
                     -열차내
                     <p>
                       *운행/정차여부
                       <br></br>
                                                       관계없이 동일
                     </p>
                   </td>
                   <td style="padding: 10px 0; padding-left: 10px; border-width: 0 0 1px 0; border-style: solid; border-color: #dbdbdb;">
                    -수서역
                    <br></br>
                    -동탄역
                    <br></br>
                    -지제역
                   </td>
                   <td style="padding: 10px 0; padding-left: 10px; border-width: 0 0 1px 0; border-style: solid; border-color: #dbdbdb;">
                      -승무센터
                      <br></br>
                      -수서주박기지
                   </td>
                     
                   <td style="padding: 10px 0; padding-left: 10px; border-width: 0 0 1px 0; border-style: solid; border-color: #dbdbdb;">
                     -수서역LCP
                     <br></br>
                     -주행선로 
                     <br></br>
                     -교량 및 교각                            
                    <br></br>
                     -보안시설
                     <br></br>
                     -기타 철도이용객 불편지장시설
                    </td>
                   </tr>
                  <tr>
                   <td rowspan="3" style="padding: 10px 0; padding-left: 10px; border-width: 0 0 1px 0; border-style: solid; border-color: #dbdbdb;">
                                                 수수료
                   </td>
                   <td>
                                               기본
                    <br></br>
                    (1시간 이하)                   
                   </td>     
                   <td style="padding: 10px 0; padding-left: 10px; border-width: 0 0 1px 0; border-style: solid; border-color: #dbdbdb;">400</td>             
                   <td style="padding: 10px 0; padding-left: 10px; border-width: 0 0 1px 0; border-style: solid; border-color: #dbdbdb;">300</td>             
                   <td style="padding: 10px 0; padding-left: 10px; border-width: 0 0 1px 0; border-style: solid; border-color: #dbdbdb;">250</td>             
                   <td colspan="3" style="padding: 10px 0; padding-left: 10px; border-width: 0 0 1px 0; border-style: solid; border-color: #dbdbdb;">원칙상 불가(별도방침 필요)</td>             
                  </tr>
                  <tr>
                   <td style="padding: 10px 0; padding-left: 10px; border-width: 0 0 1px 0; border-style: solid; border-color: #dbdbdb;">시간추가</td>
                   <td style="padding: 10px 0; padding-left: 10px; border-width: 0 0 1px 0; border-style: solid; border-color: #dbdbdb;">150/h</td>
                   <td style="padding: 10px 0; padding-left: 10px; border-width: 0 0 1px 0; border-style: solid; border-color: #dbdbdb;">150/h</td>
                   <td style="padding: 10px 0; padding-left: 10px; border-width: 0 0 1px 0; border-style: solid; border-color: #dbdbdb;">100/h</td>
                  </tr>
                 <tr>
                 <td style="padding: 10px 0; padding-left: 10px; border-width: 0 0 1px 0; border-style: solid; border-color: #dbdbdb;">
                                        인원추가
                 <br></br>
                 (10인 초과시)
                 </td>
                 <td style="padding: 10px 0; padding-left: 10px; border-width: 0 0 1px 0; border-style: solid; border-color: #dbdbdb;">80/인</td>
                 <td style="padding: 10px 0; padding-left: 10px; border-width: 0 0 1px 0; border-style: solid; border-color: #dbdbdb;">80/인</td>
                 <td style="padding: 10px 0; padding-left: 10px; border-width: 0 0 1px 0; border-style: solid; border-color: #dbdbdb;">80/인</td>
                 </tr>
                  </tbody>
				   </table>
                <h4 style="margin-top: 25px; font-size: 18px; line-height: 19px; color: #8f0349;">제한사항</h4>				   
				<ul style="margin-top: 15px;">
				  <h5 style="margin: 5px 0; font-size: 16px; line-height: 16px;">촬영물의 내용</h5>
				  <li style="padding-left: 18px;">촬영승인 신청 시 제출한 내용과 실제 촬영 내용이 다른 경우</li>
				  <li style="padding-left: 18px;">포르노그래피, 폭력 미화, 인권침해, 어린이 학대 등 사회질서 및 미풍양속에 반하는 내용</li>
			      <li style="padding-left: 18px;">선로 진입하거나 열차에 뛰어드는 장면 등 철도 이용에 대한 이미지를 왜곡할 수 있는 내용</li>	
			      <li style="padding-left: 18px;">(주)SR정책에 위배되거나 부정적 이미지를 줄수 있는 내용</li>	
				  <br></br>
				  <h5 style="margin: 5px 0; font-size: 16px; line-height: 16px;">영업활동(운영) 관련</h5>
				  <li style="padding-left: 18px;">
				   명절＊하계대수송 등 특별수송기간, 주중, 주말 포함 혼잡시간, 철도이용객
				                        이용 동선에 과도한 지장을 주는 장소에서의 촬영
				  </li>
                 <li style="padding-left: 18px;">열차운행 지장이 예상되거나 매표실, LCP, 운행 중 열차의 운전실 등 출입이 제한되는 장소에서의 촬영</li>				
                 <li style="padding-left: 18px;">기타 민원 발생 소지가 있거나 (주)SR에서 특별히 금지한 사항 </li>				
				</ul>	
					<div style="padding: 50px 0; margin-top: 25px; font-weight: bold; text-align: center; border-width: 1px; border-style: solid; border-color: #dbdbdb; background-color: #f3f3f3;">
			         담당부서 : (주)코센 홍보실 (tel. 02-####-#### / email : iamipro@naver.com)		
                       <br></br>				
                       * 촬영승인 신청 전, 담당부서를 통항 유선확인 및 내용고지 필요	
					</div>
					
					
					</div>			
					
					</div>
					
					</div>


					<div id="notice" class="tab5">
						<div style="width: 900px; color: #666; height: 1000px; 
				 
							padding: 10px 30px 30px 5px; margin-top: 20px; margin-bottom: 20px;">
					</div>
					
					<div style="margin-top: 25px;">
					
					주식회사 에스알(이하 ‘SR’ 또는 ‘회사’라 함)은 「개인정보 보호법」 등 관련법에 따라 영상정보 보호규정을 준수합니다. 이에 따라 영상정보처리기기 운영ㆍ관리 방침을 정하여 ‘개인정보자기결정권’ 보장에 의한 이용자 권익 보호에 최선을 다하고 있습니다.
					</div>
					<div style="padding: 30px; margin-top: 30px; border-width: 1px; border-style: solid; border-color: #ccc;">
				      	<div>
				      	회사의 영상정보처리기기 운영ㆍ관리 방침은 다음과 같은 내용을 담고 있습니다.
				      	</div>
					    <li style="margin-top: 0px; min-height: 22px; padding-left: 30px; line-height: 150%; background-repeat: no-repeat; background-position: 0 2px;">
					     <a style="color: #555; font-family: 'ng','맑은 고딕','돋움','Dotum','Droid','Snas','AppleGothic'; text-decoration: none;" onclick="goLine('privacy-01'); return false;" href="#privacy-01"></a>
					       <em style="display: none; font-size: 0px; line-height: 0;">1.</em>
					       영상정보처리기기의 설치 근거 및 목적
					    </li>
					    <li style="margin-top: 0px; min-height: 22px; padding-left: 30px; line-height: 150%; background-repeat: no-repeat; background-position: 0 2px;">
					     <a style="color: #555; font-family: 'ng','맑은 고딕','돋움','Dotum','Droid','Snas','AppleGothic'; text-decoration: none;" onclick="goLine('privacy-02'); return false;" href="#privacy-02"></a>
					       <em style="display: none; font-size: 0px; line-height: 0;">2.</em>
					       영상정보처리기기의 운영 현황
					    </li>
					    <li style="margin-top: 0px; min-height: 22px; padding-left: 30px; line-height: 150%; background-repeat: no-repeat; background-position: 0 2px;">
					     <a style="color: #555; font-family: 'ng','맑은 고딕','돋움','Dotum','Droid','Snas','AppleGothic'; text-decoration: none;" onclick="goLine('privacy-03'); return false;" href="#privacy-03"></a>
					       <em style="display: none; font-size: 0px; line-height: 0;">3.</em>
					      영상정보처리기기 설치 및 관리 등의 위탁에 관한 사항
					    </li>
					    <li style="margin-top: 0px; min-height: 22px; padding-left: 30px; line-height: 150%; background-repeat: no-repeat; background-position: 0 2px;">
					     <a style="color: #555; font-family: 'ng','맑은 고딕','돋움','Dotum','Droid','Snas','AppleGothic'; text-decoration: none;" onclick="goLine('privacy-04'); return false;" href="#privacy-04"></a>
					       <em style="display: none; font-size: 0px; line-height: 0;">4.</em>
					      이용자의 영상정보 열람 등 권리*의무 및 그 행사방법
					    </li>
					    <li style="margin-top: 0px; min-height: 22px; padding-left: 30px; line-height: 150%; background-repeat: no-repeat; background-position: 0 2px;">
					     <a style="color: #555; font-family: 'ng','맑은 고딕','돋움','Dotum','Droid','Snas','AppleGothic'; text-decoration: none;" onclick="goLine('privacy-05'); return false;" href="#privacy-05"></a>
					       <em style="display: none; font-size: 0px; line-height: 0;">5.</em>
					       영상정보 처리 및 확인(열람)방법
					    </li>
					    <li style="margin-top: 0px; min-height: 22px; padding-left: 30px; line-height: 150%; background-repeat: no-repeat; background-position: 0 2px;">
					     <a style="color: #555; font-family: 'ng','맑은 고딕','돋움','Dotum','Droid','Snas','AppleGothic'; text-decoration: none;" onclick="goLine('privacy-06'); return false;" href="#privacy-06"></a>
					       <em style="display: none; font-size: 0px; line-height: 0;">6.</em>
					      영상정보처리 관리책임자 및 접근권한자 등 안내
					    </li>
					    <li style="margin-top: 0px; min-height: 22px; padding-left: 30px; line-height: 150%; background-repeat: no-repeat; background-position: 0 2px;">
					     <a style="color: #555; font-family: 'ng','맑은 고딕','돋움','Dotum','Droid','Snas','AppleGothic'; text-decoration: none;" onclick="goLine('privacy-07'); return false;" href="#privacy-07"></a>
					       <em style="display: none; font-size: 0px; line-height: 0;">7.</em>
					       영상정보의 안전성 확보 조치
					    </li>
					    <li style="margin-top: 0px; min-height: 22px; padding-left: 30px; line-height: 150%; background-repeat: no-repeat; background-position: 0 2px;">
					     <a style="color: #555; font-family: 'ng','맑은 고딕','돋움','Dotum','Droid','Snas','AppleGothic'; text-decoration: none;" onclick="goLine('privacy-08'); return false;" href="#privacy-08"></a>
					       <em style="display: none; font-size: 0px; line-height: 0;">8.</em>
					       영상정보처리기기  운영관리방침의 고지 의무
					    </li>
					    
					</div>
					<div class="item item-01" style="margin-top: 35px;">
					 <h3 style="margin-bottom: 20px; font-weight: bold; font-size: 20px; line-height: 20px; color:#8f0349;">1. 영상정보처리기기의 설치 근거 및 목적</h3>
					 <p style="margin-top: 10px;">회사는 「개인정보 보호법」 제25조에 의해 범죄예방 및 수사, 시설안전 및 화재예방, 차량도난 및 파손방지를 위하여 영상정보처리 기기를 설치ㆍ운영하고 있습니다.</p>
					</div>		
                    <div class="item item-02" style="margin-top: 35px;">
					 <h3 style="margin-bottom: 20px; font-weight: bold; font-size: 20px; line-height: 20px; color:#8f0349;">2. 영상정보처리기기의 운영 현황</h3>
					 <table style="width: 100%; margin-top: 15px; border-top-width: 2px;  border-top-style: solid; border-top-color: #5e5e5e;">
	                  <caption>영상정보처리기기의 운영 현황</caption>	
	                  <colgroup>
	                  <col width="15%"></col>
	                  <col width="15%"></col>
	                  <col width="40%"></col>
	                  <col width="15%"></col>
	                  <col width="15%"></col>
	                  
	                  </colgroup>
	                  <thead>
	                  <tr>
	                  <th style="padding: 10px 0; padding-left:  10px; font-size: 13px; line-height: 100%; border-width: 0 1px 1px 0; border-style: solid; border-color: #dbdbdb; background-color: #f8f8f8;">
	                  설치장소
	                  </th>
	                  <th style="padding: 10px 0; padding-left:  10px; font-size: 13px; line-height: 100%; border-width: 0 1px 1px 0; border-style: solid; border-color: #dbdbdb; background-color: #f8f8f8;">설치대수</th>
	                  <th style="padding: 10px 0; padding-left:  10px; font-size: 13px; line-height: 100%; border-width: 0 1px 1px 0; border-style: solid; border-color: #dbdbdb; background-color: #f8f8f8;">설치위치 및 촬영범위</th>
	                  <th style="padding: 10px 0; padding-left:  10px; font-size: 13px; line-height: 100%; border-width: 0 1px 1px 0; border-style: solid; border-color: #dbdbdb; background-color: #f8f8f8;">촬영시간</th>
	                  <th style="padding: 10px 0; padding-left:  10px; font-size: 13px; line-height: 100%; border-width: 0 1px 1px 0; border-style: solid; border-color: #dbdbdb; background-color: #f8f8f8;">보관기간 및 장소</th>
	                  </tr>
	                  </thead>
	                  <tbody>
	                  <tr>
	                   <td style="padding: 10px 0; padding-left: 10px; text-align: center; border-width: 0 1px 1px 0; border-style: solid; border-color: #dbdbdb;">수서역</td>                  
	                   <td style="padding: 10px 0; padding-left: 10px; text-align: center; border-width: 0 1px 1px 0; border-style: solid; border-color: #dbdbdb;">84대</td>                  
	                   <td style="padding: 10px 0; padding-left: 10px; text-align: center; border-width: 0 1px 1px 0; border-style: solid; border-color: #dbdbdb;">역사내, 대합실 및  승강장</td>                  
	                   <td style="padding: 10px 0; padding-left: 10px; text-align: center; border-width: 0 1px 1px 0; border-style: solid; border-color: #dbdbdb;">24시간</td>                  
	                   <td style="padding: 10px 0; padding-left: 10px; text-align: center; border-width: 0 1px 1px 0; border-style: solid; border-color: #dbdbdb;">30일, 통신실</td>                  
	                  </tr>
                    <tr>
                    <td style="padding: 10px 0; padding-left: 10px; text-align: center; border-width: 0 1px 1px 0; border-style: solid; border-color: #dbdbdb;">동탄역</td>                  
	                   <td style="padding: 10px 0; padding-left: 10px; text-align: center; border-width: 0 1px 1px 0; border-style: solid; border-color: #dbdbdb;">66대</td>                  
	                   <td style="padding: 10px 0; padding-left: 10px; text-align: center; border-width: 0 1px 1px 0; border-style: solid; border-color: #dbdbdb;">역사내, 대합실 및  승강장</td>                  
	                   <td style="padding: 10px 0; padding-left: 10px; text-align: center; border-width: 0 1px 1px 0; border-style: solid; border-color: #dbdbdb;">24시간</td>                  
	                   <td style="padding: 10px 0; padding-left: 10px; text-align: center; border-width: 0 1px 1px 0; border-style: solid; border-color: #dbdbdb;">30일, 통신실</td>
                    </tr>
                    <tr>
                       <td style="padding: 10px 0; padding-left: 10px; text-align: center; border-width: 0 1px 1px 0; border-style: solid; border-color: #dbdbdb;">지제역</td>                  
	                   <td style="padding: 10px 0; padding-left: 10px; text-align: center; border-width: 0 1px 1px 0; border-style: solid; border-color: #dbdbdb;">30대</td>                  
	                   <td style="padding: 10px 0; padding-left: 10px; text-align: center; border-width: 0 1px 1px 0; border-style: solid; border-color: #dbdbdb;">역사내, 대합실 및  승강장</td>                  
	                   <td style="padding: 10px 0; padding-left: 10px; text-align: center; border-width: 0 1px 1px 0; border-style: solid; border-color: #dbdbdb;">24시간</td>                  
	                   <td style="padding: 10px 0; padding-left: 10px; text-align: center; border-width: 0 1px 1px 0; border-style: solid; border-color: #dbdbdb;">30일, 통신실</td>
                    </tr>
                   	                  
	                  </tbody>			 
					 </table>
					 
					</div>		
                    <div class="item item-03" style="margin-top: 35px;">
					 <h3 style="margin-bottom: 20px; font-weight: bold; font-size: 20px; line-height: 20px; color:#8f0349;">3. 영상정보처리기기 설치 및 관리 등의 위탁에 관한 사항</h3>
					 <p style="margin-top: 10px;">회사는 아래와 같이 영상정보처리기기 설치ㆍ관리 등을 위탁하고 있으며, 관계 법령에 따라 위탁계약 시 개인영상정보의 안전한 관리를 위한 필수사항을 계약내용에 명시하고 있습니다.</p>
					 <table style="width: 100%; margin-top: 15px; border-top-width: 2px; border-top-style: solid; border-top-color: #5e5e5e;">
					 <colgroup>
					 <col width="25%"></col>
					 <col width="25%"></col>
					 <col width="25%"></col>
					 <col width="25%"></col>
					 </colgroup>
              <thead>
                   <tr>
                    <th style="padding: 10px 0; padding-left: 10px; font-size: 13px; line-height: 100%; border-width: 0 1px 1px 0; border-style: solid; border-color:#dbdbdb; background-color: #f8f8f8;">구분</th>
                    <th style="padding: 10px 0; padding-left: 10px; font-size: 13px; line-height: 100%; border-width: 0 1px 1px 0; border-style: solid; border-color:#dbdbdb; background-color: #f8f8f8;">수탁업체</th>
                    <th style="padding: 10px 0; padding-left: 10px; font-size: 13px; line-height: 100%; border-width: 0 1px 1px 0; border-style: solid; border-color:#dbdbdb; background-color: #f8f8f8;">담당자</th>
                    <th style="padding: 10px 0; padding-left: 10px; font-size: 13px; line-height: 100%; border-width: 0 1px 1px 0; border-style: solid; border-color:#dbdbdb; background-color: #f8f8f8;">연락처</th>
                   
                   </tr>
              
              </thead>
              <tbody>
              <tr>
               <td style="padding: 10px 0; padding-left: 10px; text-align: center; border-width: 0 1px 1px 0; border-style: solid; border-color: #dbdbdb;">수서역</td>
               <td style="padding: 10px 0; padding-left: 10px; text-align: center; border-width: 0 1px 1px 0; border-style: solid; border-color: #dbdbdb;">(주)맥서브</td>
               <td style="padding: 10px 0; padding-left: 10px; text-align: center; border-width: 0 1px 1px 0; border-style: solid; border-color: #dbdbdb;">고장록, 오종화, 류환구</td>
               <td style="padding: 10px 0; padding-left: 10px; text-align: center; border-width: 0 1px 1px 0; border-style: solid; border-color: #dbdbdb;">02-####-####</td>
              </tr>
              <tr>
               <td style="padding: 10px 0; padding-left: 10px; text-align: center; border-width: 0 1px 1px 0; border-style: solid; border-color: #dbdbdb;">동탄/지제역</td>
               <td style="padding: 10px 0; padding-left: 10px; text-align: center; border-width: 0 1px 1px 0; border-style: solid; border-color: #dbdbdb;">(주)맥서브</td>
               <td style="padding: 10px 0; padding-left: 10px; text-align: center; border-width: 0 1px 1px 0; border-style: solid; border-color: #dbdbdb;">박종만, 김문철, 유익선</td>
               <td style="padding: 10px 0; padding-left: 10px; text-align: center; border-width: 0 1px 1px 0; border-style: solid; border-color: #dbdbdb;">02-####-####</td>
              </tr>
                            
              </tbody>					 
					 </table>
					</div>		
                    <div class="item item-04" style="margin-top: 35px;">
					 <h3 style="margin-bottom: 20px; font-weight: bold; font-size: 20px; line-height: 20px; color:#8f0349;">4. 이용자의 영상정보 열람 등 권리·의무 및 그 행사방법</h3>
					 <p style="margin-top: 10px;">
					 이용자 개인영상정보에 관하여 열람 또는 존재 확인ㆍ삭제를 원하는 경우 언제든지 영상정보처리기기 운영자에게 요구하실 수 있습니다. 단, 열람이 가능한 경우는 본인이 촬영된 개인영상정보 또는 명백히 정보주체의 급박한 생명, 신체, 재산의 이익을 위하여 필요한 개인영상정보로 한정됩니다.
					 <br></br>
					 이용자는 『정보통신망 이용촉진 및 정보보호 등에 관한 법률』, 『개인정보보호법』 등 관계법령을 위반하여 타인의 개인영상정보 요구 및 악의적 이용 등 사생활을 침해해서는 안되며, 이를 위반할 경우 관련 법령에 따라 처벌받을 수 있습니다.
					 <br></br>
					 회사는 개인영상정보에 관하여 열람 또는 존재확인ㆍ삭제를 요구한 경우, 지체 없이 필요한 조치를 하겠습니다.
					 </p>
					</div>		
                    <div class="item item-05" style="margin-top: 35px;">
					 <h3 style="margin-bottom: 20px; font-weight: bold; font-size: 20px; line-height: 20px; color:#8f0349;">5. 영상정보 처리 및 확인(열람)방법</h3>
					 <p style="margin-top: 10px;">정보주체로부터 제공받은 개인정보는 동의받은 개인정보 보유/이용 기간 내(입사전형 기간, 상담 및 제보의 사실 관계 확인, 이벤트 기간)에서
					 <br></br>
					 처리 및 보유하며, 원칙적으로 개인정보의 처리목적이 달성되면 지체 없이 파기합니다.
					 </p>
					 <ul>
					    <li  style="padding-left: 0px; background: none;">
					  <strong style="display: block; margin-bottom: 5px;">영상정보 처리방법</strong>
					   <ul>
					     <li>
					     개인영상정보의 목적 외 이용, 제3자 제공, 파기, 열람 등 요구에 관한 사항을 기록ㆍ관리하고, 보관기간 만료 시 복원이 불가능한 방법으로 영구 삭제(출력물의 경우 파쇄 또는 소각)합니다.
					     </li>
					   
					   </ul>
					  </li>
					  <li>
					   <strong style="display: block; margin-bottom: 5px;">영상정보 확인방법</strong>
					   <ul>
					     <li style="padding-left: 21px; margin-top: 0px;">
					   개인영상정보 확인이 필요한 경우, 해당 역의 접근권한자에게 미리 연락 후 방문하시면 확인 가능합니다. 단, 열람하기 위해서는 개인영상정보 요청서 제출 등 회사 보안절차를 준수해야 합니다.
					   <a style="display: block; width: 180px; padding: 5px; margin-top: 5px; color: #fff; font-size: 12px; line-height: 12px; text-align: center; border-radius: 2px; background-color: #52555a;">
					   개인영상정보 요청서(다운받기)</a>
					   </li>
					   </ul>
					  
					  </li>
					 </ul>
					 
					</div>		
                    <div class="item item-06" style="margin-top: 35px;">
					 <h3 style="margin-bottom: 20px; font-weight: bold; font-size: 20px; line-height: 20px; color:#8f0349;">1. 영상정보처리기기의 설치 근거 및 목적</h3>
					 <p style="margin-top: 10px;">회사는 「개인정보 보호법」 제25조에 의해 범죄예방 및 수사, 시설안전 및 화재예방, 차량도난 및 파손방지를 위하여 영상정보처리 기기를 설치ㆍ운영하고 있습니다.</p>
					</div>		
                    <div class="item item-07" style="margin-top: 35px;">
					 <h3 style="margin-bottom: 20px; font-weight: bold; font-size: 20px; line-height: 20px; color:#8f0349;">1. 영상정보처리기기의 설치 근거 및 목적</h3>
					 <p style="margin-top: 10px;">회사는 「개인정보 보호법」 제25조에 의해 범죄예방 및 수사, 시설안전 및 화재예방, 차량도난 및 파손방지를 위하여 영상정보처리 기기를 설치ㆍ운영하고 있습니다.</p>
					</div>		
                    <div class="item item-08" style="margin-top: 35px;">
					 <h3 style="margin-bottom: 20px; font-weight: bold; font-size: 20px; line-height: 20px; color:#8f0349;">1. 영상정보처리기기의 설치 근거 및 목적</h3>
					 <p style="margin-top: 10px;">회사는 「개인정보 보호법」 제25조에 의해 범죄예방 및 수사, 시설안전 및 화재예방, 차량도난 및 파손방지를 위하여 영상정보처리 기기를 설치ㆍ운영하고 있습니다.</p>
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
