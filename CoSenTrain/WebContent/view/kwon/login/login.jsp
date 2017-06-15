<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR" />
	<title>Hello</title>
	<link rel="shortcut icon" href="">
	<link href="/web/css/container/container.css" rel="stylesheet" type="text/css">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	<link href="/web/css/container/fa.css" rel="stylesheet" type="text/css">
	<link href="/web/css/container/dropdown.css" rel="stylesheet" type="text/css">
	<link href="/web/css/container/standardColors.css" rel="stylesheet" type="text/css">
	<link href="/web/css/kwon/login/login.css" rel="stylesheet" type="text/css">
<!-- 	
	<link href="/web/css/kwon/tktingSchedule.css" rel="stylesheet" type="text/css">
	<link href="/web/css/modal/modalSelectStation.css" rel="stylesheet" type="text/css">
	<link href="/web/css/modal/modalSelectCalendar.css" rel="stylesheet" type="text/css">
-->
</head>
<body>
	<div class="container">
		
		<jsp:include page="/view/container/containerTop.jsp" flush="false" />
<!-- LOGIN  Start -->
<div class="login-wrapper">
	<div class="login-wrapper-center">
		<br />
		<h1 style="padding: 30px 30px 0 30px;" class="tkting-method">로그인</h1>
		<span style="float:right;font-size:12px;margin-right:30px;">
			<a href="/web/view/container/container.jsp" class="fa fa-home" style="cursor:pointer;text-decoration:none;color:black;"></a>
			<i style="cursor:default;">&gt;</i>
			<a href="" style="cursor:pointer;text-decoration:none;color:black;">Cosen 회원</a>
			<i style="cursor:default;">&gt;</i>
		<a href="" style="cursor:pointer;text-decoration:none;color:black;" class="tkting-method">로그인</a>
		</span>
		<br />
		<br />
		<br />
		<div class="login-rootlayer-wrapper">
			<div  class="login-layer-wrapper"> 
				<div class="login-layer-wrapper-left">
					<form action="/web/view/kwon/login/loginProcess.jsp" method="post" name="frm">
						<input type="radio" name="signInWith" value="userNo" onchange="frmRadChange(this)" checked="checked" />
						<label>회원번호&nbsp;&nbsp;</label>
						<input type="radio" name="signInWith" value="email" onchange="frmRadChange(this)" />
						<label>인증된 이메일&nbsp;&nbsp;</label>
						<input type="radio" name="signInWith" value="phone" onchange="frmRadChange(this)" />
						<label>인증된 휴대전화번호</label>
						
						<table class="frm-table">
							<tr>
								<td>
									<label id="logName">회원번호</label>
								</td>
								<td style="text-align:left">
									<input type="text" class="frm-input-text" name="logId"  required />
								</td>
								<td rowspan="2">
									<input type="submit" class="frm-input-submit" value="확인"  />
								</td>
							</tr>
							<tr>
								<td>
									<label id="logPw">비밀번호</label>
								</td>
								<td>
									<input type="password" class="frm-input-text"  name="logPw" required />
								</td>
							</tr>
							<tr>
								<td></td>
								<td colspan="2">
									<input type="checkbox" class="frm-input-cookie" />
									<label id="logCookieName">회원번호 저장</label>
								</td>
							</tr>
							<tr>
								<td></td>
								<td colspan="2" class="other-option-buttons">
									<button>회원번호 찾기</button>
									<button>비밀번호 찾기</button>
									<button>회원가입</button>
								</td>
							</tr>
						</table>
					</form>
				</div>
				<div class="login-layer-wrapper-right">
					<p>
						미등록고객은 아래의 버튼을<br /> 
						이용하시기 바랍니다.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					</p>
					<button>미등록고객 예매</button>
					<button>반환&middot;재발권&middot;영수증</button>
				</div>
			</div>
			<div class="login-frm-discription">
				<div>
					<label>※ 비밀번호 5회 오류 시 로그인할 수 없습니다.</label>
				</div>
				<ul>
					<li>
						마이페이지 > 회원정보관리 > 이메일/휴대전화인증에서 인증을 받으시면 이메일 또는 휴대전화번호로 로그인할 수 있습니다.
					</li>
					<li>
						로그인 후 1시간 동안 입력이 없을 경우 자동으로 로그아웃됩니다.
					</li>
				</ul>
			</div>
		</div>
	</div>
</div>

<!-- LOGIN  End   -->
		<jsp:include page="/view/container/containerBottom.jsp" flush="false" />
		
	</div>
	
	<script type="text/javascript"  src="/web/js/container/clock.js" charset="UTF-8"></script>
	<script type="text/javascript"  src="/web/js/kwon/login/login.js" charset="UTF-8"></script>
<!-- 	
	<script type="text/javascript"  src="/web/js/main/main.js" charset="UTF-8"></script>
	<script type="text/javascript"  src="/web/js/kwon/tktingSchedule.js" charset="UTF-8"></script>
	<script type="text/javascript"  src="/web/js/modal/modalSelectStation.js" charset="UTF-8"></script>
	<script type="text/javascript"  src="/web/js/modal/modalSelectCalendar.js" charset="UTF-8"></script>
-->
</body>
</html>