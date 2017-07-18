<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<title>trainSchedule</title>
<meta charset="utf-8">
<link rel="shortcut icon" href="/web/img/favicon.jpg">
<link rel="icon" sizes="16x16 32x32" href="/web/img/favicon.jpg">
<link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/bootstrap/latest/css/bootstrap.min.css">
<script src="//code.jquery.com/jquery.min.js"></script>

<script>

</script>
</head>
<body>
	<jsp:include page="/view/admin/jumbotron.jsp"></jsp:include>
	<jsp:include page="/view/admin/navigation.jsp"></jsp:include>

	<div class="container">
		trainScheduleManagement
		
		<table border="1">
			<thead>
				<tr>
					<th style="width: 80px">기차 번호</th>
					<th>출발역</th>
					<th>출발 시간</th>
					<th>도착역</th>
					<th>도착 시간</th>
				</tr>
			</thead>
			
			<tbody>
					<%
				for(int i=0; i<15; i++){
					%>
				<tr>
					<td ><input type="text" style="width: 80px"></td>
					<td>출발역 뿌려주는 부분</td>
					<td>출발시간 뿌려주는부분</td>
					<td>도착역 뿌려주는 부분</td>
					<td>도착시간 뿌려주는부분</td>
				</tr>
					<%
				}
					%>
			</tbody>
		</table>
		
		<input type="radio" name="saveCheck" value="old">기존과 같은 스케쥴표로 저장
		<input type="radio" name="saveCheck" value="new">새롭게 작성한 스케쥴표로 저장
		
		<input type="button" value="저장">
	</div>
</body>
</html>