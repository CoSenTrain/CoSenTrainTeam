
<%@page import="dao.cho.YusilDao"%>
<%@page import="bean.cho.YusilBean"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR" />
<title>Hello</title>

<link rel="shortcut icon" href="">
<link href="/web/css/container/container.css" rel="stylesheet"	type="text/css">
<link rel="stylesheet"	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link href="/web/css/container/fa.css" rel="stylesheet" type="text/css">
<link href="/web/css/container/dropdown.css" rel="stylesheet" type="text/css">
<link href="/web/css/container/standardColors.css" rel="stylesheet"	type="text/css">
<link href="/web/css/cho/notice.css" rel="stylesheet" type="text/css">
<!-- <link href="/web/css/cho/yusilEdit.css" rel="stylesheet" type="text/css"> -->

<link rel="stylesheet"	href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">

<!-- <link rel="stylesheet" href="/resources/demos/style.css"> -->

<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/jquery-2.2.4.min.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>

<script type="text/javascript">
	$(function() {

		$("#tabs").tabs();
		//$("p").hide(1000).show(1000);

	/* 	$("p").click(function() {
			$(this).hide(1000).show(1000);
		}); */
		
		$("#writeYusil").click(function() {
			document.location.href='/web/view/cho/yusilInsert.jsp';
			
		});
		
		
	});
	
	
/* 	function writeYusil()() {
		alert('하이');
	} */
</script>
</head>
<body>
	<div class="container">
		<jsp:include page="/view/container/containerTop.jsp" flush="false" />
		<!-- LOGIN  Start -->

		<%
			request.setCharacterEncoding("EUC-KR");
			List<YusilBean> list = null;
			int rm = 0;
			
		 	try {
				list = YusilDao.getInstance().selectYusil();
			} catch (Exception e) {
				e.printStackTrace();
			} 
		 	
	
		%> 

		<div class="notice-wrapper">

			<div class="notice-wrapper-center">

				<br />
				<h1 style="padding: 30px 30px 0 30px;" text-align="left" class="tkting-method">유실물정보</h1>
				<span style="float: right; font-size: 12px; margin-right: 30px;">
					<a href="/web/view/container/container.jsp" class="fa fa-home" style="cursor: pointer; text-decoration: none; color: black;"></a>
					<i style="cursor: default;">&gt;</i> <a href=""	style="cursor: pointer; text-decoration: none; color: black;">서비스</a>
					<i style="cursor: default;">&gt;</i> <a href="" style="cursor: pointer; text-decoration: none; color: black;"
					class="tkting-method">유실물정보</a>
				</span> <br /> <br /> <br />

				<!-- <div class="notice-rootlayer-wrapper" style="background-color: white; height: 500px;"> -->
				<div class="notice-rootlayer-wrapper" >
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				<div class="tab">
					<button class="tablinks" onclick="openCity(this, event, 'oneTk')" id="defaultOpen">유실물안내</button>
					<button class="tablinks" onclick="openCity(this, event, 'manyTk')">유실물 찾기</button>
				</div>
				<div id="oneTk" class="tabcontent">
					AAAAAAAAAAAAAAAAAAA
				</div>
				<div id="manyTk" class="tabcontent">
					
					
					<!-- max: 898px; -->
					<table border="1" width="898px">
						<colgroup>
							<col width="50px" />
							<col  />
							<col  />
							<col  />
							<col  />
							<col  />
						</colgroup>
						<tr>
							<th>순번</th>
							<th>물품명</th>
							<th>상세내용</th>
							<th>품목</th>
							<th>보관장소</th>
							<th>접수일</th>
						</tr>
						<%
						for (YusilBean n : list) {
						%>
						<tr>
							<td><%=n.getRm()%></td>
							<td><%=n.getTitle()%></td>
							<td>
								<a href="/web/view/cho/yusilInfo.jsp?no=<%=n.getNo()%>"><%=n.getContents()%></a>
							</td>
							<td><%=n.getCategory()%></td>
							<td><%=n.getStore()%></td>
							<td><%=n.getRegdate()%></td>
						</tr>
						<%
						}
						 %>
						
					</table>
					
					
					
					
					
					
				</div>
			<br />
			<br />
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				

				</div>
				<!-- notice-rootlayer-wrapper -->
			</div>
			<!-- notice-wrapper-center -->
		</div>
		<!-- notice-wrapper -->

		<!-- LOGIN  End   -->
		<jsp:include page="/view/container/containerBottom.jsp" flush="false" />

	</div>

	<script type="text/javascript" src="/web/js/container/clock.js" charset="UTF-8"></script>
	<!-- <script type="text/javascript"  src="/web/js/kwon/login/login.js" charset="UTF-8"></script> -->
<script>

//this event onetk,manytk
function openCity(o, evt, cityName) {
	var i, tabcontent, tablinks;
	tabcontent = document.getElementsByClassName("tabcontent");
	for (i = 0; i < tabcontent.length; i++) {
		tabcontent[i].style.display = "none";
	}
	tablinks = document.getElementsByClassName("tablinks");
	for (i = 0; i < tablinks.length; i++) {
		tablinks[i].className = tablinks[i].className.replace(" active", "");
	}
	document.getElementById(cityName).style.display = "block";
	evt.currentTarget.className += " active";
}

// Get the element with id="defaultOpen" and click on it
document.getElementById("defaultOpen").click();


</script>
</body>
</html>