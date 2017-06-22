<%@page import="oracle.net.aso.a"%>
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

					<%
						 
					  String name=  (String)application.getAttribute("name");
					    String birth =(String)application.getAttribute("birth");
					    String phone =(String)application.getAttribute("phone");  
					    		String gender =(String)application.getAttribute("gender");
					    		 application.setAttribute("name", name); 
					    		   application.setAttribute("birth", birth); 
					    		   application.setAttribute("phone", phone); 
					    		   application.setAttribute("gender", gender); 
					  /*  request.setAttribute("name", name);
					   request.setAttribute("birth", birth);
					   request.setAttribute("phone", phone);
					   request.setAttribute("gender", gender);
					   */ System.out.println(name);
					   System.out.println(birth);
					   System.out.println(phone);
					   System.out.println(gender);
					
					%>
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
					style="width: 940px; padding: 30px 30px 30px 30px; height: 720px; background-color: white;">


 
				 
						 
  
 <div style="font-size: 17px; font-weight: bold; color:navy;">회원가입 및 이용에 관한 약관</div><br>
 <textarea style="border: 1px solid  lightgray; width:900px; height:150px; background-color: #f9f9fa;" >  제1조(목적)
이 약관은 주식회사 에스알(이하 “회사”라 합니다)의 회원가입 및 이용에 관한 약관(이하 “약관”이라 합니다)으로 회원으로 가입하고자 하는 사람(이하 “회원”이라 합니다)과 회사 간의 권리·의무 및 책임사항을 규정함을 목적으로 합니다.

제2조(약관의 적용)
① 이 약관은 회원의 열차이용 및 회사에서 제공하는 부가서비스 등에 적용하며 이 약관에서 정하지 않은 사항은 회사의 여객운송약관 및 관련 규정을 적용합니다.
② 회사의 회원과 제휴사간의 개별적인 계약조건은 회사와 무관합니다.
③ 회사와 제휴사간에 체결된 서비스는 제휴 계약조건 혹은 제휴사 사정에 따라 사전 통보 없이 변경되거나 중단될 수 있습니다.
④ 회원이 회원혜택을 제공받기 위하여 제휴사를 이용할 경우 해당 제휴사의 규정을 따라야 하며, 제휴사 이용과정에서 발생할 수 있는 회원의 피해에 대하여 회사는 책임이 없습니다.

제3조(정의)
이 약관에서 사용하는 용어의 정의는 다음과 같으며, 이 조항에서 정하는 것을 제외하고는 관계 법령 및 서비스별 안내에서 정하는 바에 의합니다.
     1. “회원”이란 열차이용, 여행상품 등 회사가 제공하는 서비스를 이용하기 위하여 회사의 홈페이지 또는 모바일 앱에서 이용계약을 체결한 사람을 말합니다.
     2. “서비스”라 함은 회원이 PC, 이동전화 등 각종 유무선 기기 또는 역창구를 통하여 이용할 수 있는 회사가 제공하는 모든 서비스를 말합니다.
     3. “디지털회원증”이라 함은 회원으로 가입한 사람에게 회사가 제공하는 서비스를 이용할 수 있도록 고유번호를 부여하여 발행한 디지털카드(홈페이지 및 모바일 앱에서 확인)를 말합니다.
     4. “회원등급”이라 함은 회사가 회원의 열차이용실적을 평가하여 회원혜택을 제공하기 위하여 일반회원, 우등회원, 특별회원, VIP회원으로 구분하는 것을 말합니다.
     5. “운임할인쿠폰”이라 함은 회사가 회원에게 열차운임할인혜택을 제공하기 위하여 발행한 전자할인쿠폰을 말합니다.
     6. “좌석승급쿠폰”이라 함은 회사가 회원에게 열차좌석승급혜택을 제공하기 위하여 발행한 전자승급쿠폰을 말합니다.

