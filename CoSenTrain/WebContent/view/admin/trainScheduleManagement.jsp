<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<jsp:include page="/view/admin/jumbotron.jsp"></jsp:include>
	<jsp:include page="/view/admin/navigation.jsp"></jsp:include>

	<div class="container">
		trainScheduleManagement
		
		<table border="1" cellpadding="10" cellspacing="0">
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