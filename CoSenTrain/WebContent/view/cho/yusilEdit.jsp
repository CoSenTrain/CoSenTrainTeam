
<%@page import="dao.cho.YusilDao"%>
<%@page import="bean.cho.YusilBean"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
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
<link href="/web/css/lee/notice.css" rel="stylesheet" type="text/css">
<link href="/web/css/cho/yusilEdit.css" rel="stylesheet" type="text/css">

<link rel="stylesheet"	href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">

<link rel="stylesheet" href="/resources/demos/style.css">

<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/jquery-2.2.4.min.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>

<script>
	$(function() {

		$("#tabs").tabs();
		//$("p").hide(1000).show(1000);

	/* 	$("p").click(function() {
			$(this).hide(1000).show(1000);
		}); */

	});
</script>
</head>
<body>
	<div class="container">
		<jsp:include page="/view/container/containerTop.jsp" flush="false" />
		<!-- LOGIN  Start -->

		<%
			request.setCharacterEncoding("EUC-KR");
			List<YusilBean> list = null;
			
		 	try {
				list = YusilDao.selectYusil();
			} catch (Exception e) {
				e.printStackTrace();
			} 
		%>

		<div class="notice-wrapper">

			<div class="notice-wrapper-center">

				<br />
				<h1 style="padding: 30px 30px 0 30px;" text-align="left"
					class="tkting-method">���ǹ�����</h1>
				<span style="float: right; font-size: 12px; margin-right: 30px;">
					<a href="/web/view/container/container.jsp" class="fa fa-home"
					style="cursor: pointer; text-decoration: none; color: black;"></a>
					<i style="cursor: default;">&gt;</i> <a href=""
					style="cursor: pointer; text-decoration: none; color: black;">����</a>
					<i style="cursor: default;">&gt;</i> <a href=""
					style="cursor: pointer; text-decoration: none; color: black;"
					class="tkting-method">���ǹ�����</a>
				</span> <br /> <br /> <br />

				<div class="notice-rootlayer-wrapper"
					style="background-color: white; height: 500px;">
					<div id="tabs">

						<ul>

							<li><a href="#tabs-1">���ǹ��Ű�ȳ�</a></li>

							<li><a href="#tabs-2">���ǹ�ã��</a></li>



						</ul>

						<div id="tabs-1">

							<div>
							���ǹ� �Ű�ȳ�<br>
							������ �̿��ϸ鼭 �н��� ������ �ִٸ� ���ǹ����� �Ǵ� ������(1800-1472)
 							(���ǹ����� : [������] 02-6177-8245 / [��ź��] 031-328-9502 / [������] 031-646-8805) �� �����Ͻðų� <br>

			
							SR Ȩ������(www.srail.co.kr)���� �˻� �� Ȯ�� �� �� �ֽ��ϴ�.<br>
							</div>
														<div>
							���ǹ� �Ű�ȳ�<br>
							������ �̿��ϸ鼭 �н��� ������ �ִٸ� ���ǹ����� �Ǵ� ������(1800-1472)
 							(���ǹ����� : [������] 02-6177-8245 / [��ź��] 031-328-9502 / [������] 031-646-8805) �� �����Ͻðų� <br>

			
							SR Ȩ������(www.srail.co.kr)���� �˻� �� Ȯ�� �� �� �ֽ��ϴ�.<br>
							</div>
														<div>
							���ǹ� �Ű�ȳ�<br>
							������ �̿��ϸ鼭 �н��� ������ �ִٸ� ���ǹ����� �Ǵ� ������(1800-1472)
 							(���ǹ����� : [������] 02-6177-8245 / [��ź��] 031-328-9502 / [������] 031-646-8805) �� �����Ͻðų� <br>

			
							SR Ȩ������(www.srail.co.kr)���� �˻� �� Ȯ�� �� �� �ֽ��ϴ�.<br>
							</div>
							
	
						</div>

						<div id="tabs-2">


							<div id="wrapper">

								<table id="keywords" cellspacing="0" cellpadding="0"
									style="display: inline;">
									<thead>
										<tr>
											<th><span>����</span></th>
											<th><span>��ǰ��</span></th>
											<th><span>�󼼳���</span></th>
											<th><span>ī�װ�</span></th>
											<th><span>�������</span></th>
											<th><span>������</span></th>
										</tr>
									</thead>
									<tbody>
										<%
											for (YusilBean n : list) {
										%>
										<tr>
											<td><%=n.getNo()%></td>
											<td><%=n.getTitle()%></td>
											<td><%=n.getContents()%></td>
											<td><%=n.getCategory()%></td>
											<td><%=n.getStore()%></td>
											<td><%=n.getRegdate()%>
										</tr>
										<%
											}
										%>


									</tbody>
								</table>
							</div>
							<!-- wrapper -->

						</div>
						<!-- tabs-2 -->


					</div>
					<!-- tabs -->

				</div>
				<!-- notice-rootlayer-wrapper -->
			</div>
			<!-- notice-wrapper-center -->
		</div>
		<!-- notice-wrapper -->

		<!-- LOGIN  End   -->
		<jsp:include page="/view/container/containerBottom.jsp" flush="false" />

	</div>

	<script type="text/javascript" src="/web/js/container/clock.js"
		charset="UTF-8"></script>
	<!-- <script type="text/javascript"  src="/web/js/kwon/login/login.js" charset="UTF-8"></script> -->

</body>
</html>