제4조(회원가입)
① 누구나 홈페이지 또는 스마트폰 앱을 통해 회사의 회원으로 가입할 수 있습니다.
② 회원으로 가입하고자 하는 사람은 홈페이지 또는 스마트폰 앱에서 다음 각 호에 정한 사항을 등록하고 회원가입 동의와 확인버튼을 누름으로서 회원가입이 완료됩니다.
     1. 이름
    2. 전화번호, 전자우편(E-mail 주소)
     3. 생년월일, 성별
    4. 비밀번호
    5. 기타 회원관리에 필요한 사항

제5조(회원정보보호)
회원의 개인정보보호에 대한 상세한 내용은 회사 웹사이트 (www.srail.co.kr)상의 개인정보취급방침에서 정하는 바에 따릅니다.

제6조(회원혜택)
① 회사는 회원의 열차이용실적에 따라 운임할인쿠폰 또는 좌석승급쿠폰 등을 제공할 수 있습니다.
② 운임할인쿠폰은 운임에만 할인이 적용(요금 제외)되며 최저운임이하로는 할인이 적용되지 않습니다.
③ 좌석승급쿠폰은 일반실운임으로 특실을 이용 하실 수 있습니다.
④ 운임할인쿠폰과 좌석승급쿠폰의 유효기간은 쿠폰에서 확인할 수 있으며 홈페이지 및 모바일 앱 에서만 사용할 수 있습니다.
⑤ 회원의 등급별 열차이용실적 산정기준, 회원혜택, 운임할인쿠폰의 종류별 할인율은 역에 따로 게시하거나 인터넷 등에 게재합니다.
⑥ 회사는 회원의 이용실적산정이 잘못된 경우에는 이를 임의로 정정할 수 있으며 부당한 방법에 의해 적립된 실적은 인정하지 않습니다.
⑦ 회원의 이용실적 산정은 이용을 완료한 승차권의 전체 구입금액 중에서 온라인(홈페이지 및 모바일 앱)으로 결제한 금액만을 반영합니다. 다만, 다음 각 호의 경우에는 온라인으로 결제한 경우에도 이용실적 산정에서 제외합니다.
     1. 승차일이 설, 추석 수송 기간 중에 해당하는 승차권
    2. 정기권ㆍ단체승차권, 입장권, 회수승차권, 여행상품으로 판매하는 승차권
    3. ㈜SR과 별도 운송계약을 체결하고 운임을 후급으로 지급하는 승차권
    4. 승차권과 연계하여 판매하는 패키지 상품 등의 요금
⑧ 쿠폰의 사용은 1개의 좌석 당 1회에 한 합니다.

제7조(회원정보 이용)
회사는 회원의 사전 동의를 받고 제4조 제2항의 회원 정보를 공동사업자 또는 제휴사업자 등 제3자에게 제공할 수 있습니다. 다만, 각 호에 정한 경우는 사전 동의를 받지 않을 수 있습니다.
     1. 관련 법령에 특별한 규정이 있는 경우
    2. 범죄에 대한 수사상의 목적으로 국가기관의 요구가 있는 경우
    3. 방송통신심의위원회의 요청이 있는 경우
    4. 특정 개인을 식별할 수 없는 통계작성, 홍보자료, 학술연구 등의 목적으로 요청이 있는 경우
    5. 기타 회원서비스 제공 등 제휴 사업을 수행하는 경우

제8조(회원정보 변경)
① 회원은 회원가입 시 기재한 사항이 변경된 경우에 인터넷 또는 통신매체를 이용하여 이를 수정하거나 기타 방법으로 회사에 대하여 그 변경사항을 알려야 합니다.
② 회사는 회원이 변경사항을 알리지 아니하여 발생한 손해에 대하여 책임을 지지 않습니다.
③ 회원은 홈페이지 또는 모바일 앱의 회원정보관리화면을 통하여 언제든지 본인의 개인정보를 열람하고 수정할 수 있습니다. 

