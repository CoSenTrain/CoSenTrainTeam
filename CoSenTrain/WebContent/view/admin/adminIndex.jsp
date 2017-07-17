<%@page import="bean.lee.TimeGraphBean"%>
<%@page import="bean.lee.AreaGraphBean"%>
<%@page import="java.util.List"%>
<%@page import="dao.lee.GraphDao"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%!GraphDao graphDao = GraphDao.getInstance();%>
<html lang="en">
<head>
<title>Bootstrap Example</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="//maxcdn.bootstrapcdn.com/bootstrap/latest/css/bootstrap.min.css">
<script src="//code.jquery.com/jquery.min.js"></script>
<script
	src="//maxcdn.bootstrapcdn.com/bootstrap/latest/js/bootstrap.min.js"></script>
<script src="https://www.gstatic.com/charts/loader.js"></script>
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
		<div class="row">
		</div>
	</div>





</body>
</html>
