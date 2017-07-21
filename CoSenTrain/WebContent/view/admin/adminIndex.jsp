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
			alert('다시 선택하세요');
			$("select#start").select().val('empty');
			$("select#arrive").select().val('empty');
		} else {
			//do AJAX
			/* 
			var start = $("select#start option:selected").text();
			var arrive = $("select#arrive option:selected").text();
			$("h3.showAjaxData").html(start + "출발/" + arrive + "도착");
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
					<!-- <label class="control-label col-sm-2" for="baseDate">출발역 : </label> -->
					<div class="col-sm-12">
						<select id="start" name="src" class="form-control">
							<option selected="selected" value="empty">출발역을 선택하세요</option>
							<option value="1">수서</option>
							<option value="2">대전</option>
							<option value="3">동대구</option>
							<option value="4">신경주</option>
							<option value="5">부산</option>
						</select>
					</div>
				</div>
				<div class="form-group col-xs-12">
					<!-- <label class="control-label col-sm-2" for="baseDate">도착역 : </label> -->
					<div class="col-sm-12">
						<select id="arrive" name="dest" class="form-control">
							<option selected="selected" value="empty" >도착역을 선택하세요</option>
							<option value="1">수서</option>
							<option value="2">대전</option>
							<option value="3">동대구</option>
							<option value="4">신경주</option>
							<option value="5">부산</option>
						</select>
					</div>
				</div>
				<div class="form-group col-xs-12">
					<div class="col-sm-12">
	  					<input type="button" value="검색" class="form-control btn btn-justified btn-primary" onclick="showAjax()" />
					</div>
				</div>
			</form>
		</div>
			<br />
			<br />
	</div>
	<div class="container">
		<div class="row ">
			<!-- <h3 class="showAjaxData">에이작스로 데이터 가져올 부분</h3> -->
			<!-- ---------------------출발시간별 표 & 그래프----------------------- -->
			
			<div class="well well-defualt"><h3>출발시간별 표 & 그래프</h3></div>
			<div class="col-sm-3">
			<!-- 출발시간별로 데이터를 뿌려주는 부분 -->
				<table class="table table-bordered table-striped table-hover table-responsive table-condensed">
					<thead>
						<tr>
							<th>출발시간</th>
							<th>수량</th>
							<th>백분률</th>
						</tr>
					</thead>
					<tbody>

						<%
							List<TimeGraphBean> list = graphDao.selectGraphStartTime();
							for (int i = 0; i < list.size(); i++) {
						%>
						<tr>
							<td><%=list.get(i).getDepartureTime()%>시</td>
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
			<!-- ---------------------도착시간별 표 & 그래프----------------------- -->
			<div class="well"><h3>도착시간별 표 & 그래프</h3></div>
			<div class="col-sm-3">
				<!-- 출발시간별로 데이터를 뿌려주는 부분 -->
				<table class="table table-bordered table-striped table-hover table-responsive table-condensed">
					<thead>
						<tr>
							<th>도착시간</th>
							<th>수량</th>
							<th>백분률</th>
						</tr>
					</thead>
					<tbody>

						<%
							List<TimeGraphBean> list2 = graphDao.selectGraphArriveTime();
							for (int i = 0; i < list2.size(); i++) {
						%>
						<tr>
							<td><%=list2.get(i).getArrivalTime()%>시</td>
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
		<!-- ---------------------출발역별 표 & 그래프----------------------- -->
			<div class="well"><h3>출발역별 표 & 그래프</h3></div>
			<div class="col-sm-3">
			<table class="table table-bordered table-striped table-hover table-responsive table-condensed">
				<thead>
					<tr>
						<th>출발지</th>
						<th>수량</th>
						<th>백분률</th>
					</tr>
				</thead>
				<tbody>
					<%
						List<AreaGraphBean> list3 = graphDao.selectGraphSrc();
						for (int i = 0; i < list3.size(); i++) {
					%>
					<tr>
						<td><%=list3.get(i).getStartArea() %>역</td>
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
			<!-- ---------------------도착역별 표 & 그래프----------------------- -->
			<div class="well"><h3>도착역별 표 & 그래프</h3></div>
				<div class="col-sm-3">		
				<table class="table table-bordered table-striped table-hover table-responsive table-condensed">
				<thead>
					<tr>
						<th>도착지</th>
						<th>수량</th>
						<th>백분률</th>
					</tr>
				</thead>
				<tbody>
					<%
						List<AreaGraphBean> list4 = graphDao.selectGraphDest();
						for (int i = 0; i < list4.size(); i++) {
					%>
					<tr>
						<td><%=list4.get(i).getArriveArea() %>역</td>
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