제9조(탈회)
① 탈회하고자 하는 회원은 홈페이지 또는 모바일 앱의 회원정보 변경에서 탈회를 신청할 수 있습니다.
② 제1항의 경우에 발권한 승차권이 있는 경우에는 이용을 완료한 후, 또는 발권한 승차권을 반환하신 후에 탈회 신청을 하셔야 합니다.
③ 제1항에 따라 회원이 탈회하는 경우 회사는 제6조에 정한 회원혜택을 제공하지 않습니다.
④ 회원이 탈회를 신청할 경우 회사는 관련법 및 회사의 개인정보처리방침에 따라 회사가 회원정보를 보유하는 경우를 제외하고는 해지 즉시 회원의 모든 데이터를 소멸 합니다.

제10조(자격상실 및 서비스 이용제한)
① 회사는 회원이 다음 각 호에 해당하는 경우에는 탈회 조치시킬 수 있습니다.
     1. 회원가입 정보를 허위로 작성하는 등 서비스의 건전한 이용을 저해하는 행위
    2. 다른 사람의 회원번호 및 비밀번호를 도용한 행위
    3. 이중으로 등록한 경우
    4. 기타 관계법령이나 회사가 정한 약관을 위반한 경우 또는 회원으로서 자격을 지속시키는 것이 부적절하다고 회사가 판단하는 경우
② 회원이 사망한 경우에는 제9조 및 제1항에 정한 절차 없이 회원 자격을 상실(또는 탈회)한 것으로 간주합니다.
③ 제1항에 따라 회원(또는 제3자)에게 발생하는 손해는 회사가 책임을 부담하지 아니합니다.
④ 제1항에 정한 사유로 회원 자격을 상실한 경우 회사는 제6조에 정한 회원 이용실적을 무효로 하고 이를 삭제합니다.

제11조(정보제공 및 안내 등)
① 회사는 변경된 영업제도 안내, 각종 여행상품, 서비스 이용방법, 여행정보 등 다양한 서비스를 회원에게 전자우편, 휴대전화 메세지, 그 밖의 방법으로 제공할 수 있습니다.
② 회사는 회원 전체에게 통지 또는 공지할 필요가 있는 사항에 대하여 홈페이지에 1주일 이상 게재함으로서 이를 대신할 수 있습니다.

제12조 (책임 등)
① 회원은 회원번호(아이디를 별도로 부여할 경우 아이디 포함)와 비밀번호에 관한 관리책임이 있습니다.
② 회사는 제4조에 정한 정보관리를 회원담당 책임자(업무 위탁시 해당 업체 회원 담당자)로 한정하며 정보의 분실, 도난, 유출, 변조 등에 대한 책임을 부담합니다.
③ 회사는 회원정보·운영 등 회원관리에 관한 업무 중 일부를 위탁·운영할 수 있습니다. 이 경우 회사는 개인정보가 외부로 유출되지 않도록 하여야 합니다.
④ 회사는 회원의 고의 또는 과실로 인하여 발생한 손해에 대하여 책임을 부담하지 아니합니다.

부칙
이 약관은 2016.10.31일부터 시행한다.</textarea> 
<br>
 <div style="font-size: 14px; color:gray; margin-right:40px;float:right;">홈페이지 회원약관에 동의합니다.<b>(필수)</b><input id="check1" type="checkbox"  onclick="check(this)"></div>
<br>
<br>

<div style="font-size: 17px; font-weight: bold; color:navy;">개인정보 수집 및 이용에 대한 안내</div>
<textarea style="margin-top:20px; margin-bottom:10px; border: 1px solid  lightgray;  width:900px; height:150px; background-color: #f9f9fa;">개인정보의 수집 및 이용 목적
- 열차승차권 예약 및 발매 결제, 휴대폰확인, 회원가입 및 관리, 신규서비스 개발 및 마케팅ㆍ광고에의 활용, 고객 불만 접수 처리, 고지사항 전달, 분쟁조정을 위한 기록보전
- 회사의 불공정한 업무처리 및 부정, 비리 행위에 대한 상담 및 제보
- 이벤트 당첨자 확인 및 온라인 경품발송

