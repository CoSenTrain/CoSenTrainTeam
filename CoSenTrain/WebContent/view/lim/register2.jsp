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
<script type="text/javascript">
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

</script>


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
					style="width: 940px; padding: 0 30px 30px 30px; height: 500px; background-color: white;">


					<%
						String page2 = (String) request.getParameter("page");
					%>

					<jsp:include page="<%=page2%>" flush="false" />
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
	<script type="text/javascript">
		function lim_phone() {

			window.open("popup.jsp", "id",
					"left=830,top=400,width=420,height=420");

		}
	</script>
</body>

</html>
