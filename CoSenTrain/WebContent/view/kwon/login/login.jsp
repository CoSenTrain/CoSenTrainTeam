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
		<h1 style="padding: 30px 30px 0 30px;" class="tkting-method">�α���</h1>
		<span style="float:right;font-size:12px;margin-right:30px;">
			<a href="/web/view/container/container.jsp" class="fa fa-home" style="cursor:pointer;text-decoration:none;color:black;"></a>
			<i style="cursor:default;">&gt;</i>
			<a href="" style="cursor:pointer;text-decoration:none;color:black;">Cosen ȸ��</a>
			<i style="cursor:default;">&gt;</i>
		<a href="" style="cursor:pointer;text-decoration:none;color:black;" class="tkting-method">�α���</a>
		</span>
		<br />
		<br />
		<br />
		<div class="login-rootlayer-wrapper">
			<div  class="login-layer-wrapper"> 
				<div class="login-layer-wrapper-left">
					<form action="/web/view/kwon/login/loginProcess.jsp" method="post" name="frm">
						<input type="radio" name="signInWith" value="userNo" onchange="frmRadChange(this)" checked="checked" />
						<label>ȸ����ȣ&nbsp;&nbsp;</label>
						<input type="radio" name="signInWith" value="email" onchange="frmRadChange(this)" />
						<label>������ �̸���&nbsp;&nbsp;</label>
						<input type="radio" name="signInWith" value="phone" onchange="frmRadChange(this)" />
						<label>������ �޴���ȭ��ȣ</label>
						
						<table class="frm-table">
							<tr>
								<td>
									<label id="logName">ȸ����ȣ</label>
								</td>
								<td style="text-align:left">
									<input type="text" class="frm-input-text" name="logId"  required />
								</td>
								<td rowspan="2">
									<input type="submit" class="frm-input-submit" value="Ȯ��"  />
								</td>
							</tr>
							<tr>
								<td>
									<label id="logPw">��й�ȣ</label>
								</td>
								<td>
									<input type="password" class="frm-input-text"  name="logPw" required />
								</td>
							</tr>
							<tr>
								<td></td>
								<td colspan="2">
									<input type="checkbox" class="frm-input-cookie" />
									<label id="logCookieName">ȸ����ȣ ����</label>
								</td>
							</tr>
							<tr>
								<td></td>
								<td colspan="2" class="other-option-buttons">
									<button>ȸ����ȣ ã��</button>
									<button>��й�ȣ ã��</button>
									<button>ȸ������</button>
								</td>
							</tr>
						</table>
					</form>
				</div>
				<div class="login-layer-wrapper-right">
					<p>
						�̵�ϰ��� �Ʒ��� ��ư��<br /> 
						�̿��Ͻñ� �ٶ��ϴ�.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					</p>
					<button>�̵�ϰ� ����</button>
					<button>��ȯ&middot;��߱�&middot;������</button>
				</div>
			</div>
			<div class="login-frm-discription">
				<div>
					<label>�� ��й�ȣ 5ȸ ���� �� �α����� �� �����ϴ�.</label>
				</div>
				<ul>
					<li>
						���������� > ȸ���������� > �̸���/�޴���ȭ�������� ������ �����ø� �̸��� �Ǵ� �޴���ȭ��ȣ�� �α����� �� �ֽ��ϴ�.
					</li>
					<li>
						�α��� �� 1�ð� ���� �Է��� ���� ��� �ڵ����� �α׾ƿ��˴ϴ�.
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