개인정보 수집항목
- 필수정보 : 성명, 비밀번호(홈페이지/모바일앱, 현장발매), 생년월일, 성별, 휴대전화번호, 이메일, 스마트기기 고유식별번호(MAC주소, IMEI, UUID)
     * 만 14세 미만 아동일 경우, 법정대리인 정보(성명, 생년월일, 성별, 내/외국인 여부, 휴대폰번호, 이동통신사 정보, 본인확인 정보(CI, DI), 아이핀 정보)를 추가로 수집 - 선택정보 : 자택전화번호, 신용카드번호, 주소
- 수탁업체 : 한국철도공사(위탁업무 및 내용: 승차권 예약발매), ㈜대보정보통신(정보시스템 운영 및 유지관리), ㈜웅진(정보시스템 운영 및 유지관리),㈜소프트검즈(정보시스템 운영 및 유지관리),㈜이노트리(정보시스템 운영 및 유지관리),㈜에코정보기술(정보시스템 운영 및 유지관리),㈜SAP KOREA(정보시스템 운영 및 유지관리),㈜효성 ITX(위탁업무 및 내용: 고객센터 위탁 운영),㈜신한카드(제휴카드 가입 시 SR 회원가입/등록),㈜이브릿지(객실 승무원 업무 위탁 운영),㈜H20(문자메세지 발송), ㈜나이스평가정보(위탁업무 및 내용: 본인확인 서비스)

주식회사 에스알(이하 “에스알”라고 한다)은 이용자의 기본적 인권 침해의 우려가 있는 민감한 개인정보(인종 및 민족, 사상 및 신조, 출신지 및 본적지, 정치적 성향 및 범죄기록, 건강상태 및 성생활 등)는 수집하지 않습니다.

서비스 이용과정에서 아래와 같은 정보들이 자동으로 생성되어 수집될 수 있습니다.
- IP주소, 서비스 이용기록, 방문기록, 스마트폰 기기정보 등 
개인정보의 보유 및 이용기간
이용자 개인정보는 동의를 받은 개인정보의 수집 및 이용목적이 달성되면, 아래와 같이 관련 법령에 의해 보관할 필요가 있는 경우를 제외하고 지체없이 파기합니다.
가. 서비스 접속(이용) 기록
    A. 보존 근거 : 통신비밀보호법
    B. 보존 기간 : 3개월
 나. 표시/광고에 관한 기록
    A. 보존 근거 : 전자상거래 등에서의 소비자보호에 관한 법률
    B. 보존 기간 : 6개월
 다. 소비자의 불만 또는 분쟁처리에 관한 기록
    A. 보존 근거 : 전자상거래 등에서의 소비자보호에 관한 법률
    B. 보존 기간 : 3년

수집 동의 거부 권리 및 불이익 
에스알은 회원가입, 원활한 고객상담, 각종 서비스의 제공을 위해 아래와 같은 최소한의 개인정보를 수집하고 있습니다. 개인 정보 수집에 동의하지 않을 권리가 있으나 거부 시 회원가입이 제한됩니다. 
관련법령에 의한 정보보유 사유
상법, 전자상거래 등에서의 소비자보호에 관한 법률 등 관계법령의 규정에 의하여 보존할 필요가 있는 경우 회사는 관계법령(제6조)에서 정한 일정한 기간 동안 회원정보를 보관합니다. 이 경우 회사는 보관하는 정보를 그 보관의 목적으로만 이용하며 보존기간은 아래와 같습니다.

- 계약 또는 청약철회 등에 관한 기록 : 5년
- 대금결제 및 재화 등의 공급에 관한 기록 : 5년
- 소비자의 불만 또는 분쟁처리에 관한 기록 : 3년 
개인정보의 제3자 제공
에스알은 정보주체의 개인정보를 제1조(개인정보의 처리 목적)에서 명시한 범위 내에서만 처리하며, 정보주체의 동의, 법률의 특별한 규정 등 『개인정보 보호법』제17조 및 제18조에 해당하는 경우에만 개인정보를 제3자에게 제공합니다.
☞ [선택] 마케팅/홍보를 위한 회원정보
- 제공받는 자 : ㈜신한카드
- 제공목적 : SR 회원의 SRT 제휴카드(마일리지 포함) 발급 및 이용
- 제공항목 : 이름, 생년월일, 성별, 자택주소, 휴대폰번호, 이메일, 본인 인증 정보
- 제공받는 자의 보유/이용기간 : 회원 탈퇴 시 또는 정보주체 동의 철회 시까지
- 수집 동의 거부 및 불이익 : 위 개인정보의 제공에 대한 동의하지 않으시더라도
 ㈜SR 회원가입 및 서비스의 제공은 가능하며, 미동의 시 SRT-신한 제휴카드 가입 및 이용이 제한됩니다.

