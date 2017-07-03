
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
<link href="/web/css/common/tableForList.css" rel="stylesheet" type="text/css">
<!-- <link href="/web/css/cho/yusilEdit.css" rel="stylesheet" type="text/css"> -->

<link rel="stylesheet"	href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">

<!-- <link rel="stylesheet" href="/resources/demos/style.css"> -->

<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/jquery-2.2.4.min.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>

<script type="text/javascript">
	$(function() {

		$("#tabs").tabs();
		$("#writeYusil").click(function() {
			document.location.href='/web/view/cho/yusilInsert.jsp';
			
		});
		
		
	});
	
	function yusilInfo(no) {
		$.ajax({
			url:'/web/view/cho/yusilInfo.jsp?no='+no,
			dataType:'html',
			type:'GET',
			success:function(htmlValue) {
				$("div#manyTk").html(htmlValue);
			}			
		});
	}
	
	
/* 	function writeYusil()() {
		alert('����');
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
				<h1 style="padding: 30px 30px 0 30px;" text-align="left" class="tkting-method">���ǹ�����</h1>
				<span style="float: right; font-size: 12px; margin-right: 30px;">
					<a href="/web/view/container/container.jsp" class="fa fa-home" style="cursor: pointer; text-decoration: none; color: black;"></a>
					<i style="cursor: default;">&gt;</i> <a href=""	style="cursor: pointer; text-decoration: none; color: black;">����</a>
					<i style="cursor: default;">&gt;</i> <a href="" style="cursor: pointer; text-decoration: none; color: black;"
					class="tkting-method">���ǹ�����</a>
				</span> <br /> <br /> <br />

				<!-- <div class="notice-rootlayer-wrapper" style="background-color: white; height: 500px;"> -->
				<div class="notice-rootlayer-wrapper" >
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				<div class="tab">
					<button class="tablinks" onclick="openCity(this, event, 'oneTk')" id="defaultOpen">���ǹ��ȳ�</button>
					<button class="tablinks" onclick="openCity(this, event, 'manyTk')">���ǹ� ã��</button>
				</div>
				<div id="oneTk" class="tabcontent">
					<div>
					 ���ǹ� �Ű�ȳ�<br>
				          ������ �̿��ϸ鼭 �н��� ������ �ִٸ� ���ǹ����� �Ǵ� ������(1800-1472) (���ǹ����� : [������] 02-6177-8245 / [��ź��] 031-328-9502 / [������] 031-646-8805) �� �����Ͻðų�<br>
				    SR Ȩ������(www.srail.co.kr)���� �˻� �� Ȯ�� �� �� �ֽ��ϴ�.<br>
					</div><br>
					<div>
					 ���ǹ� �Ű�ȳ�<br>
				          ������ �̿��ϸ鼭 �н��� ������ �ִٸ� ���ǹ����� �Ǵ� ������(1800-1472) (���ǹ����� : [������] 02-6177-8245 / [��ź��] 031-328-9502 / [������] 031-646-8805) �� �����Ͻðų�<br>
				    SR Ȩ������(www.srail.co.kr)���� �˻� �� Ȯ�� �� �� �ֽ��ϴ�.<br>
					</div><br>
					<div>
					 ���ǹ� �Ű�ȳ�<br>
				          ������ �̿��ϸ鼭 �н��� ������ �ִٸ� ���ǹ����� �Ǵ� ������(1800-1472) (���ǹ����� : [������] 02-6177-8245 / [��ź��] 031-328-9502 / [������] 031-646-8805) �� �����Ͻðų�<br>
				    SR Ȩ������(www.srail.co.kr)���� �˻� �� Ȯ�� �� �� �ֽ��ϴ�.<br>
					</div>
				</div>
				<div id="manyTk" class="tabcontent">
					
					<!-- max: 898px; -->
					<div class="tableForList">
						<table width="100%">
							<colgroup>
								<col width="50px" />
								<col width="130px" />
								<col />
								<col width="130px" />
								<col width="120px" />
								<col width="90px" />
							</colgroup>
							<tr>
								<th>����</th>
								<th>��ǰ��</th>
								<th>�󼼳���</th>
								<th>ǰ��</th>
								<th>�������</th>
								<th>������</th>
							</tr>
							<%
							if(list != null) {
								int cnt = 1;
							for (YusilBean n : list) {
							%>
							<tr>
								<td class="td-center"><%=cnt++%></td>
								<td class="td-center"><div class="td-ellipsis" style="width:130px;"><%=(n.getTitle() != null ? n.getTitle() : "")%></div></td>
								<td class="click-hover">
									<div class="td-ellipsis" style="width:360px;" onclick="(function(){location.href='/web/view/cho/yusilInfo.jsp?no=<%=(n.getNo() != 0 ? n.getNo() : -1)%>';})()">
									<%-- <a href="/web/view/cho/yusilInfo.jsp?no=<%=n.getNo()%>"><%=n.getContents()%></a> --%>
									<%-- <a href="javascript:yusilInfo(<%=(n.getNo() != 0 ? n.getNo() : -1)%>)"><%=(n.getContents() != null? n.getContents() : "")%></a> --%>
									<%=(n.getContents() != null? n.getContents() : "")%>
									</div>
								</td>
								<td class="td-center"><%=(n.getLostcategory() != null ? n.getLostcategory() : "")%></td>
								<td class="td-center"><%=(n.getLoststore() != null ? n.getLoststore() : "")%></td>
								<td class="td-center"><%=(n.getRegdate() != null ? n.getRegdate() : "")%></td>
							</tr>
							<%
							}
							}
							 %>
							
						</table>
					</div>
					
					
					
					
					
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