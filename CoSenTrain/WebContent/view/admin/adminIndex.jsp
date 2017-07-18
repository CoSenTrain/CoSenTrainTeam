<%@page import="bean.lee.TimeGraphBean"%>
<%@page import="bean.lee.AreaGraphBean"%>
<%@page import="java.util.List"%>
<%@page import="dao.lee.GraphDao"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%!GraphDao graphDao = GraphDao.getInstance();%>
<html lang="en">
<head>
<title>Bootstrap Example</title>
<meta charset="utf-8">
<link rel="shortcut icon" href="/web/img/favicon.jpg">
<link rel="icon" sizes="16x16 32x32" href="/web/img/favicon.jpg">
<link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/bootstrap/latest/css/bootstrap.min.css">
<script src="//code.jquery.com/jquery.min.js"></script>

<script>
	function showAjax() {
		if ($("select#start").select().val() == $("select#arrive").select()
				.val()) {
			alert('�ٽ� �����ϼ���');
			$("select#start").select().val('empty');
			$("select#arrive").select().val('empty');
		} else {
			var start = $("select#start option:selected").text();
			var arrive = $("select#arrive option:selected").text();
			$("div.showAjaxData").html(start + "���/" + arrive + "����");
		}
	}
</script>
</head>
<body>
	<jsp:include page="/view/admin/jumbotron.jsp"></jsp:include>
	<jsp:include page="/view/admin/navigation.jsp"></jsp:include>
	<%-- <jsp:include page="/view/admin/graph.jsp"></jsp:include> --%>


	<div class="container">
		<div class="col-xs-12" id="curve_chart"></div>
		<form action="test.jsp" method="post">
			��߿� <select id="start" name="start">
				<option selected="selected" value="empty">���� �����ϼ���</option>
				<option value="suSeo">����</option>
				<option value="daeJeon">����</option>
				<option value="eastDaeGu">���뱸</option>
				<option value="newKyungJu">�Ű���</option>
				<option value="buSan">�λ�</option>
			</select><br> ������ <select id="arrive" name="arrive">
				<option selected="selected" value="empty">���� �����ϼ���</option>
				<option value="suSeo">����</option>
				<option value="daeJeon">����</option>
				<option value="eastDaeGu">���뱸</option>
				<option value="newKyungJu">�Ű���</option>
				<option value="buSan">�λ�</option>
			</select> <input type="button" value="�˻�" onclick="showAjax()">
		</form>
		<div class="row">
			<div class="showAjaxData">�����۽��� ������ ������ �κ�</div>
			<div class="col-sm-6">
				<!-- ��߽ð����� �����͸� �ѷ��ִ� �κ� -->
				<table border="1">
					<thead>
						<tr>
							<th>��߽ð�</th>
							<th>����</th>
							<th>��з�</th>
						</tr>
					</thead>
					<tbody>

						<%
							List<TimeGraphBean> list = graphDao.selectGraphStartTime();
							for (int i = 0; i < list.size(); i++) {
						%>
						<tr>
							<td><%=list.get(i).getDepartureTime()%>��</td>
							<td><%=list.get(i).getCount()%></td>
							<td><%=list.get(i).getPersent()%>%</td>
						</tr>
						<%
							}
						%>
					</tbody>
				</table>
			</div>
			<!-- �����ð����� �����͸� �ѷ��ִ� �κ� -->
			<div class="col-sm-6">
				<table border="1">
					<thead>
						<tr>
							<th>�����ð�</th>
							<th>����</th>
							<th>��з�</th>
						</tr>
					</thead>
					<tbody>

						<%
							List<TimeGraphBean> list2 = graphDao.selectGraphArriveTime();
							for (int i = 0; i < list2.size(); i++) {
						%>
						<tr>
							<td><%=list2.get(i).getArrivalTime()%>��</td>
							<td><%=list2.get(i).getCount()%></td>
							<td><%=list2.get(i).getPersent()%>%</td>
						</tr>
						<%
							}
						%>
					</tbody>
				</table>
			</div>
		</div>
		<br>
		<br>
		<br>
		<br>
		<br>
		
		<div class="row">
			<table border="1">
			<thead>
				<tr>
					<th>�����</th>
					<th>����</th>
					<th>��з�</th>
				</tr>
			</thead>
			<tbody>
				<%
					List<AreaGraphBean> list3 = graphDao.selectGraphSrc();
					for (int i = 0; i < list3.size(); i++) {
				%>
				<tr>
					<td><%=list3.get(i).getStartArea() %>��</td>
					<td><%=list3.get(i).getCount() %></td>
					<td><%=list3.get(i).getPersent() %>%</td>
				</tr>
					<%
						}
					%>
			</tbody>
			</table>
		</div>
		
		<div class="row">
			<table border="1">
			<thead>
				<tr>
					<th>������</th>
					<th>����</th>
					<th>��з�</th>
				</tr>
			</thead>
			<tbody>
				<%
					List<AreaGraphBean> list4 = graphDao.selectGraphDest();
					for (int i = 0; i < list4.size(); i++) {
				%>
				<tr>
					<td><%=list4.get(i).getArriveArea() %>��</td>
					<td><%=list4.get(i).getCount() %></td>
					<td><%=list4.get(i).getPersent() %>%</td>
				</tr>
					<%
						}
					%>
			</tbody>
			</table>
		</div>
		
		
		
	</div>





</body>
</html>
