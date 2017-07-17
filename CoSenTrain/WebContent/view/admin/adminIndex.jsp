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
			alert('다시 선택하세요');
			$("select#start").select().val('empty');
			$("select#arrive").select().val('empty');
		} else {
			var start = $("select#start option:selected").text();
			var arrive = $("select#arrive option:selected").text();
			$("div.showAjaxData").html(start + "출발/" + arrive + "도착");
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
			출발역 <select id="start" name="start">
				<option selected="selected" value="empty">역을 선택하세요</option>
				<option value="suSeo">수서</option>
				<option value="daeJeon">대전</option>
				<option value="eastDaeGu">동대구</option>
				<option value="newKyungJu">신경주</option>
				<option value="buSan">부산</option>
			</select><br> 도착역 <select id="arrive" name="arrive">
				<option selected="selected" value="empty">역을 선택하세요</option>
				<option value="suSeo">수서</option>
				<option value="daeJeon">대전</option>
				<option value="eastDaeGu">동대구</option>
				<option value="newKyungJu">신경주</option>
				<option value="buSan">부산</option>
			</select> <input type="button" value="검색" onclick="showAjax()">
		</form>
		<div class="row">
			<div class="showAjaxData">에이작스로 데이터 가져올 부분</div>
			<div class="col-sm-6">
			<!-- 출발시간별로 데이터를 뿌려주는 부분 -->
				<table border="1">
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
							<td><%=list.get(i).getCount()%></td>
							<td><%=list.get(i).getPersent()%>%</td>
						</tr>
						<%
							}
						%>
					</tbody>
				</table>
			</div>
			<!-- 도착시간별로 데이터를 뿌려주는 부분 -->
			<div class="col-sm-6">
				<table border="1">
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