☞ [선택] 마케팅/홍보를 위한 회원정보
- 제공받는 자 : 한국철도공사
- 제공목적 : 한국철도공사 민원 이관
- 제공항목 : 이름, 휴대폰번호, 자택 전화번호, 이메일
- 제공받는 자의 보유/이용기간 : 민원 이관 시까지
- 수집 동의 거부 및 불이익 : 위 개인정보의 제공에 대한 동의하지 않으시더라도
 ㈜SR 회원가입 및 서비스의 제공은 가능하며, 미동의 시 SRT-한국철도공사의 연계 이용이 제한 될 수 있습니다.</textarea>
 <br>
 <div style="font-size: 14px; color:gray; float:right; margin-right:40px;">
 개인정보 수집 및 이용에 동의합니다.<b>(필수)</b><input id="check2" type="checkbox"></div><br>
 <div style="font-size: 14px; color:gray; float:right; margin-right:40px;">
 선택정보 수집 및 이용에 동의합니다.(선택)<input id="check3" type="checkbox"> </div><br>
 <div style="font-size: 14px; color:gray; float:right; margin-right:40px;">
 마케팅/홍보를 위한 개인정보 수집 및 이용에 동의합니다.(선택)<input id="check4" type="checkbox"> </div><br>
 <div style="font-size: 14px; color:gray; float:right; margin-right:40px;">
 개인정보의 제3자 제공에 동의합니다.(선택)<input id="check5" type="checkbox"><br>
 </div><br> 
 <div style="margin-top:20px; border: 1px solid lightgray; text-align: center; width: 900px; height:50px; font-size: 17px; background-color: #f9f9fa;">
        <div style="margin-top:12px; font-weight:bold; font-family: inherit; "> 위의 모든 약관에 동의합니다.  <input type="checkbox" id="checkAll" onclick="checkAll(this)"></div>
 </div>
 <div style="text-align: center;">
 <button style="margin-top:12px; width:150px; height: 50px; text-align: center; background-color: crimson; color:white;"  onclick="join()">확인</button>
 </div>
  
			</div>


		</div>
		<!-- end -->
	</div>

	</div>

	<!-- LOGIN  End   -->
	<jsp:include page="/view/container/containerBottom.jsp" flush="false" />
	<!-- 수정 부분 -->
	 
 
	<script type="text/javascript" src="/web/js/container/clock.js"
		charset="UTF-8"></script>
	 
 

 
 
 </body>
 <script type="text/javascript">
  
  function checkAll(obj){
     
	  
	 var obj1 =document.getElementById("check1");
	 var obj2 =document.getElementById("check2");
	 var obj3 =document.getElementById("check3");
	 var obj4 =document.getElementById("check4");
	 var obj5 =document.getElementById("check5");
	 
	if(obj.checked){
		obj1.checked=true; 
		 obj2.checked=true; 
		 obj3.checked=true; 
		 obj4.checked=true; 
		 obj5.checked=true; 
		 	
	}else{
		obj1.checked=false; 
		 obj2.checked=false; 
		 obj3.checked=false; 
		 obj4.checked=false; 
		 obj5.checked=false; 
		
	}
	  
  }
  
  function join(){
	  var obj1 =document.getElementById("check1");
		 var obj2 =document.getElementById("check2");
		 
	 if(obj1.checked&&obj2.checked){
		 
 location.href="/web/view/lim/register4.jsp";
 
 
	 }else{
		 alert('회원약관에 동의해주세요');
	 } 
	 
	 
  }
</script>





 </html>
 
 
 
 