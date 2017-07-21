<%@page import="bean.lee.TimeGraphBean"%>
<%@page import="bean.lee.AreaGraphBean"%>
<%@page import="java.util.List"%>
<%@page import="dao.lee.GraphDao"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%!GraphDao graphDao = GraphDao.getInstance();%>
<!DOCTYPE html>
<html>
<head>
<title>Sales</title>
<meta charset="utf-8">
<link rel="shortcut icon" href="/web/img/favicon.jpg">
<link rel="icon" sizes="16x16 32x32" href="/web/img/favicon.jpg">
<link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/bootstrap/latest/css/bootstrap.min.css">
<link rel="stylesheet" href="https://www.amcharts.com/lib/3/plugins/export/export.css" type="text/css" media="all" />
<script src="//code.jquery.com/jquery.min.js"></script>
<script src="https://www.amcharts.com/lib/3/amcharts.js"></script>
<script src="https://www.amcharts.com/lib/3/serial.js"></script>
<script src="https://www.amcharts.com/lib/3/pie.js"></script>
<script src="https://www.amcharts.com/lib/3/plugins/export/export.min.js"></script>
<script src="https://www.amcharts.com/lib/3/themes/light.js"></script>

<script>
	function showAjax() {
		if ($("select#start").select().val() == $("select#arrive").select() .val()) {
			alert('�ٽ� �����ϼ���');
			$("select#start").select().val('empty');
			$("select#arrive").select().val('empty');
		} else {
			//do AJAX
			/* 
			var start = $("select#start option:selected").text();
			var arrive = $("select#arrive option:selected").text();
			$("h3.showAjaxData").html(start + "���/" + arrive + "����");
			*/
		}
	}
</script>
</head>
<body>
	<jsp:include page="/view/admin/jumbotron.jsp"></jsp:include>
	<jsp:include page="/view/admin/navigation.jsp"></jsp:include>
	<%-- <jsp:include page="/view/admin/graph.jsp"></jsp:include> --%>


	<div class="container">
		<!-- <div class="col-xs-12" id="curve_chart"></div> -->
		<div class="panel panel-default col-xs-12" style="padding: 0;">
			&nbsp;
			<form action="test.jsp" method="post" class="form">
				<div class="form-group col-xs-12">
					<!-- <label class="control-label col-sm-2" for="baseDate">��߿� : </label> -->
					<div class="col-sm-12">
						<select id="start" name="src" class="form-control">
							<option selected="selected" value="empty">��߿��� �����ϼ���</option>
							<option value="1">����</option>
							<option value="2">����</option>
							<option value="3">���뱸</option>
							<option value="4">�Ű���</option>
							<option value="5">�λ�</option>
						</select>
					</div>
				</div>
				<div class="form-group col-xs-12">
					<!-- <label class="control-label col-sm-2" for="baseDate">������ : </label> -->
					<div class="col-sm-12">
						<select id="arrive" name="dest" class="form-control">
							<option selected="selected" value="empty" >�������� �����ϼ���</option>
							<option value="1">����</option>
							<option value="2">����</option>
							<option value="3">���뱸</option>
							<option value="4">�Ű���</option>
							<option value="5">�λ�</option>
						</select>
					</div>
				</div>
				<div class="form-group col-xs-12">
					<div class="col-sm-12">
	  					<input type="button" value="�˻�" class="form-control btn btn-justified btn-primary" onclick="showAjax()" />
					</div>
				</div>
			</form>
		</div>
			<br />
			<br />
	</div>
	<div class="container">
		<div class="row ">
			<!-- <h3 class="showAjaxData">�����۽��� ������ ������ �κ�</h3> -->
			<!-- ---------------------��߽ð��� ǥ & �׷���----------------------- -->
			
			<div class="well well-defualt"><h3>��߽ð��� ǥ & �׷���</h3></div>
			<div class="col-sm-3">
			<!-- ��߽ð����� �����͸� �ѷ��ִ� �κ� -->
				<table class="table table-bordered table-striped table-hover table-responsive table-condensed">
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
							<td><%=(int) list.get(i).getCount()%></td>
							<td><%=list.get(i).getPersent()%>%</td>
						</tr>
						<%
							}
						%>
					</tbody>
				</table>
			</div>
			<div class="col-sm-9">
				<jsp:include page="/view/admin/depatureTimeGraph.jsp"></jsp:include>
			</div>
			<br />
			<br />
		</div>
	</div>
	<div class="container">
		<div class="row">
			<!-- ---------------------�����ð��� ǥ & �׷���----------------------- -->
			<div class="well"><h3>�����ð��� ǥ & �׷���</h3></div>
			<div class="col-sm-3">
				<!-- ��߽ð����� �����͸� �ѷ��ִ� �κ� -->
				<table class="table table-bordered table-striped table-hover table-responsive table-condensed">
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
							<td><%=(int) list2.get(i).getCount()%></td>
							<td><%=list2.get(i).getPersent()%>%</td>
						</tr>
						<%
							}
						%>
					</tbody>
				</table>
			</div>
			<div class="col-sm-9">			
				<jsp:include page="/view/admin/arriveTimeGraph.jsp"></jsp:include>
			</div>
			<br />
			<br />
		</div>
	</div>
	<div class="container">
		<div class="row">
		<!-- ---------------------��߿��� ǥ & �׷���----------------------- -->
			<div class="well"><h3>��߿��� ǥ & �׷���</h3></div>
			<div class="col-sm-3">
			<table class="table table-bordered table-striped table-hover table-responsive table-condensed">
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
						<td><%=(int) list3.get(i).getCount() %></td>
						<td><%=list3.get(i).getPersent() %>%</td>
					</tr>
						<%
							}
						%>
				</tbody>
				</table>
			</div>
			<div class="col-sm-9">
				<jsp:include page="/view/admin/depatureStationGraph.jsp"></jsp:include>
			</div>
		</div>
		<br />
		<br />
	</div>
	<div class="container">
		<div class="row">
			<!-- ---------------------�������� ǥ & �׷���----------------------- -->
			<div class="well"><h3>�������� ǥ & �׷���</h3></div>
				<div class="col-sm-3">		
				<table class="table table-bordered table-striped table-hover table-responsive table-condensed">
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
						<td><%=(int) list4.get(i).getCount() %></td>
						<td><%=list4.get(i).getPersent() %>%</td>
					</tr>
						<%
							}
						%>
				</tbody>
				</table>
			</div>
			<div class="col-sm-9">
				<jsp:include page="/view/admin/arriveStationGraph.jsp"></jsp:include>
			</div>
			<br />
			<br />
		</div>
	</div>




</body>
</html>
