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
			<a href="/web/view/kwon/login/login.jsp">�α���</a> | <a href="#">ȸ������</a>
			<%
			} else {
				Users u = (Users) session.getAttribute("user");
			%>
			<label style="color:gold"><b> <%=u.getName()%>�� </b></label> | <a href="/web/view/kwon/login/loginProcess.jsp">�α׾ƿ�</a>
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
			<button class="dropbtn">ȸ��������</button>
			<div class="dropdown-content">
				<a href="/web/view/kwon/tkting/kwonTkting.jsp"><i class="fa fa-caret-right" >&nbsp;</i>�����ǿ���</a>
				<a href="#"><i class="fa fa-caret-right" >&nbsp;</i>�߱�/���(��ȯ)</a>
				<a href="#"><i class="fa fa-caret-right" >&nbsp;</i>���ຯ��</a>
				<a href="#"><i class="fa fa-caret-right" >&nbsp;</i>�̿볻��/������</a>
				<a href="#"><i class="fa fa-caret-right" >&nbsp;</i>���ͳݹ�ȯ����</a>
			</div>
		</div>
		<div class="dropdown">
			<button class="dropbtn">�̵�ϰ�</button>
			<div class="dropdown-content">
				<a href="#"><i class="fa fa-caret-right" >&nbsp;</i>�߱�/���(��ȯ)</a>
				<a href="#"><i class="fa fa-caret-right" >&nbsp;</i>��������߱�</a>
				<a href="#"><i class="fa fa-caret-right" >&nbsp;</i>�̿볻��/������</a>
			</div>
		</div>
		<div class="dropdown">
			<button class="dropbtn">SCTrain �ҽ�</button>
			<div class="dropdown-content">
				<a href="#"><i class="fa fa-caret-right" >&nbsp;</i>��������</a>
				<a href="#"><i class="fa fa-caret-right" >&nbsp;</i>�ȳ�����</a>
				<a href="#"><i class="fa fa-caret-right" >&nbsp;</i>�����̿�ȳ�</a>
				<a href="#"><i class="fa fa-caret-right" >&nbsp;</i>�������̿�ȳ�</a>
			</div>
		</div>
		<div class="dropdown">
			<button class="dropbtn">SCTrain ����</button>
			<div class="dropdown-content">
				<a href="#"><i class="fa fa-caret-right" >&nbsp;</i>ȸ�� ����</a>
				<a href="#"><i class="fa fa-caret-right" >&nbsp;</i>������ ����</a>
				<a href="#"><i class="fa fa-caret-right" >&nbsp;</i>���ǹ� ����</a>
				<a href="#"><i class="fa fa-caret-right" >&nbsp;</i>���� �Ҹ�</a>
			</div>
		</div>
		<div class="dropdown">
			<button class="dropbtn">����������</button>
			<div class="dropdown-content">
				<a href="#"><i class="fa fa-caret-right" >&nbsp;</i>�������̿볻��</a>
				<a href="#"><i class="fa fa-caret-right" >&nbsp;</i>��������</a>
				<a href="#"><i class="fa fa-caret-right" >&nbsp;</i>ȸ����������</a>
				<a href="#"><i class="fa fa-caret-right" >&nbsp;</i>��й�ȣ����</a>
				<a href="#"><i class="fa fa-caret-right" style="font-size:12px;" >&nbsp;</i>�̸���/�޴���ȭ����</a>
				<a href="#"><i class="fa fa-caret-right" >&nbsp;</i>ȸ��Żȸ</a>
			</div>
		</div>
	</nav>
</div>