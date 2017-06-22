<%@page import="bean.kwon.Users"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<script src="/web/js/container/onlyChromePlease.js" charset="UTF-8"></script>
<div class="color-navy">
	<div class="header">
		<span class="util"  style="cursor:default">
			<i id="activeClock" class="yyyymmddhhmiss"></i>&nbsp;&nbsp;
			<%
			if(session.getAttribute("user")==null) {
			%>
			<a href="/web/view/kwon/login/login.jsp">로그인</a> | <a href="/web/view/lim/register1.jsp">회원가입</a>
			<%
			} else {
				Users u = (Users) session.getAttribute("user");
			%>
			<label style="color:gold"><b> <%=u.getName()%>님 </b></label> | <a href="/web/view/kwon/login/loginProcess.jsp">로그아웃</a>
			<%
			}
			%>
			
		</span>
		<br />
		<img id="home" src="/web/img/logo/logo0.png" width="180" style="curdor:pointer;" onclick="(function(){document.location.href='/web/view/container/container.jsp';})()" />
		<br />
		<br />
	</div>
</div>
<div class="color-darkred">
	<nav>
		<div class="dropdown">
			<button class="dropbtn">회원승차권</button>
			<div class="dropdown-content">
				<a href="/web/view/kwon/tkting/kwonTkting.jsp"><i class="fa fa-caret-right" >&nbsp;</i>승차권예약</a>
				<a href="#"><i class="fa fa-caret-right" >&nbsp;</i>발권/취소(반환)</a>
				<a href="#"><i class="fa fa-caret-right" >&nbsp;</i>예약변경</a>
				<a href="#"><i class="fa fa-caret-right" >&nbsp;</i>이용내역/영수증</a>
				<a href="#"><i class="fa fa-caret-right" >&nbsp;</i>인터넷반환접수</a>
			</div>
		</div>
		<div class="dropdown">
			<button class="dropbtn">미등록고객</button>
			<div class="dropdown-content">
				<a href="#"><i class="fa fa-caret-right" >&nbsp;</i>발권/취소(반환)</a>
				<a href="#"><i class="fa fa-caret-right" >&nbsp;</i>승차권재발권</a>
				<a href="#"><i class="fa fa-caret-right" >&nbsp;</i>이용내역/영수증</a>
			</div>
		</div>
		<div class="dropdown">
			<button class="dropbtn">SCTrain 소식</button>
			<div class="dropdown-content">
				<a href="#"><i class="fa fa-caret-right" >&nbsp;</i>공지사항</a>
				<a href="#"><i class="fa fa-caret-right" >&nbsp;</i>안내사항</a>
				<a href="#"><i class="fa fa-caret-right" >&nbsp;</i>종합이용안내</a>
				<a href="#"><i class="fa fa-caret-right" >&nbsp;</i>승차권이용안내</a>
			</div>
		</div>
		<div class="dropdown">
			<button class="dropbtn">SCTrain 서비스</button>
			<div class="dropdown-content">
				<a href="#"><i class="fa fa-caret-right" >&nbsp;</i>회원 서비스</a>
				<a href="#"><i class="fa fa-caret-right" >&nbsp;</i>기차역 정보</a>
				<a href="#"><i class="fa fa-caret-right" >&nbsp;</i>유실물 정보</a>
				<a href="#"><i class="fa fa-caret-right" >&nbsp;</i>고객의 소리</a>
			</div>
		</div>
		<div class="dropdown">
			<button class="dropbtn">마이페이지</button>
			<div class="dropdown-content">
				<a href="#"><i class="fa fa-caret-right" >&nbsp;</i>승차권이용내역</a>
				<a href="#"><i class="fa fa-caret-right" >&nbsp;</i>할인쿠폰</a>
				<a href="#"><i class="fa fa-caret-right" >&nbsp;</i>회원정보수정</a>
				<a href="#"><i class="fa fa-caret-right" >&nbsp;</i>비밀번호변경</a>
				<a href="#"><i class="fa fa-caret-right" style="font-size:12px;" >&nbsp;</i>이메일/휴대전화인증</a>
				<a href="#"><i class="fa fa-caret-right" >&nbsp;</i>회원탈회</a>
			</div>
		</div>
	</nav>
</div>