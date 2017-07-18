<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>


<nav class="navbar navbar-inverse">
	<div class="container-fluid">
		<div class="navbar-header">
			<button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
				<span class="icon-bar"></span> 
			</button>
			<a class="navbar-brand" href="/web/view/admin/adminIndex.jsp?nav=sales">COSEN TRAIN</a>
		</div>
		<div class="collapse navbar-collapse" id="myNavbar">
			<ul class="nav navbar-nav">
				<li class=${param.nav eq null || param.nav eq "sales" ? "active" : ""}><a href="/web/view/admin/adminIndex.jsp?nav=sales">매출관리</a></li>
				<li class=${param.nav ne null && param.nav eq "trainSchedule" ? "active" : ""}><a href="/web/view/admin/trainScheduleManagement.jsp?nav=trainSchedule">기차 스케쥴 관리</a></li>
				<li class=${param.nav ne null && param.nav eq "station" ? "active" : ""}><a href="/web/view/admin/stationManagement.jsp?nav=station">역 관리</a></li>
				<li class=${param.nav ne null && param.nav eq "notice" ? "active" : ""}><a href="/web/view/admin/noticeManagement.jsp?nav=notice"">공지사항 관리</a></li>
			</ul>
			<ul class="nav navbar-nav navbar-right">
				<li>
					<a href="/web/view/kwon/login/loginProcess.jsp">&nbsp;
						<span class="glyphicon glyphicon-log-out"></span>로그아웃
					</a>
				</li>
			</ul>
		</div>
	</div>
</nav>