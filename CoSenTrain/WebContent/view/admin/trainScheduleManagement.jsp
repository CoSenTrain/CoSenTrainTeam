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
					<th style="width: 80px">���� ��ȣ</th>
					<th>��߿�</th>
					<th>��� �ð�</th>
					<th>������</th>
					<th>���� �ð�</th>
				</tr>
			</thead>
			
			<tbody>
					<%
				for(int i=0; i<15; i++){
					%>
				<tr>
					<td ><input type="text" style="width: 80px"></td>
					<td>��߿� �ѷ��ִ� �κ�</td>
					<td>��߽ð� �ѷ��ִºκ�</td>
					<td>������ �ѷ��ִ� �κ�</td>
					<td>�����ð� �ѷ��ִºκ�</td>
				</tr>
					<%
				}
					%>
			</tbody>
		</table>
		
		<input type="radio" name="saveCheck" value="old">������ ���� ������ǥ�� ����
		<input type="radio" name="saveCheck" value="new">���Ӱ� �ۼ��� ������ǥ�� ����
		
		<input type="button" value="����">
	</div>
</body>
</html>