<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<script src='/web/view/lim/test.js'></script>
</head>
<body onload="loadfun()">
<div id="dv">
<h2 onclick="loadfun()" >본인인증 및 가입여부 확인</h2>
<h3>휴대전화를 통하여 SR회원가입 여부를 확인하실 수 있습니다.</h3>

<div class="login-rootlayer-wrapper" >
	<div class="login-layer-wrapper">
		<div class="login-layer-wrapper-left">

			<img alt="휴대전화 인증" src="/web/img/lim/join/phone.JPG"
				onclick="lim_phone()">

		</div>
		<div class="login-layer-wrapper-right">
			<p>
				휴대전화 인증이랑? 주민등록번호 대체수단으로 주민등록 번호 대신 본인<br /> 명의로 등록한 휴대전화 정보를 통해
				본인확인을 하게
				됩니다.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			</p>
		</div>
	</div>
	<div class="login-frm-discription">
		<div>
			<label>인터넷 익스플로러(IE)에서 본인인증 후 '실행 스크립트가 존재하지 않습니다.'라는 메시지가
				나오는 경우</label>
		</div>
		<ul>
			<li>[인터넷 옵션]>[보안]탭에서 [신뢰할수 있는 사이트]로 이동합니다.</li>
			<li>[사이트]버튼을 클릭한 후 https://container.jsp 을 추가한 다음 다시 시도해 주십시오.</li>
		</ul>
	</div>
</div>
 </div>

</body>
</html>
